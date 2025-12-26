package ohos.arkui.component.circle

import ohos.arkui.component.common.*
import ohos.arkui.component.shape.*
import ohos.arkui.component.util.*
import ohos.base.*
import ohos.labels.APILevel

/**
 * Defines Circle Component.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class Circle <: CommonShapeMethodComponent<Circle> & CircleAttribute {
    /**
     * Create a circle.
     *
     * @param { ?Length } [width] - The width of the circle component.
     * @param { ?Length } [height] - The height of the circle component.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(width!: ?Length = None, height!: ?Length = None)
}

/**
 * Circle drawing component attribute functions.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
sealed interface CircleAttribute <: CommonShapeMethod<CircleAttribute> {}