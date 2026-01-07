package ohos.arkui.component.loading_progress

import ohos.arkui.component.common.*
import ohos.arkui.component.custom_component.*
import ohos.arkui.component.util.*
import ohos.base.*
import ohos.labels.APILevel

/**
 * Defines LoadingProgress Component.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class LoadingProgress <: CommonMethodComponent<LoadingProgress> & LoadingProgressAttribute {
    /**
     * Initializes a LoadingProgress component.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init()

    /**
     * Load the color of the progress bar.
     *
     * @param { ?ResourceColor } value - Sets the foreground color of the loading progress bar.
     * @returns { This } Returns the LoadingProgress instance.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func color(value: ?ResourceColor): This
}

/**
 * Declare the progress bar being loaded
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
sealed interface LoadingProgressAttribute <: CommonMethod<LoadingProgressAttribute> {
    /**
     * Load the color of the progress bar.
     *
     * @param { ?ResourceColor } value - Sets the foreground color of the loading progress bar.
     * @returns { LoadingProgressAttribute } Returns the loading progress attribute.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    func color(value: ?ResourceColor): LoadingProgressAttribute
}