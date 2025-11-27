package ohos.arkui.component.rich_editor

import ohos.arkui.component.common.*
import ohos.arkui.component.native_struct.*
import ohos.arkui.component.util.*
import ohos.base.*
import ohos.ffi.*
import ohos.labels.APILevel
import ohos.multimedia.image.*
import ohos.multimedia.image.PixelMap
import ohos.resource.*
import std.collection.ArrayList
import std.convert.*

/**
 * Defines the font decoration result.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class DecorationStyleResult {
/**
 * Font decoration.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var decorationType: ?TextDecorationType

/**
 * Font decoration color.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var color: ResourceColor

/**
 * Constructor.
 *
 * @param { TextDecorationType } decorationType - The font decoration type.
 * @param { ResourceColor } color - The font decoration color.
 * @returns { DecorationStyleResult }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public init(
        decorationType: TextDecorationType,
        color: ResourceColor
    )
}

/**
 * Defines the inserted text value info.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class RichEditorInsertValue {
/**
 * The location info where the value will be inserted.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var insertOffset: Int32

/**
 * The inserted value.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var insertValue: String

/**
 * Constructor.
 *
 * @param { ?Int32 } insertOffset - The location info where the value will be inserted.
 * @param { ?String } insertValue - The inserted value.
 * @returns { RichEditorInsertValue }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public init(
        insertOffset: ?Int32,
        insertValue: ?String
    )
}

/**
 * Defines the span position.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class RichEditorSpanPosition {
/**
 * Define the index of span.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var spanIndex: ?Int32

/**
 * The range of span.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var spanRange: ?(Int32, Int32)

/**
 * RichEditorSpanPosition constructor
 *
 * @param { ?Int32 } spanIndex - Define the index of span.
 * @param { ?(Int32, Int32) } spanRange - The range of span.
 * @returns { RichEditorSpanPosition }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public init(
        spanIndex: ?Int32,
        spanRange: ?(Int32, Int32)
    )
}

/**
 * Defines the text style result.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class RichEditorTextStyleResult {
/**
 * font color.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var fontColor: String

/**
 * font size.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var fontSize: Float64

/**
 * font style.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var fontStyle: FontStyle

/**
 * font weight.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var fontWeight: Int32

/**
 * font family.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var fontFamily: String

/**
 * Font decoration.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var decoration: DecorationStyleResult

/**
 * RichEditorTextStyleResult constructor.
 *
 * @param { String } fontColor - font color.
 * @param { Float64 } fontSize - font size.
 * @param { FontStyle } fontStyle - font style.
 * @param { Int32 } fontWeight - font weight.
 * @param { String } fontFamily - font family.
 * @param { DecorationStyleResult } decoration - font decoration.
 * @returns { RichEditorTextStyleResult }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public init(
        fontColor: String,
        fontSize: Float64,
        fontStyle: FontStyle,
        fontWeight: Int32,
        fontFamily: String,
        decoration: DecorationStyleResult
    )
}

/**
 * Defines the span image style result.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class RichEditorImageSpanStyleResult {
/**
 * image size.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var size: ?(Float64, Float64)

/**
 * image vertical align.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var verticalAlign: ?ImageSpanAlignment

/**
 * image fit.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var objectFit: ?ImageFit

/**
 * RichEditor ImageSpan Layout Style.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var layoutStyle: ?RichEditorLayoutStyle
}

/**
 * Defines the text span result.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class RichEditorTextSpanResult <: RichEditorSpanResult {
/**
 * The position of the text span.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var spanPosition: RichEditorSpanPosition

/**
 * The content of the text span.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var value: String

/**
 * text style.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var textStyle: RichEditorTextStyleResult

/**
 * get offset in span.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var offsetInSpan: (Int32, Int32)

/**
 * RichEditorTextSpanResult constructor.
 *
 * @param { RichEditorSpanPosition } spanPosition - The position of the text span.
 * @param { String } value - The content of the text span.
 * @param { RichEditorTextStyleResult } textStyle - text style.
 * @param { (Int32, Int32) } offsetInSpan - get offset in span.
 * @returns { RichEditorTextSpanResult }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public init(
        spanPosition: RichEditorSpanPosition,
        value: String,
        textStyle: RichEditorTextStyleResult,
        offsetInSpan: (Int32, Int32)
    )
}

/**
 * Defines the image span.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class RichEditorImageSpanResult <: RichEditorSpanResult {
/**
 * The position of the image span.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var spanPosition: ?RichEditorSpanPosition

/**
 * The pixel map of the image span.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var valuePixelMap: Option<PixelMap>

/**
 * The resource string of the image span.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var valueResourceStr: ?String

/**
 * image attribute.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var imageStyle: ?RichEditorImageSpanStyleResult

/**
 * get offset in span.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var offsetInSpan: ?(Int32, Int32)

/**
 * RichEditorImageSpanResult constructor.
 *
 * @param { ?RichEditorSpanPosition } [spanPosition] - The position of the image span.
 * @param { Option<PixelMap> } [valuePixelMap] - The pixel map of the image span.
 * @param { ?String } [valueResourceStr] - The resource string of the image span.
 * @param { ?RichEditorImageSpanStyleResult } [imageStyle] - image attribute.
 * @param { ?(Int32, Int32) } [offsetInSpan] - get offset in span.
 * @returns { RichEditorImageSpanResult }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public init(
        spanPosition!: ?RichEditorSpanPosition = Option.None,
        valuePixelMap!: Option<PixelMap> = Option.None,
        valueResourceStr!: ?String = None,
        imageStyle!: ?RichEditorImageSpanStyleResult = None,
        offsetInSpan!: ?(Int32, Int32) = None
    )
}

/**
 * Defines the types of spans in rich editor.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public interface RichEditorSpanResult {}

/**
 * Defines the text information for editing.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class RichEditorSelection {
/**
 * The location info.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var selection: (Int32, Int32)

/**
 * The selected text content.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var spans: ArrayList<RichEditorSpanResult>

/**
 * RichEditorSelection constructor
 *
 * @param { ?(Int32, Int32) } selection - the location info.
 * @param { ?ArrayList<RichEditorSpanResult> } spans - the selected text content.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public init(selection: ?(Int32, Int32), spans: ?ArrayList<RichEditorSpanResult>)
}

/**
 * Provides a class for deleting value from text.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class RichEditorDeleteValue {
/**
 * The offset of deleting.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var offset: Int32

/**
 * The deleted direction.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var direction: RichEditorDeleteDirection

/**
 * The deleted text length.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var length: Int32

/**
 * The deleted span object.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var richEditorDeleteSpans: ArrayList<RichEditorSpanResult>

/**
 * RichEditorDeleteValue constructor
 *
 * @param { Int32 } offset - the offset of deleting.
 * @param { RichEditorDeleteDirection } direction - the deleted direction.
 * @param { Int32 } length - the deleted text length.
 * @param { ArrayList<RichEditorSpanResult> } richEditorDeleteSpans - the deleted span object.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public init(
        offset: Int32,
        direction: RichEditorDeleteDirection,
        length: Int32,
        richEditorDeleteSpans: ArrayList<RichEditorSpanResult>
    )
}

/**
 * Defines range of text type component.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class TextRange {
/**
 * Start offset.
 * @default 0
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var start: ?Int32

/**
 * End offset, the default value is text length.
 *
 * @default text length
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var end: ?Int32

/**
 * TextRange constructor.
 *
 * @param { ?Int32 } start - Start offset. The default value is 0.
 * @param { ?Int32 } end - End offset. The default value is text length.
 * @returns { TextRange }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public init(start: ?Int32, end: ?Int32)
}

/**
 * Defines the paste event.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class PasteEvent <: RemoteDataLite {
/**
 * Override system paste event.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func preventDefault(): Unit
}

/**
 * Callback function when a paste operation is performed.
 *
 * @param { PasteEvent } event - The paste event.
 */
