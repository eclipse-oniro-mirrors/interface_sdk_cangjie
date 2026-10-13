package ohos.arkui.component.flex

import ohos.arkui.component.common.*
import ohos.arkui.component.util.*
import ohos.base.*
import ohos.labels.APILevel

/**
 * Defines Flex Component.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class Flex <: CommonMethodComponent<Flex> & FlexAttribute {
    /**
     * Defines the constructor of Flex.
     *
     * @param { ?FlexDirection } [direction] - Direction in which child components are arranged in the Flex component.
     * @param { ?FlexWrap } [wrap] - Whether the Flex component has a single line or multiple lines.
     * @param { ?FlexAlign } [justifyContent] - Alignment mode of the child components in the Flex component along the main axis.
     * @param { ?ItemAlign } [alignItems] - Alignment mode of the child components in the Flex component along the cross axis.
     * @param { ?FlexAlign } [alignContent] - Alignment mode of the child components in a multi-row Flex component along the cross axis.
     * @param { () -> Unit } [child] - The child component to be added to the Flex component.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(direction!: ?FlexDirection = None, wrap!: ?FlexWrap = None, justifyContent!: ?FlexAlign = None,
        alignItems!: ?ItemAlign = None, alignContent!: ?FlexAlign = None, child!: () -> Unit = {=>})

    /**
     * Defines the constructor of Flex with space options.
     *
     * @param { ?FlexDirection } [direction] - Direction in which child components are arranged in the Flex component.
     * @param { ?FlexWrap } [wrap] - Whether the Flex component has a single line or multiple lines.
     * @param { ?FlexAlign } [justifyContent] - Alignment mode of the child components in the Flex component along the
     *     main axis.
     * @param { ?ItemAlign } [alignItems] - Alignment mode of the child components in the Flex component along the cross
     *     axis.
     * @param { ?FlexAlign } [alignContent] - Alignment mode of the child components in a multi-row Flex component along
     *     the cross axis.
     * @param { ?FlexSpaceOptions } space - Spacing between child components along the main axis or cross axis of the
     *     Flex component. Invalid values are treated as the default value. This parameter does not take effect
     *     if the value specified is a negative number or percentage, or if justifyContent is set to
     *     FlexAlign.SpaceBetween, FlexAlign.SpaceAround, or FlexAlign.SpaceEvenly. Default value: FlexSpaceOptions(
     *     mainSpacing: LengthMetrics(0.0, unit: LengthUnit.Px), crossSpacing: LengthMetrics(0.0, unit: LengthUnit.Px)).
     * @param { () -> Unit } [child] - The child component to be added to the Flex component.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(direction!: ?FlexDirection = None, wrap!: ?FlexWrap = None, justifyContent!: ?FlexAlign = None,
        alignItems!: ?ItemAlign = None, alignContent!: ?FlexAlign = None, space!: ?FlexSpaceOptions,
        child!: () -> Unit = {=>})
}

/**
 * Defines the Flex attribute functions.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
sealed interface FlexAttribute <: CommonMethod<FlexAttribute> {}

/**
 * Defines the flex space options.
 */
@!APILevel[
    since: "26.1.0",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class FlexSpaceOptions {
    /**
     * Space on the main axis of the Flex component. Default value: LengthMetrics(0.0, unit: LengthUnit.Px).
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var mainSpacing: ?LengthMetrics

    /**
     * Space on the cross axis of the Flex component. Default value: LengthMetrics(0.0, unit: LengthUnit.Px).
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public var crossSpacing: ?LengthMetrics

    /**
     * FlexSpaceOptions constructor.
     *
     * @param { ?LengthMetrics } [mainSpacing] - Space on the main axis of the Flex component. Default value:
     *     LengthMetrics(0.0, unit: LengthUnit.Px).
     * @param { ?LengthMetrics } [crossSpacing] - Space on the cross axis of the Flex component. Default value:
     *     LengthMetrics(0.0, unit: LengthUnit.Px).
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(
        mainSpacing!: ?LengthMetrics = None,
        crossSpacing!: ?LengthMetrics = None
    )
}