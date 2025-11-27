package ohos.arkui.component.video

import ohos.arkui.component.common.*
import ohos.arkui.component.util.*
import ohos.base.*
import ohos.ffi.*
import ohos.labels.APILevel
import ohos.resource.*
import std.convert.*

/**
 * Prepared information of the video.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class PreparedInfo {
/**
 * The duration of the current video, in seconds.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var duration: ?Int32
}

/**
 * Playback information of the video.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class PlaybackInfo {
/**
 * The current video playback progress, expressed in seconds.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var time: ?Int32
}

/**
 * Fullscreen information of the video.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class FullscreenInfo {
/**
 * The flag whether play in full screen.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var fullscreen: ?Bool
}

/**
 * Defines the video controller.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class VideoController <: RemoteDataLite {
/**
 * Creates a new instance of VideoController.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public init()

/**
 * Provides events to play.
 * Starts or resumes video playback.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func start(): Unit

/**
 * Provides a pause event for playback.
 * Pauses the current video playback.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func pause(): Unit

/**
 * Provides an event to stop playback.
 * Stops the video playback and resets the playback position to the beginning.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func stop(): Unit

/**
 * Provide the progress method of video playback with SeekMode.
 *
 * @param { Int32 } value - The position to seek to, in seconds.
 * @param { ?SeekMode } seekMode - The seek mode.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func setCurrentTime(value: Int32, seekMode: ?SeekMode): Unit

/**
 * Provides a full screen playback method.
 *
 * @param { ?Bool } value - Whether to play in full screen. The default value is true.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func requestFullscreen(value: ?Bool): Unit

/**
 * Provides a method to exit full screen playback.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func exitFullscreen(): Unit
}

/**
 * Defines Video Component.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class Video <: CommonMethodComponent<Video> & VideoAttribute {
/**
 * Initializes the video component with the specified options.
 *
 * @param { ?ResourceStr } [src] - The source URL or resource of the video to play.
 * @param { ?PlaybackSpeed } [currentProgressRate] - The playback speed. The default value is PlaybackSpeed.Speed_Forward_1_00_X.
 * @param { ?ResourceStr } [previewUri] - The URI of the preview image to display before the video loads.
 * @param { ?VideoController } [controller] - The video controller for managing playback.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public init(
        src!: ?ResourceStr = None,
        currentProgressRate!: ?PlaybackSpeed = Option.None,
        previewUri!: ?ResourceStr = None,
        controller!: ?VideoController = None
    )

/**
 * Called when judging whether the video is muted.
 *
 * @param { ?Bool } value - Whether the video is muted. The default value is false.
 * @returns { This } Returns the Video component instance for chaining.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func muted(value: ?Bool): This

/**
 * Called when judging whether the video is played automatically.
 *
 * @param { ?Bool } value - Whether the video is played automatically. The default value is false.
 * @returns { This } Returns the Video component instance for chaining.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func autoPlay(value: ?Bool): This

/**
 * Called when judging whether the control bar is displayed.
 *
 * @param { ?Bool } value - Whether the control bar is displayed. The default value is true.
 * @returns { This } Returns the Video component instance for chaining.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func controls(value: ?Bool): This

/**
 * Called when determining the zoom type of the video source
 *
 * @param { ?ImageFit } value - The zoom type. The default value is ImageFit.Contain.
 * @returns { This } Returns the Video component instance for chaining.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func objectFit(value: ?ImageFit): This

/**
 * Called when judging whether the video is played circular.
 *
 * @param { ?Bool } value - Whether the video is played circular. The default value is false.
 * @returns { This } Returns the Video component instance for chaining.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func loop(value: ?Bool): This

/**
 * Called when the video is played.
 *
 * @param { ?VoidCallback } event - The callback function when the video is played.
 * @returns { This } Returns the Video component instance for chaining.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func onStart(event: ?VoidCallback): This

/**
 * Called when the video is paused.
 *
 * @param { ?VoidCallback } event - The callback function when the video is paused.
 * @returns { This } Returns the Video component instance for chaining.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func onPause(event: ?VoidCallback): This

/**
 * Called when the video playback ends.
 *
 * @param { ?VoidCallback } event - The callback function when the video playback ends.
 * @returns { This } Returns the Video component instance for chaining.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func onFinish(event: ?VoidCallback): This

/**
 * Called when playback fails.
 *
 * @param { ?VoidCallback } event - The callback function when playback fails.
 * @returns { This } Returns the Video component instance for chaining.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func onError(event: ?VoidCallback): This

/**
 * Called when the video preparation is complete.
 *
 * @param { ?Callback<PreparedInfo, Unit> } callback - The callback function when the video preparation is complete.
 * @returns { This } Returns the Video component instance for chaining.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func onPrepared(callback: ?Callback<PreparedInfo, Unit>): This

/**
 * Called when the time information is reported when the progress bar process is operated.
 *
 * @param { ?Callback<PlaybackInfo, Unit> } callback - The callback function when seeking.
 * @returns { This } Returns the Video component instance for chaining.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func onSeeking(callback: ?Callback<PlaybackInfo, Unit>): This

/**
 * Called when the playback time information is reported after the operation progress bar is completed.
 *
 * @param { ?Callback<PlaybackInfo, Unit> } callback - The callback function after seeking.
 * @returns { This } Returns the Video component instance for chaining.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func onSeeked(callback: ?Callback<PlaybackInfo, Unit>): This

/**
 * Called when the playback progress changes.
 *
 * @param { ?Callback<PlaybackInfo, Unit> } callback - The callback function when the playback progress changes.
 * @returns { This } Returns the Video component instance for chaining.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func onUpdate(callback: ?Callback<PlaybackInfo, Unit>): This

/**
 * Called when the video enters and exits the full screen.
 *
 * @param { ?Callback<FullscreenInfo, Unit> } callback - The callback function when the video enters and exits the full screen.
 * @returns { This } Returns the Video component instance for chaining.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func onFullscreenChange(callback: ?Callback<FullscreenInfo, Unit>): This
}

/**
 * Defines the video attribute functions.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
sealed interface VideoAttribute <: CommonMethod<VideoAttribute> {
/**
 * Called when judging whether the video is muted.
 *
 * @param { ?Bool } value - Whether the video is muted. The default value is false.
 * @returns { VideoAttribute } Returns the attribute of video.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func muted(value: ?Bool): VideoAttribute

/**
 * Called when judging whether the video is played automatically.
 *
 * @param { ?Bool } value - Whether the video is played automatically. The default value is false.
 * @returns { VideoAttribute } Returns the attribute of video.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func autoPlay(value: ?Bool): VideoAttribute

/**
 * Called when judging whether the control bar is displayed.
 *
 * @param { ?Bool } value - Whether the control bar is displayed. The default value is true.
 * @returns { VideoAttribute } Returns the attribute of video.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func controls(value: ?Bool): VideoAttribute

/**
 * Called when determining the zoom type of the video source.
 *
 * @param { ?ImageFit } value - The zoom type. The default value is ImageFit.Contain.
 * @returns { VideoAttribute } Returns the attribute of video.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func objectFit(value: ?ImageFit): VideoAttribute

/**
 * Called when judging whether the video is played circular.
 *
 * @param { ?Bool } value - Whether the video is played circular. The default value is false.
 * @returns { VideoAttribute } Returns the attribute of video.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func loop(value: ?Bool): VideoAttribute

/**
 * Called when the video is played.
 *
 * @param { ?VoidCallback } event - The callback function when the video is played.
 * @returns { VideoAttribute } Returns the attribute of video.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func onStart(event: ?VoidCallback): VideoAttribute

/**
 * Called when the video is paused.
 *
 * @param { ?VoidCallback } event - The callback function when the video is paused.
 * @returns { VideoAttribute } Returns the attribute of video.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func onPause(event: ?VoidCallback): VideoAttribute

/**
 * Called when the video playback ends.
 *
 * @param { ?VoidCallback } event - The callback function when the video playback ends.
 * @returns { VideoAttribute } Returns the attribute of video.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func onFinish(event: ?VoidCallback): VideoAttribute

/**
 * Called when playback fails.
 *
 * @param { ?VoidCallback } event - The callback function when playback fails.
 * @returns { VideoAttribute } Returns the attribute of video.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func onError(event: ?VoidCallback): VideoAttribute

/**
 * Called when the video preparation is complete.
 *
 * @param { ?Callback<PreparedInfo, Unit> } callback - The callback function when the video preparation is complete.
 * @returns { VideoAttribute } Returns the attribute of video.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func onPrepared(callback: ?Callback<PreparedInfo, Unit>): VideoAttribute

/**
 * Called when the time information is reported when the progress bar process is operated.
 *
 * @param { ?Callback<PlaybackInfo, Unit> } callback - The callback function when seeking.
 * @returns { VideoAttribute } Returns the attribute of video.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func onSeeking(callback: ?Callback<PlaybackInfo, Unit>): VideoAttribute

/**
 * Called when the playback time information is reported after the operation progress bar is completed.
 *
 * @param { ?Callback<PlaybackInfo, Unit> } callback - The callback function after seeking.
 * @returns { VideoAttribute } Returns the attribute of video.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func onSeeked(callback: ?Callback<PlaybackInfo, Unit>): VideoAttribute

/**
 * Called when the playback progress changes.
 *
 * @param { ?Callback<PlaybackInfo, Unit> } callback - The callback function when the playback progress changes.
 * @returns { VideoAttribute } Returns the attribute of video.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func onUpdate(callback: ?Callback<PlaybackInfo, Unit>): VideoAttribute

/**
 * Called when the video enters and exits the full screen.
 *
 * @param { ?Callback<FullscreenInfo, Unit> } callback - The callback function when the video enters and exits the full screen.
 * @returns { VideoAttribute } Returns the attribute of video.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func onFullscreenChange(callback: ?Callback<FullscreenInfo, Unit>): VideoAttribute
}