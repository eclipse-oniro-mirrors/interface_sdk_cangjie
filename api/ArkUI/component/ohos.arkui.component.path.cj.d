package ohos.arkui.component.path

import ohos.arkui.component.common.*
import ohos.arkui.component.shape.*
import ohos.arkui.component.util.*
import ohos.base.*
import ohos.labels.APILevel

/**
 * Defines Path Component.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class Path <: CommonShapeMethodComponent<Path> & PathAttribute {
/**
 * Create a path.
 *
 * @param { ?ResourceStr } [commands] - Commands option.

 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public init(commands!: ?ResourceStr = None)

/**
 * Create a path.
 *
 * @param { ?Length } width - Width option.
 * @param { ?Length } height - Height option.
 * @param { ?ResourceStr } [commands] - Commands option.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public init(width!: ?Length, height!: ?Length, commands!: ?ResourceStr = None)

/**
 * Called when the command string drawn by the path is set.
 *
 * @param { ?ResourceStr } value - The command string to draw the path.
 * @returns { This } The path Component.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func commands(value: ?ResourceStr): This
}

/**
 * Provides methods for attribute path component.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
sealed interface PathAttribute <: CommonShapeMethod<PathAttribute> {
/**
 * Called when the command string drawn by the path is set.
 *
 * @param { ?ResourceStr } value - The command string to draw the path.
 * @returns { PathAttribute } The path attribute.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func commands(value: ?ResourceStr): PathAttribute
}