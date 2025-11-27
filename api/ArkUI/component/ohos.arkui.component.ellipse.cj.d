package ohos.arkui.component.ellipse

import ohos.arkui.component.common.*
import ohos.arkui.component.shape.*
import ohos.arkui.component.util.*
import ohos.base.*
import ohos.labels.APILevel

/**
 * Defines Ellipse Component.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class Ellipse <: CommonShapeMethodComponent<Ellipse> & EllipseAttribute {
/**
 * Create an ellipse.
 *
 * @param { ?Length } [width] - Set width.
 * @param { ?Length } [height] - Set Height.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public init(width!: ?Length = None, height!: ?Length = None)
}

/**
 * Provides attribute for Ellipse.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
sealed interface EllipseAttribute <: CommonShapeMethod<EllipseAttribute> {}