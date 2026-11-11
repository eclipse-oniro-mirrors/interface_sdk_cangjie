/*
 * Copyright (c) 2026 Huawei Device Co., Ltd.
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

// The Cangjie API is in Beta. For details on its capabilities and limitations, please refer to the README file.

package ohos.bluetooth.socket

import ohos.labels.APILevel

/**
 * Creates a Bluetooth server listening socket.
 *
 * @param { String } name - Indicates the service name.
 * @param { SppOptions } options - Indicates the listen parameters.
 * @param { AsyncCallback<Int32> } callback - Callback used to return a server socket ID.
 * @throws { BusinessException } 201 - Permission denied.
 * @throws { BusinessException } 801 - Capability not supported.
 * @throws { BusinessException } 2900001 - Service stopped.
 * @throws { BusinessException } 2900003 - Bluetooth disabled.
 * @throws { BusinessException } 2900004 - Profile not supported.
 * @throws { BusinessException } 2900099 - Operation failed.
 */
@!APILevel[
    since: "26.1.0",
    syscap: "SystemCapability.Communication.Bluetooth.Core",
    permission: "ohos.permission.ACCESS_BLUETOOTH",
    throwexception: true
]
public func sppListen(name: String, options: SppOptions, callback: AsyncCallback<Int32>): Unit

/**
 * Waits for a remote device to connect.
 *
 * @param { Int32 } serverSocket - Indicates the server socket ID, returned by **sppListen**.
 * @param { AsyncCallback<Int32> } callback - Callback used to return a client socket ID.
 * @throws { BusinessException } 801 - Capability not supported.
 * @throws { BusinessException } 2900001 - Service stopped.
 * @throws { BusinessException } 2900003 - Bluetooth disabled.
 * @throws { BusinessException } 2900004 - Profile not supported.
 * @throws { BusinessException } 2900099 - Operation failed.
 */
@!APILevel[
    since: "26.1.0",
    syscap: "SystemCapability.Communication.Bluetooth.Core",
    throwexception: true
]
public func sppAccept(serverSocket: Int32, callback: AsyncCallback<Int32>): Unit

/**
 * Connects to a remote device over the socket.
 *
 * @param { String } deviceId - Indicates device ID. For example, "11:22:33:AA:BB:FF".
 * @param { SppOptions } options - Indicates the connect parameters **SppOptions**.
 * @param { AsyncCallback<Int32> } callback - Callback used to return a client socket ID.
 * @throws { BusinessException } 201 - Permission denied.
 * @throws { BusinessException } 801 - Capability not supported.
 * @throws { BusinessException } 2900001 - Service stopped.
 * @throws { BusinessException } 2900003 - Bluetooth disabled.
 * @throws { BusinessException } 2900004 - Profile not supported.
 * @throws { BusinessException } 2900099 - Operation failed.
 */
@!APILevel[
    since: "26.1.0",
    syscap: "SystemCapability.Communication.Bluetooth.Core",
    permission: "ohos.permission.ACCESS_BLUETOOTH",
    throwexception: true
]
public func sppConnect(deviceId: String, options: SppOptions, callback: AsyncCallback<Int32>): Unit

/**
 * Obtain the device id in the client socket.
 *
 * @param { Int32 } clientSocket - Indicates client socket.
 * @returns { String } Returns the connected device id
 */
@!APILevel[
    since: "26.1.0",
    syscap: "SystemCapability.Communication.Bluetooth.Core"
]
public func getDeviceId(clientSocket: Int32): String

/**
 * Disables an spp server socket and releases related resources.
 *
 * @param { Int32 } socket - Indicates the server socket ID, returned by **sppListen**.
 * @throws { BusinessException } 801 - Capability not supported.
 * @throws { BusinessException } 2900001 - Service stopped.
 * @throws { BusinessException } 2900099 - Operation failed.
 */
@!APILevel[
    since: "26.1.0",
    syscap: "SystemCapability.Communication.Bluetooth.Core",
    throwexception: true
]
public func sppCloseServerSocket(socket: Int32): Unit

/**
 * Disables an spp client socket and releases related resources.
 *
 * @param { Int32 } socket - Indicates the client socket ID, returned by **sppAccept** or **sppConnect**.
 * @throws { BusinessException } 801 - Capability not supported.
 * @throws { BusinessException } 2900001 - Service stopped.
 * @throws { BusinessException } 2900099 - Operation failed.
 */
@!APILevel[
    since: "26.1.0",
    syscap: "SystemCapability.Communication.Bluetooth.Core",
    throwexception: true
]
public func sppCloseClientSocket(socket: Int32): Unit

/**
 * Write data through the socket.
 *
 * @param { Int32 } clientSocket - Indicates the client socket ID, returned by **sppAccept** or **sppConnect**.
 * @param { ArrayBuffer } data - Indicates the data to write.
 * @throws { BusinessException } 801 - Capability not supported.
 * @throws { BusinessException } 2901054 - IO error.
 * @throws { BusinessException } 2900099 - Operation failed.
 */
@!APILevel[
    since: "26.1.0",
    syscap: "SystemCapability.Communication.Bluetooth.Core",
    throwexception: true
]
public func sppWrite(clientSocket: Int32, data: ArrayBuffer): Unit

/**
 * Asynchronous interface for reading data from the socket.
 *
 * @param { Int32 } clientSocket - Indicates the client socket ID, returned by **sppAccept** or **sppConnect**.
 * @param { AsyncCallback<ArrayBuffer> } callback - Callback used to return the spp read data.
 * @throws { BusinessException } 801 - Capability not supported.
 * @throws { BusinessException } 2901054 - IO error.
 * @throws { BusinessException } 2900099 - Operation failed.
 */
@!APILevel[
    since: "26.1.0",
    syscap: "SystemCapability.Communication.Bluetooth.Core",
    throwexception: true
]
public func sppReadAsync(clientSocket: Int32, callback: AsyncCallback<ArrayBuffer>): Unit

/**
 * Describes the spp parameters.
 */
@!APILevel[
    since: "26.1.0",
    syscap: "SystemCapability.Communication.Bluetooth.Core"
]
public class SppOptions {
    /** Creates SPP socket options. */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public init(uuid: String, secure: Bool, sppType: SppType)

    /**
     * Indicates the UUID in the SDP record.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public mut prop uuid: String

    /**
     * Indicates secure channel or not.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public mut prop secure: Bool

    /**
     * Indicates the SPP link type.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public mut prop sppType: SppType
}

/**
 * The enum of SPP type.
 */
@!APILevel[
    since: "26.1.0",
    syscap: "SystemCapability.Communication.Bluetooth.Core"
]
public enum SppType {
    /**
     * SppRfcomm.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    SppRfcomm
    |
    /**
     * SppL2cap.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    SppL2cap
    |
    /**
     * SppL2capBle.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    SppL2capBle
    | ...
}

extend SppType <: ToString {
    /**
     * Converts the SppType to its string representation.
     * @returns { String } A string representation of the SppType.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public func toString(): String
}

extend SppType <: Equatable<SppType> {
    /**
     * Compares this SppType with another for equality.
     * @param { SppType } other - The SppType to compare with.
     * @returns { Bool } True if both modes are equal, false otherwise.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public operator func ==(other: SppType): Bool

    /**
     * Compares this SppType with another for inequality.
     * @param { SppType } other - The SppType to compare with.
     * @returns { Bool } True if both modes are not equal, false otherwise.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public operator func !=(other: SppType): Bool
}
