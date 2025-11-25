package ohos.arkui.component.image

import ohos.arkui.component.common.*
import ohos.arkui.component.native_struct.*
import ohos.arkui.component.util.*
import ohos.base.*
import ohos.ffi.*
import ohos.labels.APILevel
import ohos.multimedia.image.PixelMap
import ohos.resource.*

/**
 * Contains details about an image loading error, including component dimensions and error message.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class ImageError {
/**
 * The width of the component source.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var componentWidth: Float64

/**
 * The height of the component source.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var componentHeight: Float64

/**
 * Content of the popup message.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var message: String
}

/**
 * The information about the successfully loaded image.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class ImageLoadResult {
/**
 * The width of the image source.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var width: Float64

/**
 * The height of the image source.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var height: Float64

/**
 * The width of the component source.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var componentWidth: Float64

/**
 * The height of the component source.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var componentHeight: Float64

/**
 * The value of the status of the image being loaded successfully.
 * If the returned status value is 0, the image data is successfully loaded.
 * If the returned status value is 1, the image is successfully decoded.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var loadingStatus: Int32

/**
 * The width of the picture that is actually drawn.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var contentWidth: Float64

/**
 * The height of the picture that is actually drawn.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var contentHeight: Float64

/**
 * The offset between image content and image component on the X-axis.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var contentOffsetX: Float64

/**
 * The offset between image content and image component on the Y-axis.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var contentOffsetY: Float64
}

/**
 * Callback function triggered when the image is successfully loaded.
 *
 * @param { ImageLoadResult } result - The information about the successfully loaded image.
 */
public type ImageCompleteCallback = (ImageLoadResult) -> Unit

/**
 * Callback function triggered when an error occurs while loading the image.
 *
 * @param { ImageError } error - The error information.
 */
public type ImageErrorCallback = (ImageError) -> Unit

