package ohos.arkui.component.relative_container

import ohos.arkui.component.common.*
import ohos.base.*
import ohos.ffi.*
import ohos.labels.APILevel

/**
 * Specifies the BarrierStyle of relativeContainer
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class BarrierStyle {
/**
 * Specifies the id of barrier
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var id: ?String

/**
 * Specifies the direction of barrier
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var direction: ?BarrierDirection

/**
 * Specifies the referencedId of barrier
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var referencedId: ?Array<String>

/**
 * Defines the constructor of BarrierStyle.
 *
 * @param { ?String } id - ID of the barrier.
 * @param { ?BarrierDirection } direction - Direction of the barrier.
 * @param { ?Array<String> } referencedId - Referenced IDs of the barrier.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public init(id: ?String, direction: ?BarrierDirection, referencedId: ?Array<String>)
}

/**
 * Specifies the position of guideLine
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class GuideLinePosition {
/**
 * Specifies the distance to start of container
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var start: ?Length

/**
 * Specifies the distance to end of container
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var end: ?Length

/**
 * Defines the constructor of GuideLinePosition.
 *
 * @param { ?Length } [start] - Distance to start of container.
 * @param { ?Length } [end] - Distance to end of container.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public init(start!: ?Length = None, end!: ?Length = None)
}

/**
 * Specifies the GuideLineStyle of relativeContainer
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class GuideLineStyle {
/**
 * Specifies the id of guideLine
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var id: ?String

/**
 * Specifies the direction of guideLine
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var direction: ?Axis

/**
 * Specifies the position of guideLine
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public var position: ?GuideLinePosition

/**
 * Defines the constructor of GuideLineStyle.
 *
 * @param { ?String } id - ID of the guide line.
 * @param { ?Axis } direction - Direction of the guide line.
 * @param { ?GuideLinePosition } position - Position of the guide line.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public init(id: ?String, direction: ?Axis, position: ?GuideLinePosition)
}

/**
 * Defines RelativeContainer Component.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class RelativeContainer <: CommonMethodComponent<RelativeContainer> & RelativeContainerAttribute {
/**
 * Constructor of relativeContainer
 *
 * @param { () -> Unit } [child] - Content of the relative container.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public init(child!: () -> Unit = {=>})

/**
 * Specifies guideLines of relativeContainer
 *
 * @param { ?Array<GuideLineStyle> } value - Array of guide line styles.
 * @returns { This }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func guideLine(value: ?Array<GuideLineStyle>): This

/**
 * Specifies barriers of relativeContainer
 *
 * @param { ?Array<BarrierStyle> } value - Array of barrier styles.
 * @returns { This }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func barrier(value: ?Array<BarrierStyle>): This
}

/**
 * Defines the RelativeContainer attribute functions.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
sealed interface RelativeContainerAttribute <: CommonMethod<RelativeContainerAttribute> {
/**
 * Specifies guideLines of relativeContainer
 *
 * @param { ?Array<GuideLineStyle> } value - Array of guide line styles.
 * @returns { RelativeContainerAttribute }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func guideLine(value: ?Array<GuideLineStyle>): RelativeContainerAttribute

/**
 * Specifies barriers of relativeContainer
 *
 * @param { ?Array<BarrierStyle> } value - Array of barrier styles.
 * @returns { RelativeContainerAttribute }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func barrier(value: ?Array<BarrierStyle>): RelativeContainerAttribute
}