package ohos.arkui.component.alphabet_indexer

import ohos.arkui.component.common.*
import ohos.arkui.component.util.*
import ohos.base.*
import ohos.ffi.*
import ohos.labels.APILevel
import ohos.resource.*
import std.convert.*

/**
 * Defines an AlphabetIndexer callback when onSelect.
 *
 * @param { Int64 } index - selected index.
 */
public type OnAlphabetIndexerSelectCallback = (Int64) -> Unit

/**
 * Defines an AlphabetIndexer callback when onRequestPopupData.
 *
 * @param { Int64 } index - selected index.
 * @returns { Array<String> } string array corresponding to the index.
 */
public type OnAlphabetIndexerRequestPopupDataCallback = (Int64) -> Array<String>

/**
 * Defines an AlphabetIndexer callback when onPopupSelect.
 *
 * @param { Int64 } index - selected index.
 */
public type OnAlphabetIndexerPopupSelectCallback = (Int64) -> Unit

/**
 * Defines AlphabetIndexer Component.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class AlphabetIndexer <: CommonMethodComponent<AlphabetIndexer> & AlphabetIndexerAttribute {
/**
 * Construct the alphabet indexer component.
 * Called when the alphabet indexer component is used.
 *
 * @param { Array<String> } arrayValue - Alphabetical index string array.
 * @param { ?UInt32 } selected - ID of the selected item.
 * @returns { AlphabetIndexer } Returns the created AlphabetIndexer instance.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public init(arrayValue!: Array<String>, selected!: ?UInt32)

/**
 * Definitions color.
 *
 * @param { ?ResourceColor } value - The color to display.
 * @returns { This } Returns the current AlphabetIndexer instance.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func color(value: ?ResourceColor): This

/**
 * Select the text color.
 *
 * @param { ?ResourceColor } value - The selected color to display.
 * @returns { This } Returns the current AlphabetIndexer instance.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func selectedColor(value: ?ResourceColor): This

/**
 * Font color of the pop-up prompt text.
 *
 * @param { ?ResourceColor } value - The popup color to display.
 * @returns { This } Returns the current AlphabetIndexer instance.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func popupColor(value: ?ResourceColor): This

/**
 * Select the text background color
 *
 * @param { ?ResourceColor } value - The selected background color.
 * @returns { This } Returns the current AlphabetIndexer instance.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func selectedBackgroundColor(value: ?ResourceColor): This

/**
 * Background color of the pop-up window index.
 *
 * @param { ?ResourceColor } value - The background color to display.
 * @returns { This } Returns the current AlphabetIndexer instance.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func popupBackground(value: ?ResourceColor): This

/**
 * Whether to use pop-up index hints.
 *
 * @param { ?Bool } value - Whether using popup index hints.
 * @returns { This }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func usingPopup(value: ?Bool): This

/**
 * Select the text text style.
 *
 * @param { ?Length } [size] - The selected item font size.
 * @param { ?FontWeight } [weight] - The selected item font weight.
 * @param { ?ResourceStr } [family] - The selected item font family.
 * @param { ?FontStyle } [style] - The selected item font style.
 * @returns { This } Returns the current AlphabetIndexer instance.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func selectedFont(
        size!: ?Length = None,
        weight!: ?FontWeight = None,
        family!: ?ResourceStr = None,
        style!: ?FontStyle = None
    ): This

/**	
 * Select the text background color.	
 *	
 * @param { ?Length } [size] - The popup font size.
 * @param { ?FontWeight } [weight] - The popup font weight.
 * @param { ?ResourceStr } [family] - The popup font family.
 * @param { ?FontStyle } [style] - The popup font style.
 * @returns { This } Returns the current AlphabetIndexer instance.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func popupFont(
        size!: ?Length = None,
        weight!: ?FontWeight = None,
        family!: ?ResourceStr = None,
        style!: ?FontStyle = None
    ): This

/**	
 * Definitions fonts.	
 *	
 * @param { ?Length } [size] - The normal item font size.
 * @param { ?FontWeight } [weight] - The normal item font weight.
 * @param { ?ResourceStr } [family] - The normal item font weight.
 * @param { ?FontStyle } [style] - The normal item font weight.
 * @returns { This } Returns the current AlphabetIndexer instance.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func font(
        size!: ?Length = None,
        weight!: ?FontWeight = None,
        family!: ?ResourceStr = None,
        style!: ?FontStyle = None
    ): This

/**
 * Size of the letter area on the letter index bar. The letter area is a square. Set the length of the square side.
 *
 * @param { ?Length } value - The normal item size.
 * @returns { This } Returns the current AlphabetIndexer instance.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func itemSize(value: ?Length): This

/**
 * Alphabet index bar alignment style. The left and right alignment styles are supported,
 * which affects the pop-up position of the pop-up window.
 *
 * @param { ?IndexerAlign } value - indicates the alignment style of Alphabet index.
 * @returns { This } Returns the current AlphabetIndexer instance.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func alignStyle(value: ?IndexerAlign): This

/**
 * Sets the selected index.
 *
 * @param { ?Int32 } index - The initial selected index.
 * @returns { This } Returns the current AlphabetIndexer instance.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func selected(index: ?Int32): This

/**
 * Position of the pop-up windows, relative to the midpoint of the top border of the indexer bar.
 *
 * @param { ?Length } [x] - Coordinate x of the Position.
 * @param { ?Length } [y] - Coordinate y of the Position.
 * @returns { This } Returns the current AlphabetIndexer instance.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func popupPosition(x!: ?Length = None, y!: ?Length = None): This

/**
 * Index bar selection callback.
 *
 * @param { ?OnAlphabetIndexerSelectCallback } callback - The callback on select item.
 * @returns { This } Returns the current AlphabetIndexer instance.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func onSelect(callback: ?OnAlphabetIndexerSelectCallback): This

/**
 * Index bar selection callback and return the strings which display on pop-up.
 *
 * @param { ?OnAlphabetIndexerRequestPopupDataCallback } callback - The callback on request popup.
 * @returns { This } Returns the current AlphabetIndexer instance.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func onRequestPopupData(callback: ?OnAlphabetIndexerRequestPopupDataCallback): This

/**
 * Pop-up selection callback.
 *
 * @param { ?OnAlphabetIndexerPopupSelectCallback } callback - The callback on select popup.
 * @returns { This } Returns the current AlphabetIndexer instance.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func onPopupSelect(callback: ?OnAlphabetIndexerPopupSelectCallback): This
}

/**
 * Defines the alphabet index bar attribute functions.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
sealed interface AlphabetIndexerAttribute <: CommonMethod<AlphabetIndexerAttribute> {
/**
 * Definitions color.
 *
 * @param { ?ResourceColor } value - The color to display.
 * @returns { AlphabetIndexerAttribute } Returns the current AlphabetIndexerAttribute instance.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func color(value: ?ResourceColor): AlphabetIndexerAttribute

/**
 * Select the text color.
 *
 * @param { ?ResourceColor } value - The selected color to display.
 * @returns { AlphabetIndexerAttribute } Returns the current AlphabetIndexerAttribute instance.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func selectedColor(value: ?ResourceColor): AlphabetIndexerAttribute

/**
 * Font color of the pop-up prompt text.
 *
 * @param { ?ResourceColor } value - The selected background color.
 * @returns { AlphabetIndexerAttribute } Returns the current AlphabetIndexerAttribute instance.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func popupColor(value: ?ResourceColor): AlphabetIndexerAttribute

/**
 * Select the text background color.
 *
 * @param { ?ResourceColor } value - The popup color to display.
 * @returns { AlphabetIndexerAttribute } Returns the current AlphabetIndexerAttribute instance.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func selectedBackgroundColor(value: ?ResourceColor): AlphabetIndexerAttribute

/**
 * Background color of the pop-up window index.
 *
 * @param { ?ResourceColor } value - The background color to display.
 * @returns { AlphabetIndexerAttribute } Returns the current AlphabetIndexerAttribute instance.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func popupBackground(value: ?ResourceColor): AlphabetIndexerAttribute

/**
 * Whether to use pop-up index hints.
 *
 * @param { ?Bool } value - Whether using popup index hints.
 * @returns { AlphabetIndexerAttribute }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func usingPopup(value: ?Bool): AlphabetIndexerAttribute

/**
 * Select the text text style.
 *
 * @param { ?Length } size - The selected item font size.
 * @param { ?FontWeight } weight - The selected item font weight.
 * @param { ?ResourceStr } family - The selected item font family.
 * @param { ?FontStyle } style - The selected item font style.
 * @returns { AlphabetIndexerAttribute } Returns the current AlphabetIndexerAttribute instance.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func selectedFont(
        size!: ?Length,
        weight!: ?FontWeight,
        family!: ?ResourceStr,
        style!: ?FontStyle
    ): AlphabetIndexerAttribute

/**	
 * Select the text background color.	
 *	
 * @param { ?Length } size - The popup font size.
 * @param { ?FontWeight } weight - The popup font weight.
 * @param { ?ResourceStr } family - The popup font family.
 * @param { ?FontStyle } style - The popup font style.
 * @returns { AlphabetIndexerAttribute } Returns the current AlphabetIndexerAttribute instance.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func popupFont(
        size!: ?Length,
        weight!: ?FontWeight,
        family!: ?ResourceStr,
        style!: ?FontStyle
    ): AlphabetIndexerAttribute

/**	
 * Definitions fonts.	
 *	
 * @param { ?Length } size - The normal item font size.
 * @param { ?FontWeight } weight - The normal item font weight.
 * @param { ?ResourceStr } family - The normal item font weight.
 * @param { ?FontStyle } style - The normal item font weight.
 * @returns { AlphabetIndexerAttribute } Returns the current AlphabetIndexerAttribute instance.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func font(
        size!: ?Length,
        weight!: ?FontWeight,
        family!: ?ResourceStr,
        style!: ?FontStyle
    ): AlphabetIndexerAttribute

/**
 * Size of the letter area on the letter index bar. The letter area is a square. Set the length of the square side.
 *
 * @param { ?Length } size - The normal item size.
 * @returns { AlphabetIndexerAttribute } Returns the current AlphabetIndexerAttribute instance.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func itemSize(size: ?Length): AlphabetIndexerAttribute

/**
 * Alphabet index bar alignment style. The left and right alignment styles are supported,
 * which affects the pop-up position of the pop-up window.
 *
 * @param { ?IndexerAlign } value - indicates the alignment style of Alphabet index.
 * @returns { AlphabetIndexerAttribute } Returns the current AlphabetIndexerAttribute instance.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func alignStyle(value: ?IndexerAlign): AlphabetIndexerAttribute

/**
 * Sets the selected index.
 *
 * @param { ?Int32 } index - The initial selected index.
 * @returns { AlphabetIndexerAttribute } Returns the current AlphabetIndexerAttribute instance.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func selected(index: ?Int32): AlphabetIndexerAttribute

/**
 * Position of the pop-up windows, relative to the midpoint of the top border of the indexer bar.
 *
 * @param { ?Length } x - Coordinate x of the Position.
 * @param { ?Length } y - Coordinate y of the Position.
 * @returns { AlphabetIndexerAttribute } Returns the current AlphabetIndexerAttribute instance.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func popupPosition(x!: ?Length, y!: ?Length): AlphabetIndexerAttribute

/**
 * Index bar selection callback.
 *
 * @param { ?OnAlphabetIndexerSelectCallback } callback - The callback on select item.
 * @returns { AlphabetIndexerAttribute } Returns the current AlphabetIndexerAttribute instance.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func onSelect(callback: ?OnAlphabetIndexerSelectCallback): AlphabetIndexerAttribute

/**
 * Index bar selection callback and return the strings which display on pop-up.
 *
 * @param { ?OnAlphabetIndexerRequestPopupDataCallback } callback - The callback on request popup.
 * @returns { AlphabetIndexerAttribute } Returns the current AlphabetIndexerAttribute instance.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func onRequestPopupData(callback: ?OnAlphabetIndexerRequestPopupDataCallback): AlphabetIndexerAttribute

/**
 * Pop-up selection callback.
 *
 * @param { ?OnAlphabetIndexerPopupSelectCallback } callback - The callback on select popup.
 * @returns { AlphabetIndexerAttribute } Returns the current AlphabetIndexerAttribute instance.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func onPopupSelect(callback: ?OnAlphabetIndexerPopupSelectCallback): AlphabetIndexerAttribute
}