/**
 * Defines the ColorFilter object.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class ColorFilter {
/**
 * Creates ColorFilter with 4*5 matrix.
 *
 * @param { ?Array<Float32> } value - 4*5 color matrix values. The value[m*n] is located in the m row and n column. The matrix is row-first.
 * @returns { ColorFilter }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public init(value: ?Array<Float32>)
}

/**
 * Defines Image Component.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class Image <: CommonMethodComponent<Image> & ImageAttribute {
/**
 * Set src to obtain images.
 *
 * @param { ?ResourceStr } src - The resource string of the image.
 * @returns { Image }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public init(src: ?ResourceStr)

/**
 * Set src to obtain images.
 *
 * @param { ?PixelMap } src - The pixel map of the image.
 * @returns { Image }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public init(src: ?PixelMap)

/**
 * Sets the placeholder image displayed during loading.
 *
 * NOTE:
 * This attribute does not take effect when the parameter type of the component is AnimatedDrawableDescriptor.
 *
 * @param { ?ResourceStr } src - Placeholder image displayed during loading. Default value is null.
 * @returns { This }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func alt(src: ?ResourceStr): This

/**
 * Sets how the image is resized to fit its container.
 *
 * @param { ?ImageFit } value - How the image is resized to fit its container. Default value is ImageFit.Cover.
 * @returns { This }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func objectFit(value: ?ImageFit): This

/**
 * Set the repeat style of the picture NOTE: This attribute is not applicable to SVG images.
 * This attribute does not take effect when the parameter type of the component is AnimatedDrawableDescriptor
 *
 * @param { ?ImageRepeat } value - How the image is repeated. Default value is ImageRepeat.NoRepeat.
 * @returns { This }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func objectRepeat(value: ?ImageRepeat): This

/**
 * Sets the interpolation effect of the image, which can alleviate aliasing that occurs when the image is zoomed.
 *
 * NOTE:
 * This attribute is not applicable to SVG images.
 * This attribute does not take effect when the parameter type of the component is AnimatedDrawableDescriptor.
 *
 * @param { ?ImageInterpolation } value - Interpolation effect of the image. Default value is ImageInterpolation.Low.
 * @returns { This }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func interpolation(value: ?ImageInterpolation): This

/**
 * Sets the rendering mode of the image.
 *
 * NOTE:
 * This attribute is not applicable to SVG images.
 * When ColorFilter is set, this attribute is not effective.
 * This attribute does not take effect when the parameter type of the component is AnimatedDrawableDescriptor.
 *
 * @param { ?ImageRenderMode } value - Rendering mode of the image. Default value is ImageRenderMode.Original.
 * @returns { This }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func renderMode(value: ?ImageRenderMode): This

/**
 * Sets the decoding size of the image.
 * The original picture is decoded into a picture of a specified size.
 * NOTE: This attribute works only when the target size is smaller than the source size.
 * This attribute is not applicable to SVG images or PixelMap objects.
 * This attribute does not take effect when the parameter type of the component is AnimatedDrawableDescriptor.
 *
 * @param { ?Length } width - Decoding size of the image.
 * @param { ?Length } height - Decoding size of the image.
 * @returns { This }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func sourceSize(width: ?Length, height: ?Length): This

/**
 * Specifies whether to load the image synchronously.
 *
 * NOTE:
 * This attribute does not take effect when the parameter type of the component is AnimatedDrawableDescriptor.
 *
 * @param { ?Bool } value - Whether to load the image synchronously. Default value is false.
 * @returns { This }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func syncLoad(value: ?Bool): This

/**
 * Sets the fill color to be superimposed on the image.
 * By default, no fill color is applied. If an invalid value is passed, the system uses the default theme color:
 * black in light mode and white in dark mode.
 *
 * NOTE:
 * This attribute applies only to SVG images.
 * This attribute does not take effect when the parameter type of the component is AnimatedDrawableDescriptor.
 *
 * @param { ?ResourceColor } value - Fill color to be superimposed on the image.
 * @returns { This }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func fillColor(value: ?ResourceColor): This

/**
 * Specifies whether to resize the image source based on the size of the display area during image decoding.
 *
 * NOTE:
 * This attribute does not take effect when the parameter type of the component is AnimatedDrawableDescriptor
 * or SVG.
 *
 * @param { ?Bool } value - Whether to resize the image source based on the size of the display area
 * during image decoding. Default value is false.
 * @returns { This }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func autoResize(value: ?Bool): This

/**
 * Specifies whether to display the image in the system language direction.
 *
 * NOTE:
 * This attribute does not take effect when the parameter type of the component is AnimatedDrawableDescriptor.
 *
 * @param { ?Bool } value - Whether to display the image in the system language direction. Default value is false.
 * @returns { This }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func matchTextDirection(value: ?Bool): This

/**
 * Sets whether the display size of the image follows the source size.
 *
 * NOTE:
 * This attribute does not take effect when the parameter type of the component is AnimatedDrawableDescriptor.
 *
 * @param { ?Bool } value - Whether to fit the image to the size of the image source. Default value is false.
 * @returns { This }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func fitOriginalSize(value: ?Bool): This

/**
 * Sets a callback which is triggered when the image is successfully loaded. The size of the image source that is successfully loaded is returned, in pixels
 *
 * @param { ?ImageCompleteCallback } callback - The callback function triggered when image loading is complete.
 * @returns { This }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func onComplete(callback: ?ImageCompleteCallback): This

/**
 * Triggered when an error occurs during image loading.
 * The field of "message" carries the detailed information of failed image loading.
 *
 * NOTE:
 * This event is not triggered if the parameter type of the component is AnimatedDrawableDescriptor.
 *
 * @param { ?ImageErrorCallback } callback - The callback function triggered when an error occurs.
 * @returns { This }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func onError(callback: ?ImageErrorCallback): This

/**
 * When the loaded source file is a svg image, this callback is triggered when the playback of the svg image is complete.
 * If the svg image is a wireless loop image, this callback is not triggered.
 *
 * NOTE:
 * Only SVG images are supported.
 * This event is not triggered if the parameter type of the component is AnimatedDrawableDescriptor.
 *
 * @param { ?() -> Unit } event - The callback function triggered when SVG playback is complete.
 * @returns { This }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func onFinish(event: ?() -> Unit): This
}

/**
 * Define the ImageSpan attribute functions.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
sealed interface ImageAttribute <: CommonMethod<ImageAttribute> {
/**
 * Sets the placeholder image displayed during loading.
 *
 * NOTE:
 * This attribute does not take effect when the parameter type of the component is AnimatedDrawableDescriptor.
 *
 * @param { ?ResourceStr } value - Placeholder image displayed during loading, Default value is null.
 * @returns { ImageAttribute }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func alt(value: ?ResourceStr): ImageAttribute

/**
 * Sets how the image is resized to fit its container.
 *
 * @param { ?ImageFit } value - How the image is resized to fit its container, Default value is ImageFit.Cover.
 * @returns { ImageAttribute }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func objectFit(value: ?ImageFit): ImageAttribute

/**
 * Set the repeat style of the picture
 * NOTE:
 * This attribute is not applicable to SVG images.
 * This attribute does not take effect when the parameter type of the component is AnimatedDrawableDescriptor.
 *
 * @param { ?ImageRepeat } value - How the image is repeated, Default value is ImageRepeat.NoRepeat.
 * @returns { ImageAttribute }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func objectRepeat(value: ?ImageRepeat): ImageAttribute

/**
 * Sets the interpolation effect of the image, which can alleviate aliasing that occurs when the image is zoomed.
 *
 * NOTE:
 * This attribute is not applicable to SVG images.
 * This attribute does not take effect when the parameter type of the component is AnimatedDrawableDescriptor.
 *
 * @param { ?ImageInterpolation } value - Interpolation effect of the image, Default value is ImageInterpolation.Low.
 * @returns { ImageAttribute }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func interpolation(value: ?ImageInterpolation): ImageAttribute

/**
 * Sets the rendering mode of the image.
 *
 * NOTE:
 * This attribute is not applicable to SVG images.
 * When ColorFilter is set, this attribute is not effective.
 * This attribute does not take effect when the parameter type of the component is AnimatedDrawableDescriptor.
 *
 * @param { ?ImageRenderMode } value - Rendering mode of the image, Default value is ImageRenderMode.Original.
 * @returns { ImageAttribute }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func renderMode(value: ?ImageRenderMode): ImageAttribute

/**
 * Sets the decoding size of the image.
 * The original picture is decoded into a picture of a specified size.
 *
 * NOTE:
 * This attribute works only when the target size is smaller than the source size.
 * This attribute is not applicable to SVG images or PixelMap objects.
 * This attribute does not take effect when the parameter type of the component is AnimatedDrawableDescriptor.
 *
 * @param { ?Length } width - Decoding size of the image.
 * @param { ?Length } height - Decoding size of the image.
 * @returns { ImageAttribute }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func sourceSize(width: ?Length, height: ?Length): ImageAttribute

/**
 * Specifies whether to load the image synchronously.
 *
 * NOTE:
 * This attribute does not take effect when the parameter type of the component is AnimatedDrawableDescriptor.
 *
 * @param { ?Bool } value - Whether to load the image synchronously, Default value is false.
 * @returns { ImageAttribute }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func syncLoad(value: ?Bool): ImageAttribute

/**
 * Sets the fill color to be superimposed on the image.
 * By default, no fill color is applied. If an invalid value is passed, the system uses the default theme color:
 * black in light mode and white in dark mode.
 *
 * NOTE:
 * This attribute applies only to SVG images.
 * This attribute does not take effect when the parameter type of the component is AnimatedDrawableDescriptor.
 *
 * @param { ?ResourceColor } value - Fill color to be superimposed on the image.
 * @returns { ImageAttribute }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func fillColor(value: ?ResourceColor): ImageAttribute

/**
 * Specifies whether to resize the image source based on the size of the display area during image decoding.
 *
 * NOTE:
 * This attribute does not take effect when the parameter type of the component is AnimatedDrawableDescriptor
 * or SVG.
 *
 * @param { ?Bool } value - Whether to resize the image source based on the size of the display area
 *     during image decoding, Default value is false.
 * @returns { ImageAttribute }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func autoResize(value: ?Bool): ImageAttribute

/**
 * Specifies whether to display the image in the system language direction.
 *
 * NOTE:
 * This attribute does not take effect when the parameter type of the component is AnimatedDrawableDescriptor.
 *
 * @param { ?Bool } value - Whether to display the image in the system language direction, Default value is false.
 * @returns { ImageAttribute }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func matchTextDirection(value: ?Bool): ImageAttribute

/**
 * Sets whether the display size of the image follows the source size.
 *
 * NOTE:
 * This attribute does not take effect when the parameter type of the component is AnimatedDrawableDescriptor.
 *
 * @param { ?Bool } value - Whether to fit the image to the size of the image source, Default value is false.
 * @returns { ImageAttribute }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func fitOriginalSize(value: ?Bool): ImageAttribute

/**
 * Sets a callback which is triggered when the image is successfully loaded.
 * The size of the image source that is successfully loaded is returned, in pixels.
 *
 * @param { ?ImageCompleteCallback } callback - Triggered when the image is successfully loaded.
 * @returns { ImageAttribute }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func onComplete(callback: ?ImageCompleteCallback): ImageAttribute

/**
 * Triggered when an error occurs during image loading.
 * The field of "message" carries the detailed information of failed image loading.
 *
 * NOTE:
 * This event is not triggered if the parameter type of the component is AnimatedDrawableDescriptor.
 *
 * @param { ?ImageErrorCallback } callback - The callback function triggered when an error occurs.
 * @returns { ImageAttribute }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func onError(callback: ?ImageErrorCallback): ImageAttribute

/**
 * When the loaded source file is a svg image, this callback is triggered when the playback of the svg image is complete.
 * If the svg image is a wireless loop image, this callback is not triggered.
 *
 * NOTE:
 * Only SVG images are supported.
 * This event is not triggered if the parameter type of the component is AnimatedDrawableDescriptor.
 *
 * @param { ?() -> Unit } event - The callback function triggered when SVG playback is complete.
 * @returns { ImageAttribute }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func onFinish(event: ?() -> Unit): ImageAttribute
}