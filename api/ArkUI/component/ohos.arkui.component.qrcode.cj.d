package ohos.arkui.component.qrcode

import ohos.arkui.component.common.*
import ohos.arkui.component.util.*
import ohos.base.*
import ohos.ffi.*
import ohos.labels.APILevel
import ohos.resource.*

/**
 * Defines QRCode Component.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class QRCode <: CommonMethodComponent<QRCode> & QRCodeAttribute {
    /**
     * Called when a QR code is set.
     *
     * @param { ?ResourceStr } value - Content of the QR code. Maximum of 512 characters are supported.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(value: ?ResourceStr)

    /**
     * Called when the QR code color is set.
     *
     * @param { ?ResourceColor } value - Color of the QR code. The default value is 0xff000000.
     * @returns { This }
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func color(value: ?ResourceColor): This

    /**
     * Set the opacity of the QR code content color.
     *
     * @param { ?Float64 } value - indicates the opacity of the QR code content color. The value is between 0 and 1, with a default value of 1.
     * @returns { This }
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func contentOpacity(value: ?Float64): This

    /**
     * Set the opacity of the QR code content color.
     *
     * @param { ?AppResource } value - indicates the opacity of the QR code content color. The value is between 0 and 1, with a default value of 1.
     * @returns { This }
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func contentOpacity(value: ?AppResource): This
}

/**
 * Defines the qrcode attribute functions.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
sealed interface QRCodeAttribute <: CommonMethod<QRCodeAttribute> {
    /**
     * Called when the QR code color is set.
     *
     * @param { ?ResourceColor } value - Color of the QR code. The default value is 0xff000000.
     * @returns { QRCodeAttribute }
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    func color(value: ?ResourceColor): QRCodeAttribute

    /**
     * Set the opacity of the QR code content color.
     *
     * @param { ?Float64 } value - indicates the opacity of the QR code content color. The value is between 0 and 1, with a default value of 1.
     * @returns { QRCodeAttribute }
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    func contentOpacity(value: ?Float64): QRCodeAttribute

    /**
     * Set the opacity of the QR code content color.
     *
     * @param { ?AppResource } value - indicates the opacity of the QR code content color. The value is between 0 and 1, with a default value of 1.
     * @returns { QRCodeAttribute }
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    func contentOpacity(value: ?AppResource): QRCodeAttribute
}