package ohos.display

import ohos.base.*
import ohos.business_exception.*
import ohos.callback_invoke.*
import ohos.ffi.*
import ohos.hilog.*
import ohos.labels.*
import std.collection.*
import std.collection.HashMap
import std.deriving.Derive
import std.sync.*

/**
 * Rectangle.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.WindowManager.WindowManager.Core"
]
public class Rect {
    /**
     * The X-axis coordinate of the upper left vertex of the rectangle, in pixels.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    public var left: Int32

    /**
     * The Y-axis coordinate of the upper left vertex of the rectangle, in pixels.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    public var top: Int32

    /**
     * Width of the rectangle, in pixels.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    public var width: UInt32

    /**
     * Height of the rectangle, in pixels.
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
 * Curved area rects of the waterfall display.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.WindowManager.WindowManager.Core"
]
public class WaterfallDisplayAreaRects {
    /**
     * Indicates the size of left side curved area of the waterfall screen.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    public let left: Rect

    /**
     * Indicates the size of top side curved area of the waterfall screen.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    public let top: Rect

    /**
     * Indicates the size of right side curved area of the waterfall screen.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    public let right: Rect

    /**
     * Indicates the size of bottom side curved area of the waterfall screen.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    public let bottom: Rect

    /**
     * WaterfallDisplayAreaRects constructor.
     *
     * @param { Rect } left - Indicates the size of left side curved area of the waterfall screen.
     * @param { Rect } top - Indicates the size of top side curved area of the waterfall screen.
     * @param { Rect } right - Indicates the size of right side curved area of the waterfall screen.
     * @param { Rect } bottom - Indicates the size of bottom side curved area of the waterfall screen.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    public init(
        left!: Rect,
        top!: Rect,
        right!: Rect,
        bottom!: Rect
    )
}

/**
 * Cutout information of the display.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.WindowManager.WindowManager.Core"
]
public class CutoutInfo {
    /**
     * Bounding rectangles of the cutout areas of the display.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    public let boundingRects: Array<Rect>

    /**
     * Rectangles of curved parts on each side of a waterfall display.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    public let waterfallDisplayAreaRects: WaterfallDisplayAreaRects

    /**
     * CutoutInfo constructor.
     *
     * @param { Array<Rect> } boundingRects - Bounding rectangles of the cutout areas of the display.
     * @param { WaterfallDisplayAreaRects } waterfallDisplayAreaRects - Rectangles of curved parts on each side of a waterfall display.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    public init(
        boundingRects!: Array<Rect>,
        waterfallDisplayAreaRects!: WaterfallDisplayAreaRects
    )
}

/**
 * Fold Crease Region.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Window.SessionManager"
]
public class FoldCreaseRegion {
    /**
     * The display ID is used to identify the screen where the crease is located.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Window.SessionManager"
    ]
    public let displayId: UInt32

    /**
     * Crease Region.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Window.SessionManager"
    ]
    public let creaseRects: Array<Rect>

    /**
     * FoldCreaseRegion constructor.
     *
     * @param { UInt32 } displayId - The display ID is used to identify the screen where the crease is located.
     * @param { Array<Rect> } creaseRects - Crease Region.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Window.SessionManager"
    ]
    public init(
        displayId!: UInt32,
        creaseRects!: Array<Rect>
    )
}

/**
 * Enumerates the display orientation.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.WindowManager.WindowManager.Core"
]
public enum Orientation {
    /**
     * Indicate that the display content is in portrait mode.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    Portrait
    |
    /**
     * Indicate that the display content is in landscape mode.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    Landscape
    |
    /**
     * Indicate that the display content is in the opposite direction of the portrait mode.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    PortraitInverted
    |
    /**
     * Indicate that the display content is in the opposite direction of the landscape mode.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    LandscapeInverted
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
 * Enumerates the display states.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.WindowManager.WindowManager.Core"
]
public enum DisplayState {
    /**
     * Unknown.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    StateUnknown
    |
    /**
     * Screen off.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    StateOff
    |
    /**
     * Screen on
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    StateOn
    |
    /**
     * Doze, but it will update for some important system messages.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    StateDoze
    |
    /**
     * Doze and not update.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    StateDozeSuspend
    |
    /**
     * VR node.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    StateVr
    |
    /**
     * Screen on and not update.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    StateOnSuspend
    | ...
}

extend DisplayState <: Equatable<DisplayState> {
    /**
     * Compares this DisplayState with another for equality.
     *
     * @param { DisplayState } other - The DisplayState to compare with.
     * @returns { Bool } True if both modes are equal, false otherwise.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    public operator func ==(other: DisplayState): Bool
    /**
     * Compares this DisplayState with another for equality.
     *
     * @param { DisplayState } other - The DisplayState to compare with.
     * @returns { Bool } True if both modes are not equal, false otherwise.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    public operator func !=(other: DisplayState): Bool
}

/**
 * Enumerates the fold status. For dual-fold axis devices, when oriented with the charging port at the bottom,
 * the hinges are identified from right to left as the first and second fold axes, respectively.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Window.SessionManager"
]
public enum FoldStatus {
    /**
     * Fold Status Unknown.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Window.SessionManager"
    ]
    FoldStatusUnknown
    |
    /**
     * Fold Status Expanded. For dual-fold axis devices, the first fold axis is fully open,
     * and the second fold axis is folded.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Window.SessionManager"
    ]
    FoldStatusExpanded
    |
    /**
     * Fold Status Folded. For dual-fold axis devices, the first fold axis is folded, and the second fold axis is folded.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Window.SessionManager"
    ]
    FoldStatusFolded
    |
    /**
     * Fold Status Half Folded. Somehow between fully open and completely closed.
     * For dual-fold axis devices, the first fold axis is half-folded, and the second fold axis is folded.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Window.SessionManager"
    ]
    FoldStatusHalfFolded
    | ...
}

extend FoldStatus <: Equatable<FoldStatus> {
    /**
     * Compares this FoldStatus with another for equality.
     *
     * @param { FoldStatus } other - The FoldStatus to compare with.
     * @returns { Bool } True if both modes are equal, false otherwise.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Window.SessionManager"
    ]
    public operator func ==(other: FoldStatus): Bool
    /**
     * Compares this FoldStatus with another for equality.
     *
     * @param { FoldStatus } other - The FoldStatus to compare with.
     * @returns { Bool } True if both modes are not equal, false otherwise.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Window.SessionManager"
    ]
    public operator func !=(other: FoldStatus): Bool
}

/**
* Enumerates the fold display mode.
*/
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Window.SessionManager"
]
public enum FoldDisplayMode {
    /**
     * Unknown Display.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Window.SessionManager"
    ]
    FoldDisplayModeUnknown
    |
    /**
     * Full Display.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Window.SessionManager"
    ]
    FoldDisplayModeFull
    |
    /**
     * Main Display.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Window.SessionManager"
    ]
    FoldDisplayModeMain
    |
    /**
     * Sub Display.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Window.SessionManager"
    ]
    FoldDisplayModeSub
    |
    /**
     * Coordination Display.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Window.SessionManager"
    ]
    FoldDisplayModeCoordination
    | ...
}

extend FoldDisplayMode <: Equatable<FoldDisplayMode> {
    /**
     * Compares this FoldDisplayMode with another for equality.
     *
     * @param { FoldDisplayMode } other - The FoldDisplayMode to compare with.
     * @returns { Bool } True if both modes are equal, false otherwise.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Window.SessionManager"
    ]
    public operator func ==(other: FoldDisplayMode): Bool
    /**
     * Compares this FoldDisplayMode with another for equality.
     *
     * @param { FoldDisplayMode } other - The FoldDisplayMode to compare with.
     * @returns { Bool } True if both modes are not equal, false otherwise.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Window.SessionManager"
    ]
    public operator func !=(other: FoldDisplayMode): Bool
}

/**
* Enumerates of listener event.
*/
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Window.SessionManager"
]
public enum ListenerType {
    /**
     * The Add event type.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Window.SessionManager"
    ]
    ListenerTypeAdd
    |
    /**
     * The Remove event type.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Window.SessionManager"
    ]
    ListenerTypeRemove
    |
    /**
     * The Change event type.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Window.SessionManager"
    ]
    ListenerTypeChange
    |
    /**
     * The FoldStatusChange event type.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Window.SessionManager"
    ]
    ListenerTypeFoldStatusChange
    |
    /**
     * The FoldAngleChange event type.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Window.SessionManager"
    ]
    ListenerTypeFoldAngleChange
    |
    /**
     * The CaptureStatusChange event type.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Window.SessionManager"
    ]
    ListenerTypeCaptureStatusChange
    |
    /**
     * The FoldDisplayModeChange event type.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Window.SessionManager"
    ]
    ListenerTypeFoldDisplayModeChange
    |
    /**
     * The AvailableAreaChange event type.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Window.SessionManager"
    ]
    ListenerTypeAvailableAreaChange
    | ...
}

extend ListenerType <: Equatable<ListenerType> {
    /**
     * Compares this ListenerType with another for equality.
     *
     * @param { ListenerType } other - The ListenerType to compare with.
     * @returns { Bool } True if both modes are equal, false otherwise.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Window.SessionManager"
    ]
    public operator func ==(other: ListenerType): Bool
    /**
     * Compares this ListenerType with another for equality.
     *
     * @param { ListenerType } other - The ListenerType to compare with.
     * @returns { Bool } True if both modes are not equal, false otherwise.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Window.SessionManager"
    ]
    public operator func !=(other: ListenerType): Bool
}

/**
 * Obtain the default display.
 *
 * @returns { Display } the result of display
 * @throws { BusinessException } 1400001 - Invalid display or screen.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.WindowManager.WindowManager.Core",
    throwexception: true
]
public func getDefaultDisplaySync(): Display

/**
 * Obtain all displays.
 *
 * @returns { Array<Display> } the result of all displays
 * @throws { BusinessException } 1400001 - Invalid display or screen.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.WindowManager.WindowManager.Core",
    throwexception: true,
    workerthread: true
]
public func getAllDisplays(): Array<Display>

/**
 * Check whether the device is foldable.
 *
 * @returns { Bool } true means the device is foldable.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Window.SessionManager"
]
public func isFoldable(): Bool

/**
 * Get the current fold status of the foldable device.
 *
 * @returns { FoldStatus } fold status of device.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Window.SessionManager"
]
public func getFoldStatus(): FoldStatus

/**
 * Get the display mode of the foldable device.
 *
 * @returns { FoldDisplayMode } display mode of the foldable device.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Window.SessionManager"
]
public func getFoldDisplayMode(): FoldDisplayMode

/**
 * Get the fold crease region in the current display mode.
 *
 * @returns { FoldCreaseRegion } fold crease region in the current display mode.
 * @throws { BusinessException } 1400003 - This display manager service works abnormally.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Window.SessionManager",
    throwexception: true
]
public func getCurrentFoldCreaseRegion(): FoldCreaseRegion

/**
 * Unregister the callback for private mode changes.
 *
 * @param { ListenerType } listenerType - Type of listening event
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Window.SessionManager"
]
public func off(listenerType: ListenerType): Unit

/**
 * Register the callback for fold status changes.
 *
 * @param { ListenerType } listenerType - the event of fold status changes.
 * @param { Callback1Argument<FoldStatus> } callback - Callback used to return the current fold status of device.
 * @throws { BusinessException } 801 - Capability not supported.
 * @throws { BusinessException } 1400003 - This display manager service works abnormally.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Window.SessionManager",
    throwexception: true
]
public func on(listenerType: ListenerType, callback: Callback1Argument<FoldStatus>): Unit

/**
 * Unregister the callback for fold status changes.
 *
 * @param { ListenerType } listenerType - the event of fold status change.
 * @param { Callback1Argument<FoldStatus> } callback - Callback used to return the current fold status of device.
 * @throws { BusinessException } 801 - Capability not supported.
 * @throws { BusinessException } 1400003 - This display manager service works abnormally.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Window.SessionManager",
    throwexception: true
]
public func off(listenerType: ListenerType, callback: Callback1Argument<FoldStatus>): Unit

/**
 * Register the callback for fold display mode changes.
 *
 * @param { ListenerType } listenerType - the event of fold display mode changes.
 * @param { Callback1Argument<FoldDisplayMode> } callback - Callback used to return the current fold display mode.
 * @throws { BusinessException } 1400003 - This display manager service works abnormally.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Window.SessionManager",
    throwexception: true
]
public func on(listenerType: ListenerType, callback: Callback1Argument<FoldDisplayMode>): Unit

/**
 * Unregister the callback for fold display mode changes.
 *
 * @param { ListenerType } listenerType - the event of fold display mode changes.
 * @param { Callback1Argument<FoldDisplayMode> } callback - Callback used to return the current fold display mode.
 * @throws { BusinessException } 1400003 - This display manager service works abnormally.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Window.SessionManager",
    throwexception: true
]
public func off(listenerType: ListenerType, callback: Callback1Argument<FoldDisplayMode>): Unit

/**
 * Define properties of the display. They cannot be updated automatically.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.WindowManager.WindowManager.Core"
]
public class Display <: RemoteDataLite {
    /**
     * Display ID.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    public prop id: Int64

    /**
     * Display name.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    public prop name: String

    /**
     * Whether the display is alive.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    public prop alive: Bool

    /**
     * The state of display.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    public prop state: DisplayState

    /**
     * Refresh rate, in Hz.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    public prop refreshRate: UInt32

    /**
     * An enumeration value for rotation degrees of the display.
     * The value 0 indicates that the screen of the display rotates clockwise by 0°.
     * The value 1 indicates that the screen of the display rotates clockwise by 90°.
     * The value 2 indicates that the screen of the display rotates clockwise by 180°.
     * The value 3 indicates that the screen of the display rotates clockwise by 270°.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    public prop rotation: UInt32

    /**
     * Display orientation.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    public prop orientation: Orientation

    /**
     * Display width, in pixels.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    public prop width: Int64

    /**
     * Display height, in pixels.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    public prop height: Int64

    /**
     * Display density, in pixels. which is the scaling coefficient between physical pixels and logical pixels. The value for a low-resolution display is 1.0.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    public prop densityDpi: Float64

    /**
     * Display resolution, that is, the number of pixels per inch.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    public prop densityPixels: Float64

    /**
     * Text scale density of the display.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    public prop scaledDensity: Float64

    /**
     * DPI on the x-axis.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    public prop xDpi: Float64

    /**
     * DPI on the y-axis.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.WindowManager.WindowManager.Core"
    ]
    public prop yDpi: Float64

    /**
     * Obtain the cutout info of the display.
     *
     * @returns { CutoutInfo } The cutout info of the display.
     * @throws { BusinessException } 1400001 - Invalid display or screen.
     * @throws { BusinessException } 1400003 - This display manager service works abnormally.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.WindowManager.WindowManager.Core",
    throwexception: true,
    workerthread: true
    ]
    public func getCutoutInfo(): CutoutInfo
}