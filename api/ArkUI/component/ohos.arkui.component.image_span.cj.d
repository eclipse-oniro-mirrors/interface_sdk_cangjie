package ohos.arkui.component.image_span

import ohos.arkui.component.common.*
import ohos.arkui.component.image.*
import ohos.arkui.component.native_struct.*
import ohos.arkui.component.util.*
import ohos.base.*
import ohos.ffi.*
import ohos.labels.APILevel
import ohos.multimedia.image.PixelMap
import ohos.resource.*

/**
 * Defines ImageSpan Component.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class ImageSpan <: CommonMethodComponent<ImageSpan> & ImageSpanAttribute {
/**
 * Called when image is entered in span.
 *
 * @param { ?ResourceStr } value - The image resource.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public init(value: ?ResourceStr)

/**
 * Called when image is entered in span.
 *
 * @param { ?PixelMap } value - The image resource.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public init(value: ?PixelMap)

/**
 * Called when the alignment of image span is set.
 *
 * @param { ?ImageSpanAlignment } value - The alignment type of image span.
 * @returns { This } The attribute of the image span.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func verticalAlign(value: ?ImageSpanAlignment): This

/**
 * Sets the zoom type of an image.
 *
 * @param { ?ImageFit } value - Image display mode.
 * @returns { This } The attribute of the image span.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func objectFit(value: ?ImageFit): This

/**
 * Sets the color filter effect on the image span.
 *
 * @param { ?ColorFilter } filter - ColorFilter object.
 * @returns { This } The attribute of the image span.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func colorFilter(filter: ?ColorFilter): This

/**
 * Sets a callback which is triggered when the image is successfully loaded.
 * The size of the image source that is successfully loaded is returned, in pixels.
 *
 * @param { ?ImageCompleteCallback } callback - Triggered when the image is successfully loaded.
 * @returns { This } The attribute of the image span.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func onComplete(callback: ?ImageCompleteCallback): This

/**
 * Sets a callback which is triggered when an exception occurs during image loading.
 * The field of "message" returned in the callback carries the detailed information of failed image loading.
 *
 * @param { ?ImageErrorCallback } callback - Triggered when an exception occurs during image loading.
 * @returns { This } The attribute of the image span.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func onError(callback: ?ImageErrorCallback): This
}

/**
 * Define the ImageSpan attribute functions.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
sealed interface ImageSpanAttribute <: CommonMethod<ImageSpanAttribute> {
/**
 * Called when the alignment of image span is set.
 *
 * @param { ?ImageSpanAlignment } value - The alignment type of image span.
 * @returns { ImageSpanAttribute } The attribute of the image span.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func verticalAlign(value: ?ImageSpanAlignment): ImageSpanAttribute

/**
 * Sets the zoom type of an image.
 *
 * @param { ?ImageFit } value - Image display mode.
 * @returns { ImageSpanAttribute } The attribute of the image span.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func objectFit(value: ?ImageFit): ImageSpanAttribute

/**
 * Sets the color filter effect on the image span.
 *
 * @param { ?ColorFilter } filter - ColorFilter object.
 * @returns { ImageSpanAttribute } The attribute of the image span.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func colorFilter(filter: ?ColorFilter): ImageSpanAttribute

/**
 * Sets a callback which is triggered when the image is successfully loaded.
 * The size of the image source that is successfully loaded is returned, in pixels.
 *
 * @param { ?ImageCompleteCallback } callback - Triggered when the image is successfully loaded.
 * @returns { ImageSpanAttribute } The attribute of the image span.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func onComplete(callback: ?ImageCompleteCallback): ImageSpanAttribute

/**
 * Sets a callback which is triggered when an exception occurs during image loading.
 * The field of "message" returned in the callback carries the detailed information of failed image loading.
 *
 * @param { ?ImageErrorCallback } callback - Triggered when an exception occurs during image loading.
 * @returns { ImageSpanAttribute } The attribute of the image span.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func onError(callback: ?ImageErrorCallback): ImageSpanAttribute
}