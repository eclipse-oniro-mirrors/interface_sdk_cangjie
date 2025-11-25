package ohos.arkui.component.rich_text

import ohos.arkui.component.common.*
import ohos.base.*
import ohos.ffi.*
import ohos.labels.APILevel
import ohos.resource.*

/**
 * Defines RichText Component.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class RichText <: CommonMethodComponent<RichText> & RichTextAttribute {
/**
 * Creates a RichText component.
 * Initializes a RichText component with HTML content or a resource file.
 *
 * @param { ?ResourceStr } content - HTML format string or local resource file.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public init(content: ?ResourceStr)

/**
 * Triggered when the RichText loading starts
 *
 * @param { ?() -> Unit } callback - Callback function when loading starts.
 * @returns { This } Returns the RichText instance.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func onStart(callback: ?() -> Unit): This

/**
 * Triggered when the RichText loading ends.
 *
 * @param { ?() -> Unit } callback - Callback function when loading completes.
 * @returns { This } Returns the RichText instance.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func onComplete(callback: ?() -> Unit): This
}

/**
 * Defines the RichText attribute functions.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
sealed interface RichTextAttribute <: CommonMethod<RichTextAttribute> {
/**
 * Triggered when the RichText loading starts.
 *
 * @param { ?() -> Unit } callback - Callback function when loading starts.
 * @returns { RichTextAttribute } Returns the rich text attribute.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func onStart(callback: ?() -> Unit): RichTextAttribute

/**
 * Triggered when the RichText loading ends.
 *
 * @param { ?() -> Unit } callback - Callback function when loading completes.
 * @returns { RichTextAttribute } Returns the rich text attribute.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func onComplete(callback: ?() -> Unit): RichTextAttribute
}