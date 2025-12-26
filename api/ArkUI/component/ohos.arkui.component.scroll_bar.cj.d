package ohos.arkui.component.scroll_bar

import ohos.arkui.component.common.*
import ohos.arkui.component.scroll.*
import ohos.base.*
import ohos.labels.APILevel

/**
 * Defines ScrollBar Component.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class ScrollBar <: CommonMethodComponent<ScrollBar> & ScrollBarAttribute {
    /**
     * Constructs a ScrollBar component with the provided parameters.
     *
     * @param { ?Scroller } scroller - Scroller controller for the scrollable component.
     * @param { ?ScrollBarDirection } [direction] - Layout direction of the scroll bar.
     * @param { ?BarState } [state] - Display state of the scroll bar.
     * @param { () -> Unit } child - Child component contained in the scroll bar.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(
        scroller!: ?Scroller,
        direction!: ?ScrollBarDirection = None,
        state!: ?BarState = None,
        child!: () -> Unit
    )
}

/**
 * Defines the scrollbar attribute functions.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
sealed interface ScrollBarAttribute <: CommonMethod<ScrollBarAttribute> {}