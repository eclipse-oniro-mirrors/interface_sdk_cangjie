package ohos.arkui.component.counter

import ohos.arkui.component.common.*
import ohos.base.*
import ohos.ffi.*
import ohos.labels.APILevel

/**
 * Defines Counter Component.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class Counter <: CommonMethodComponent<Counter> & CounterAttribute {
/**
 * Counter constructor.
 *
 * @param { () -> Unit } content - The content to display in the counter.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public init(content: () -> Unit)

/**
 * Indicates whether the increase button of counter component is available or not.
 *
 * @param { ?Bool } value - If true, the increase button is available and can respond to operations such as clicking. If false, click operations are not responded.
 * @returns { This } The instance of the Counter.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func enableInc(value: ?Bool): This

/**
 * Indicates whether the decrease button of counter component is available or not.
 *
 * @param { ?Bool } value - If true, the decrease button is available and can respond to operations such as clicking. If false, click operations are not responded.
 * @returns { This } The instance of the Counter.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func enableDec(value: ?Bool): This

/**
 * Listen to the event that the value increases.
 *
 * @param { ?VoidCallback } event - The callback function triggered when the counter value increases.
 * @returns { This } The instance of the Counter.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func onInc(event: ?VoidCallback): This

/**
 * Listens to the number decrease event.
 *
 * @param { ?VoidCallback } event - The callback function triggered when the counter value decreases.
 * @returns { This } The instance of the Counter.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func onDec(event: ?VoidCallback): This
}

/**
 * Defines the Counter attribute functions.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
sealed interface CounterAttribute <: CommonMethod<CounterAttribute> {
/**
 * Indicates whether the increase button of counter component is available or not.
 *
 * @param { ?Bool } value - If true, the increase button is available and can respond to operations such as clicking. If false, click operations are not responded.
 * @returns { CounterAttribute } The attribute of the Counter.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func enableInc(value: ?Bool): CounterAttribute

/**
 * Indicates whether the decrease button of counter component is available or not.
 *
 * @param { ?Bool } value - If true, the decrease button is available and can respond to operations such as clicking. If false, click operations are not responded.
 * @returns { CounterAttribute } The attribute of the Counter.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func enableDec(value: ?Bool): CounterAttribute

/**
 * Listen to the event that the value increases.
 *
 *
 * @param { ?VoidCallback } event - The callback function triggered when the counter value increases.
 * @returns { CounterAttribute } The attribute of the Counter.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func onInc(event: ?VoidCallback): CounterAttribute

/**
 * Listens to the number decrease event.
 *
 *
 * @param { ?VoidCallback } event - The callback function triggered when the counter value decreases.
 * @returns { CounterAttribute } The attribute of the Counter.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    func onDec(event: ?VoidCallback): CounterAttribute
}