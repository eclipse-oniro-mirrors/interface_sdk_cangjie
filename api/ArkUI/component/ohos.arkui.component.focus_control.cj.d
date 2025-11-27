package ohos.arkui.component.focus_control

import ohos.labels.APILevel

/**
 * Defines the namespace of focus controller.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class FocusControl {
/**
 * Request focus to the specific component by param: 'id/key'.
 *
 * @param { ?String } value - Component ID or key to receive focus.
 * @returns { Bool } Whether the focus is successfully requested.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public static func requestFocus(value: ?String): Bool
}