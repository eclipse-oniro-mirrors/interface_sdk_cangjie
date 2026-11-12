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

    /**
     * Sets barriers in the RelativeContainer component. Each array element defines a barrier.
     * Barriers can be defined in mirrored layout mode.
     *
     * @param { Array<LocalizedBarrierStyle> } value - Barriers in the RelativeContainer component.
     * @returns { This } The instance of the component.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func barrier(value: Array<LocalizedBarrierStyle>): This
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

    /**
     * Sets barriers in the RelativeContainer component. Each array element defines a barrier.
     * Barriers can be defined in mirrored layout mode.
     *
     * @param { Array<LocalizedBarrierStyle> } value - Barriers in the RelativeContainer component.
     * @returns { RelativeContainerAttribute } The attribute of the component.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    func barrier(value: Array<LocalizedBarrierStyle>): RelativeContainerAttribute
}

/**
 * Defines the ID, direction, and referenced components of a barrier.
 */
@!APILevel[
    since: "26.1.0",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class LocalizedBarrierStyle {
    /**
     * ID of the barrier, which must be unique and cannot be the same as the name of any component in the container.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var id: String

    /**
     * Direction of the barrier. Vertical-direction barriers (including Top and Bottom) can only serve as the horizontal
     *     anchor of a component. If they are used as a vertical anchor, the anchor value will be 0.
     *     Horizontal-direction barriers (including Start and End) can only serve as the vertical anchor of a component.
     *     If they are used as a horizontal anchor, the anchor value will be 0.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var localizedDirection: LocalizedBarrierDirection

    /**
     * Referenced components of the barrier.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var referencedId: Array<String>

    /**
     * LocalizedBarrierStyle constructor.
     *
     * @param { String } id - ID of the barrier, which must be unique and cannot be the same as the name of any
     *     component in the container.
     * @param { LocalizedBarrierDirection } localizedDirection - Direction of the barrier. Vertical-direction barriers
     *     (including Top and Bottom) can only serve as the horizontal anchor of a component. If they are used as a
     *     vertical anchor, the anchor value will be 0. Horizontal-direction barriers (including Start and End) can only
     *     serve as the vertical anchor of a component. If they are used as a horizontal anchor, the anchor value will
     *     be 0.
     * @param { Array<String> } referencedId - Referenced components of the barrier.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(
        id: String,
        localizedDirection: LocalizedBarrierDirection,
        referencedId: Array<String>
    )
}

/**
 * Enumerates the directions of barriers with mirror mode support.
 */
@!APILevel[
    since: "26.1.0",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum LocalizedBarrierDirection {
    /**
     * The barrier is on the left (for left-to-right scripts) or right (for right-to-left scripts) side of all the
     *     referenced components.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Start
    |
    /**
     * The barrier is on the right (for left-to-right scripts) or left (for right-to-left scripts) side of all the
     *     referenced components.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    End
    |
    /**
     * The barrier is at the top of all the referenced components.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Top
    |
    /**
     * The barrier is at the bottom of all the referenced components.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Bottom
    | ...
}

extend LocalizedBarrierDirection <: Equatable<LocalizedBarrierDirection> {
    /**
     * Compares this LocalizedBarrierDirection with another for equality.
     *
     * @param { LocalizedBarrierDirection } other - The LocalizedBarrierDirection to compare with.
     * @returns { Bool } True if both directions are equal, false otherwise.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public operator func ==(other: LocalizedBarrierDirection): Bool

    /**
     * Compares this LocalizedBarrierDirection with another for inequality.
     *
     * @param { LocalizedBarrierDirection } other - The LocalizedBarrierDirection to compare with.
     * @returns { Bool } True if both directions are not equal, false otherwise.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public operator func !=(other: LocalizedBarrierDirection): Bool
}
