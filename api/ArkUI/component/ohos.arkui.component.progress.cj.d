package ohos.arkui.component.progress

import ohos.arkui.component.common.*
import ohos.arkui.component.util.*
import ohos.base.*
import ohos.ffi.*
import ohos.labels.APILevel
import std.deriving.Derive

/**
 * Current status of progress bar.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum ProgressStatus {
    /**
     * Loading status.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Loading
    |
    /**
     * Processing status.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Progressing
    | ...
}

extend ProgressStatus <: Equatable<ProgressStatus> {
    /**
     * Compares this ProgressStatus with another for equality.
     * @param { ProgressStatus } other - The ProgressStatus to compare with.
     * @returns { Bool }
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public operator func ==(other: ProgressStatus): Bool
    /**
     * Compares this ProgressStatus with another for inequality.
     * @param { ProgressStatus } other - The ProgressStatus to compare with.
     * @returns { Bool }
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public operator func !=(other: ProgressStatus): Bool
}

/**
 * Progress common style options.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
sealed interface CommonProgressStyleOptions {}

/**
 * Defines the ring style Options.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class RingStyleOptions <: CommonProgressStyleOptions {
    /**
     * Defines the strokeWidth property.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var strokeWidth: ?Length

    /**
     * Enables progress shadow.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var shadow: ?Bool

    /**
     * The status of progress, default is PROGRESSING. Set to LOADING status will trigger the loading animation.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var status: ?ProgressStatus

    /**
     * Enable smooth effect.
     *
     * @default true
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var enableSmoothEffect: ?Bool

    /**
     * Enable scan effect.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var enableScanEffect: ?Bool

    /**
     * Constructor the ring style Options.
     *
     * @param { ?Length } [strokeWidth] - Stroke width of the ring. The default value is 4.0vp.
     * @param { ?Bool } [shadow] - Whether to enable shadow. The default value is false.
     * @param { ?ProgressStatus } [status] - Status of the progress. The default value is ProgressStatus.Progressing.
     * @param { ?Bool } [enableSmoothEffect] - Whether to enable smooth effect. The default value is true.
     * @param { ?Bool } [enableScanEffect] - Whether to enable scan effect. The default value is false.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(strokeWidth!: ?Length = None, shadow!: ?Bool = None, status!: ?ProgressStatus = None,
        enableSmoothEffect!: ?Bool = None, enableScanEffect!: ?Bool = None)
}

/**
 * Defines Progress Component.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class Progress <: CommonMethodComponent<Progress> & ProgressAttribute {
    /**
     * Called when the progress bar is set.
     *
     * @param { ?Float64 } value - Current progress value. The default value is 0.
     * @param { ?Float64 } [total] - Total progress value. The default value is 100.
     * @param { ?ProgressType } [progressType] - Type of the progress bar. The default value is ProgressType.Linear.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(value!: ?Float64, total!: ?Float64 = None, progressType!: ?ProgressType = None)

    /**
     * Called when the current progress value is set.
     *
     * @param { ?Float64 } value - Current progress value.
     * @returns { This }
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func value(value: ?Float64): This

    /**
     * Called when the progress bar foreground is set.
     *
     * @param { ?ResourceColor } value - indicates the color of the progress.
     * @returns { This }
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func color(value: ?ResourceColor): This

    /**
     * Called when the style of progress bar is set.
     *
     * @param { ?Length } [strokeWidth] - Stroke width of the progress bar. The default value is 4.0vp.
     * @param { ?Int32 } [scaleCount] - Number of scale intervals. The default value is 120.
     * @param { ?Length } [scaleWidth] - Width of each scale. The default value is 2.0vp.
     * @returns { This }
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func style(strokeWidth!: ?Length = None, scaleCount!: ?Int32 = None, scaleWidth!: ?Length = None): This

    /**
     * Called when the style of progress bar is set.
     *
     * @param { ?RingStyleOptions } value - indicates the style of the progress.
     * @returns { This }
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func style(value: ?RingStyleOptions): This
}

/**
 * Defines the progress attribute functions.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
sealed interface ProgressAttribute <: CommonMethod<ProgressAttribute> {
    /**
     * Called when the current progress value is set.
     *
     * @param { ?Float64 } value - Current progress value.
     * @returns { ProgressAttribute }
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    func value(value: ?Float64): ProgressAttribute

    /**
     * Called when the progress bar foreground is set.
     *
     * @param { ?ResourceColor } value - indicates the color of the progress.
     * @returns { ProgressAttribute }
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    func color(value: ?ResourceColor): ProgressAttribute

    /**
     * Called when the style of progress bar is set.
     *
     * @param { ?Length } strokeWidth - Stroke width of the progress bar. The default value is 4.0vp.
     * @param { ?Int32 } scaleCount - Number of scale intervals. The default value is 120.
     * @param { ?Length } scaleWidth - Width of each scale. The default value is 2.0vp.
     * @returns { ProgressAttribute }
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    func style(strokeWidth!: ?Length, scaleCount!: ?Int32, scaleWidth!: ?Length): ProgressAttribute

    /**
     * Called when the style of progress bar is set.
     *
     * @param { ?RingStyleOptions } value - indicates the style of the progress.
     * @returns { ProgressAttribute }
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    func style(value: ?RingStyleOptions): ProgressAttribute
}