public type PasteEventCallback = (PasteEvent) -> Unit

/**
 * Callback after content changed.
 *
 * @param { TextRange } rangeBefore - Range of content that had been replaced.
 * @param { TextRange } rangeAfter - Range of content that newly added.
 */
public type OnDidChangeCallback = (rangeBefore: TextRange, rangeAfter: TextRange) -> Unit

/**
 * Defines RichEditor Component.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class RichEditor <: CommonMethodComponent<RichEditor> & RichEditorAttribute {
/**
 * Called when create RichEditor.
 *
 * @param { ?RichEditorController } controller - Controller of the rich editor.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public init(controller: ?RichEditorController)

/**
 * Define custom keyboard.
 *
 * @param { ?CustomBuilder } value - Set up a custom keyboard of RichEditor.
 * @returns { This }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func customKeyboard(value!: ?CustomBuilder): This

/**
 * Bind to the selection menu.
 *
 * @param { ?RichEditorSpanType } [spantype] - Indicates the type of selection menu. The default value is RichEditorSpanType.TEXT.
 * @param { ?CustomBuilder } content - Indicates the content of selection menu.
 * @param { ?ResponseType } [responseType] - Indicates response type of selection menu. The default value is ResponseType.LongPress.
 * @param { ?SelectionMenuOptions } options - Indicates the options of selection menu.
 * @returns { This }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func bindSelectionMenu(
        spanType!: ?RichEditorSpanType = None,
        content!: ?CustomBuilder,
        responseType!: ?ResponseType = None,
        options!: ?SelectionMenuOptions
    ): This

/**
 * Allow replication.
 *
 * @param { ?CopyOptions } value - Indicates the type of copy option. The default value is CopyOptions.LocalDevice.
 * @returns { This }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func copyOptions(value: ?CopyOptions): This

/**
 * Called when on ready.
 *
 * @param { ?VoidCallback } callback - The triggered function when rich editor is ready.
 * @returns { This }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func onReady(callback: ?VoidCallback): This

/**
 * Get text value information when about to input.
 *
 * @param { ?Callback<RichEditorInsertValue, Bool> } callback - The triggered function when text content is about to insert.
 * @returns { This }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func aboutToImeInput(callback: ?Callback<RichEditorInsertValue, Bool>): This

/**
 * Get text value information when completed input.
 *
 * @param { ?Callback<RichEditorTextSpanResult, Unit> } callback - The triggered function when text content has been inserted.
 * @returns { This }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func onImeInputComplete(callback: ?Callback<RichEditorTextSpanResult, Unit>): This

/**
 * Notify that the deletion has been completed.
 *
 * @param { ?VoidCallback } callback  - The triggered function when text content has been deleted.
 * @returns { This }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func onDeleteComplete(callback: ?VoidCallback): This

/**
 * Get text value information when about to delete.
 *
 * @param { ?Callback<RichEditorDeleteValue, Bool> } callback - The triggered function when text content is about to delete.
 * @returns { This }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func aboutToDelete(callback: ?Callback<RichEditorDeleteValue, Bool>): This

/**
 * Called when the content is selected.
 *
 * @param { ?Callback<RichEditorSelection, Unit> } callback  - The triggered function when select text.
 * @returns { This }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func onSelect(callback: ?Callback<RichEditorSelection, Unit>): This

/**
 * Defines onPaste callback.
 *
 * @param { ?PasteEventCallback } callback - Executed when a paste operation is performed.
 * @returns { This }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func onPaste(callback: ?PasteEventCallback): This

/**
 * Called after text changed.
 *
 * @param { ?OnDidChangeCallback } callback - The triggered function after content changed.
 * @returns { This }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func onDidChange(callback: ?OnDidChangeCallback): This
}

/**
 * Provides attribute for RichEditor.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
sealed interface RichEditorAttribute <: CommonMethod<RichEditorAttribute> {
/**
 * Define custom keyboard.
 *
 * @param { ?CustomBuilder } value - Set up a custom keyboard of RichEditor.
 * @returns { RichEditorAttribute }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func customKeyboard(value!: ?CustomBuilder): RichEditorAttribute

/**
 * Bind to the selection menu.
 *
 * @param { ?RichEditorSpanType } spantype - Indicates the type of selection menu.
 * @param { ?CustomBuilder } content - Indicates the content of selection menu.
 * @param { ?ResponseType } responseType - Indicates response type of selection menu.
 * @param { ?SelectionMenuOptions } options - Indicates the options of selection menu.
 * @returns { RichEditorAttribute }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func bindSelectionMenu(
        spanType!: ?RichEditorSpanType,
        content!: ?CustomBuilder,
        responseType!: ?ResponseType,
        options!: ?SelectionMenuOptions
    ): RichEditorAttribute

/**
 * Allow replication.
 *
 * @param { ?CopyOptions } value - Indicates the type of copy option.
 * @returns { RichEditorAttribute }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func copyOptions(value: ?CopyOptions): RichEditorAttribute

/**
 * Called when on ready.
 *
 * @param { ?VoidCallback } callback - The triggered function when rich editor is ready.
 * @returns { RichEditorAttribute }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func onReady(callback: ?VoidCallback): RichEditorAttribute

/**
 * Get text value information when about to input.
 *
 * @param { ?Callback<RichEditorInsertValue, Bool> } callback - The triggered function when text content is about to insert.
 * @returns { RichEditorAttribute }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func aboutToImeInput(callback: ?Callback<RichEditorInsertValue, Bool>): RichEditorAttribute

/**
 * Get text value information when completed input.
 *
 * @param { ?Callback<RichEditorTextSpanResult, Unit> } callback - The triggered function when text content has been inserted.
 * @returns { RichEditorAttribute }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func onImeInputComplete(callback: ?Callback<RichEditorTextSpanResult, Unit>): RichEditorAttribute

/**
 * Notify that the deletion has been completed.
 *
 * @param { ?VoidCallback } callback - The triggered function when text content has been deleted.
 * @returns { RichEditorAttribute }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func onDeleteComplete(callback: ?VoidCallback): RichEditorAttribute

/**
 * Get text value information when about to delete.
 *
 * @param { ?Callback<RichEditorDeleteValue, Bool> } callback - The triggered function when text content is about to delete.
 * @returns { RichEditorAttribute }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func aboutToDelete(callback: ?Callback<RichEditorDeleteValue, Bool>): RichEditorAttribute

/**
 * Called when the content is selected.
 *
 * @param { ?Callback<RichEditorSelection, Unit> } callback - The triggered function when select text.
 * @returns { RichEditorAttribute }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func onSelect(callback: ?Callback<RichEditorSelection, Unit>): RichEditorAttribute

/**
 * Defines onPaste callback.
 *
 * @param { ?PasteEventCallback } callback - Executed when a paste operation is performed.
 * @returns { RichEditorAttribute }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func onPaste(callback: ?PasteEventCallback): RichEditorAttribute

/**
 * Called after text changed.
 *
 * @param { ?OnDidChangeCallback } callback - The triggered function after content changed.
 * @returns { RichEditorAttribute }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func onDidChange(callback: ?OnDidChangeCallback): RichEditorAttribute
}

/**
 * Leading margin.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum LeadingMarginType {
/**
 * Length.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
] 
LengthType(Length)
| 
/**
 * Placeholder.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
] 
PlaceholderType(LeadingMarginPlaceholder)
| 
/**
 * None.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
None
| ...
}

/**
 * Defines the options of decoration.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class TextDecorationOptions {
/**
 * The type value of the decoration property object.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var decorationType: ?TextDecorationType

/**
 * The color value of the decoration property object.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var color: ?ResourceColor

/**
 * TextDecorationOptions constructor
 *
 * @param { ?TextDecorationType } decorationType - The type value of the decoration property object.
 * @param { ?ResourceColor } [color] - The color value of the decoration property object.
 * @returns { TextDecorationOptions }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public init(decorationType!: ?TextDecorationType, color!: ?ResourceColor = None)
}

/**
 * Defines the selection menu options.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class SelectionMenuOptions {
/**
 * Callback function when the selection menu appears.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var onAppear: ?VoidCallback

/**
 * Callback function when the selection menu disappears.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var onDisappear: ?VoidCallback

/**
 * SelectionMenuOptions constructor
 *
 * @param { ?() -> Unit } [onAppear] - Callback function when the selection menu appears.
 * @param { ?() -> Unit } [onDisappear] - Callback function when the selection menu disappears.
 * @returns { SelectionMenuOptions }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public init(onAppear!: ?() -> Unit = None, onDisappear!: ?() -> Unit = None)
}

/**
 * Defines the span text style.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class RichEditorTextStyle {
/**
 * font color.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var fontColor: ?ResourceColor

/**
 * font size.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var fontSize: ?Length

/**
 * font style.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var fontStyle: ?FontStyle

/**
 * font weight.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var fontWeight: ?FontWeight

/**
 * font family.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var fontFamily: ?ResourceStr

/**
 * Font decoration.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var decoration: ?TextDecorationOptions

/**
 * RichEditorTextStyle constructor
 *
 * @param { ?ResourceColor } [fontColor] - font color.
 * @param { ?Length } [fontSize] - font size.
 * @param { ?FontStyle } [fontStyle] - font style.
 * @param { ?FontWeight } [fontWeight] - font weight.
 * @param { ?ResourceStr } [fontFamily] - font family.
 * @param { ?TextDecorationOptions } [decoration] - font decoration.
 * @returns { RichEditorTextStyle }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public init(
        fontColor!: ?ResourceColor = None,
        fontSize!: ?Length = None,
        fontStyle!: ?FontStyle = None,
        fontWeight!: ?FontWeight = None,
        fontFamily!: ?ResourceStr = None,
        decoration!: ?TextDecorationOptions = None
    )
}

/**
 * Defines the span options of RichEditor.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class RichEditorTextSpanOptions {
/**
 * the offset that add a text span at.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var offset: ?Int32

/**
 * text style.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var style: ?RichEditorTextStyle

/**
 * RichEditorTextSpanOptions constructor
 *
 * @param { ?Int32 } [offset] - the offset that add a text span at.
 * @param { ?RichEditorTextStyle } [style] - text style.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public init(offset!: ?Int32 = None, style!: ?RichEditorTextStyle = None)
}

/**
 * Defines the richEditor Image Layout Style.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class RichEditorLayoutStyle {
/**
 * Outer Margin.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var margin: ?Margin

/**
 * Border radius
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var borderRadius: ?BorderRadiuses

/**
 * RichEditorLayoutStyle constructor
 *
 * @param { ?Margin } [margin] - outer margin.
 * @param { ?BorderRadiuses } [borderRadius] - border radius.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public init(margin!: ?Margin = None, borderRadius!: ?BorderRadiuses = None)

/**
 * RichEditorLayoutStyle constructor
 *
 * @param { ?Length } margin - outer margin.
 * @param { ?Length } borderRadius - border radius.
 * @returns { RichEditorLayoutStyle }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public init(margin!: ?Length, borderRadius!: ?Length)
}

/**
 * Defines the span image style.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class RichEditorImageSpanStyle {
/**
 * image size.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var size: Option<(Length, Length)>

/**
 * image vertical align.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var verticalAlign: ?ImageSpanAlignment

/**
 * image fit.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var objectFit: ?ImageFit

/**
 * RichEditorImageSpanStyle constructor
 *
 * @param { Option<(Length, Length)> } [size] - image size.
 * @param { ?ImageSpanAlignment } [verticalAlign] - image vertical align.
 * @param { ?ImageFit } [objectFit] - image fit.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public init(
        size!: Option<(Length, Length)> = Option.None,
        verticalAlign!: ?ImageSpanAlignment = Option.None,
        objectFit!: ?ImageFit = Option.None
    )
}

/**
 * Defines the image span options of RichEditor.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class RichEditorImageSpanOptions {
/**
 * the offset that add image span at.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var offset: ?Int32

/**
 * image style.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var imageStyle: ?RichEditorImageSpanStyle

/**
 * RichEditorImageSpanOptions constructor
 *
 * @param { ?Int32 } [offset] - the offset that add image span at.
 * @param { ?RichEditorImageSpanStyle } [imageStyle] - image style.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public init(
        offset!: ?Int32 = None,
        imageStyle!: ?RichEditorImageSpanStyle = None
    )
}

/**
 * Defines the leading margin placeholder of a paragraph.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class LeadingMarginPlaceholder {
/**
 * Placeholder pixelMap.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var pixelMap: PixelMap

/**
 * Placeholder size.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var size: ?(Length, Length)

/**
 * LeadingMarginPlaceholder constructor
 *
 * @param { PixelMap } pixelMap - Placeholder pixelMap.
 * @param { ?(Length, Length) } size - Placeholder size.
 * @returns { LeadingMarginPlaceholder }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public init(pixelMap!: PixelMap, size!: ?(Length, Length))
}

/**
 * Defines the paragraph style.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class RichEditorParagraphStyle {
/**
 * Text alignment.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var textAlign: ?TextAlign

/**
 * Leading margin.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var leadingMargin: ?LeadingMarginType

/**
 * RichEditorParagraphStyle constructor
 *
 * @param { ?TextAlign } [textAlign] - Text alignment.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public init(textAlign!: ?TextAlign = None)

/**
 * RichEditorParagraphStyle constructor
 *
 * @param { ?TextAlign } [textAlign] - Text alignment.
 * @param { ?Length } leadingMargin - Leading margin.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public init(textAlign!: ?TextAlign = None, leadingMargin!: ?Length)

/**
 * RichEditorParagraphStyle constructor
 *
 * @param { ?TextAlign } [textAlign] - Text alignment.
 * @param { ?LeadingMarginPlaceholder } leadingMargin - Leading margin.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public init(textAlign!: ?TextAlign = None, leadingMargin!: ?LeadingMarginPlaceholder)
}

/**
 * Provides Base Controller for RichEditor.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public open class RichEditorBaseController <: RemoteDataLite {
    protected init(id: Int64)

/**
 * Get caret offset from controller.
 *
 * @returns { Int32 }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func getCaretOffset(): Int32

/**
 * Set caret offset.
 *
 * @param { ?Int32 } offset - caret offset.
 * @returns { Bool }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func setCaretOffset(offset: ?Int32): Bool
}

/**
 * Provides Controller for RichEditor.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class RichEditorController <: RichEditorBaseController {
/**
 * RichEditorController constructor.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public init()

/**
 * Add a text span.
 *
 * @param { ?ResourceStr } content - text value.
 * @param { ?RichEditorTextSpanOptions } [options] - span info.
 * @returns { Int32 }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func addTextSpan(content!: ?ResourceStr, options!: ?RichEditorTextSpanOptions = None): Int32

/**
 * Add a image span.
 *
 * @param { ?ResourceStr } value - image value.
 * @param { ?RichEditorImageSpanOptions } [options] - image span info.
 * @returns { Int32 }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func addImageSpan(value!: ?ResourceStr, options!: ?RichEditorImageSpanOptions = None): Int32

/**
 * Modify span style.
 *
 * @param { ?Int32 } [start] - The start of updating the span style.
 * @param { ?Int32 } [end] - The end of updating the span style.
 * @param { ?RichEditorTextStyle } textStyle - Text style.
 * @returns { Unit }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func updateSpanStyle(start!: ?Int32 = None, end!: ?Int32 = None, textStyle!: ?RichEditorTextStyle): Unit

/**
 * Modify span style.
 *
 * @param { ?Int32 } [start] - The start of updating the span style.
 * @param { ?Int32 } [end] - The end of updating the span style.
 * @param { ?RichEditorImageSpanStyle } imageStyle - Image style
 * @returns { Unit }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func updateSpanStyle(start!: ?Int32 = None, end!: ?Int32 = None, imageStyle!: ?RichEditorImageSpanStyle): Unit

/**
 * Delete span.
 *
 * @param { ?Int32 } [start] - The start of deleting.
 * @param { ?Int32 } [end] - The end of deleting.
 * @returns { Unit }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func deleteSpans(start!: ?Int32 = None, end!: ?Int32 = None): Unit

/**
 * close the select menu when menu is on.
 * @returns { Unit }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func closeSelectionMenu(): Unit

/**
 * Modify span style.
 *
 * @param { ?Int32 } [start] - The start of updating the paragraph style.
 * @param { ?Int32 } [end] - The end of updating the paragraph style.
 * @param { ?RichEditorParagraphStyle } style - Paragraph style.
 * @returns { Unit }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func updateParagraphStyle(start!: ?Int32 = None, end!: ?Int32 = None, style!: ?RichEditorParagraphStyle): Unit

/**
 * Get span content.
 *
 * @param { ?Int32 } [start] - The start of getting span info.
 * @param { ?Int32 } [end] - The end of getting span info.
 * @returns { ArrayList<RichEditorSpanResult> }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func getSpans(start!: ?Int32 = None, end!: ?Int32 = None): ArrayList<RichEditorSpanResult>
}