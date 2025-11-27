package ohos.arkui.component.rating

import ohos.arkui.component.common.*
import ohos.arkui.component.util.*
import ohos.base.*
import ohos.ffi.*
import ohos.labels.APILevel
import ohos.resource.*

/**
 * Defines Rating Component.
 * A component that allows users to rate by clicking or sliding stars, commonly used for product ratings or feedback collection.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class Rating <: CommonMethodComponent<Rating> & RatingAttribute {
/**
 * Initializes a Rating component with optional initial rating value and indicator mode.
 *
 * @param { ?Float64 } rating - Current rating value.
 * @param { ?Bool } [indicator] - Whether the rating component is used as indicator (read-only mode).
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public init(rating!: ?Float64, indicator!: ?Bool = None)

/**
 * Called when the total number of stars is set
 *
 * @param { ?Int32 } value - Number of stars.
 * @returns { This } Returns the Rating instance.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func stars(value: ?Int32): This

/**
 * Called when the step size of the operation rating
 *
 * @param { ?Float64 } size - Step size for rating changes.
 * @returns { This } Returns the Rating instance.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func stepSize(size: ?Float64): This

/**
 * Called when a picture is set
 *
 * @param { ?ResourceStr } backgroundUri - Background URI option for unselected stars.
 * @param { ?ResourceStr } foregroundUri - Foreground URI option for selected stars.
 * @param { ?ResourceStr } [secondaryUri] - Secondary URI option for partially selected stars.
 * @returns { This } Returns the Rating instance.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func starStyle(backgroundUri!: ?ResourceStr, foregroundUri!: ?ResourceStr, secondaryUri!: ?ResourceStr = None): This

/**
 * Called when the star rating of the operation scoring bar changes.
 *
 * @param { ?(Float64) -> Unit } callback - Callback function when rating changes.
 * The parameter is the new rating value.
 * @returns { This } Returns the Rating instance.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func onChange(callback: ?(Float64) -> Unit): This
}

/**
 * Defines the rating attribute functions.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
sealed interface RatingAttribute <: CommonMethod<RatingAttribute> {
/**
 * Called when the total number of stars is set.
 *
 * @param { ?Int32 } starCount - Number of stars.
 * @returns { RatingAttribute } Returns the rating attribute.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func stars(starCount: ?Int32): RatingAttribute

/**
 * Called when the step size of the operation rating.
 *
 * @param { ?Float64 } size - Step size for rating changes.
 * @returns { RatingAttribute } Returns the rating attribute.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func stepSize(size: ?Float64): RatingAttribute

/**
 * Called when a picture is set.
 *
 * @param { ?ResourceStr } backgroundUri - Background URI option for unselected stars.
 * @param { ?ResourceStr } foregroundUri - Foreground URI option for selected stars.
 * @param { ?ResourceStr } secondaryUri - Secondary URI option for partially selected stars.
 * @returns { RatingAttribute } Returns the rating attribute.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func starStyle(backgroundUri!: ?ResourceStr, foregroundUri!: ?ResourceStr, secondaryUri!: ?ResourceStr): RatingAttribute

/**
 * Called when the star rating of the operation scoring bar changes.
 *
 * @param { ?(Float64) -> Unit } callback - Callback function when rating changes.
 * The parameter is the new rating value.
 * @returns { RatingAttribute } Returns the rating attribute.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func onChange(callback: ?(Float64) -> Unit): RatingAttribute
}