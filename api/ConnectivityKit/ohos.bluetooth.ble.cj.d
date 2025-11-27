/*
 * Copyright (c) 2025 Huawei Device Co., Ltd.
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

package ohos.bluetooth.ble


import ohos.bluetooth.constant.ProfileConnectionState
import ohos.business_exception.AsyncCallback
import ohos.callback_invoke.{Callback1Argument, CallbackObject}
import ohos.labels.APILevel

/**
 * create a Gatt server instance.
 *
 * @returns { GattServer } Returns a Gatt server instance GattServer.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Communication.Bluetooth.Core"
]
public func createGattServer(): GattServer

/**
 * create a Gatt client device instance.
 *
 * @param { String } deviceId - Indicates device ID. For example, "11:22:33:AA:BB:FF".
 * @returns { GattClientDevice } Returns a Gatt client device instance GattClientDevice.
 * @throws { BusinessException } 801 - Capability not supported.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Communication.Bluetooth.Core",
    throwexception: true
]
public func createGattClientDevice(deviceId: String): GattClientDevice

/**
 * Starts scanning for specified BLE devices with filters.
 *
 * @param { Array<ScanFilter> } filters - Indicates the list of filters used to filter out specified devices.
 * If you do not want to use filter, set this parameter to empty array.
 * @param { ?ScanOptions } [options] - Indicates the parameters for scanning and if the user does not assign a value,
 * the default value will be used.
 * interval set to 0, dutyMode set to SCAN_MODE_LOW_POWER
 * and matchMode set to MATCH_MODE_AGGRESSIVE.
 * and phyType set to PHY_LE_ALL_SUPPORTED.
 * @throws { BusinessException } 201 - Permission denied.
 * @throws { BusinessException } 801 - Capability not supported.
 * @throws { BusinessException } 2900001 - Service stopped.
 * @throws { BusinessException } 2900003 - Bluetooth disabled.
 * @throws { BusinessException } 2900099 - Operation failed.
 */
@!APILevel[
    since: "22",
    permission: "ohos.permission.ACCESS_BLUETOOTH",
    syscap: "SystemCapability.Communication.Bluetooth.Core",
    throwexception: true
]
public func startBleScanning(filters: Array<ScanFilter>, options!: ?ScanOptions = None): Unit

/**
 * Stops BLE scanning.
 *
 * @throws { BusinessException } 201 - Permission denied.
 * @throws { BusinessException } 801 - Capability not supported.
 * @throws { BusinessException } 2900001 - Service stopped.
 * @throws { BusinessException } 2900003 - Bluetooth disabled.
 * @throws { BusinessException } 2900099 - Operation failed.
 */
@!APILevel[
    since: "22",
    permission: "ohos.permission.ACCESS_BLUETOOTH",
    syscap: "SystemCapability.Communication.Bluetooth.Core",
    throwexception: true
]
public func stopBleScanning(): Unit

/**
 * Starts BLE advertising.
 *
 * @param { AdvertiseSetting } setting - Indicates the settings for BLE advertising.
 * @param { AdvertiseData } advData - Indicates the advertising data.
 * @param { ?AdvertiseData } [advResponse] - Indicates the scan response associated with the advertising data.
 * @throws { BusinessException } 201 - Permission denied.
 * @throws { BusinessException } 801 - Capability not supported.
 * @throws { BusinessException } 2900001 - Service stopped.
 * @throws { BusinessException } 2900003 - Bluetooth disabled.
 * @throws { BusinessException } 2900010 - The numeber of advertising resources reaches the upper limit.
 * @throws { BusinessException } 2900099 - Operation failed.
 * @throws { BusinessException } 2902054 - The length of the advertising data exceeds the upper limit.
 */
@!APILevel[
    since: "22",
    permission: "ohos.permission.ACCESS_BLUETOOTH",
    syscap: "SystemCapability.Communication.Bluetooth.Core",
    throwexception: true,
    workerthread: true
]
public func startAdvertising(setting: AdvertiseSetting, advData: AdvertiseData, advResponse!: ?AdvertiseData = None): Unit

/**
 * Stops BLE advertising.
 *
 * @throws { BusinessException } 201 - Permission denied.
 * @throws { BusinessException } 801 - Capability not supported.
 * @throws { BusinessException } 2900001 - Service stopped.
 * @throws { BusinessException } 2900003 - Bluetooth disabled.
 * @throws { BusinessException } 2900099 - Operation failed.
 * @throws { BusinessException } 2902055 - Invalid advertising id.
 */
@!APILevel[
    since: "22",
    permission: "ohos.permission.ACCESS_BLUETOOTH",
    syscap: "SystemCapability.Communication.Bluetooth.Core",
    throwexception: true,
    workerthread: true
]
public func stopAdvertising(): Unit

/**
 * Starts BLE advertising.
 * The API returns a advertising ID. The ID can be used to completely stop the advertising corresponding to the ID,
 * invoke the API stopAdvertising with ID.
 *
 * @param { AdvertisingParams } advertisingParams - Indicates the param for BLE advertising.
 * @returns { UInt32 }the callback of advertise ID.
 * @throws { BusinessException } 201 - Permission denied.
 * @throws { BusinessException } 801 - Capability not supported.
 * @throws { BusinessException } 2900001 - Service stopped.
 * @throws { BusinessException } 2900003 - Bluetooth disabled.
 * @throws { BusinessException } 2900010 - The numeber of advertising resources reaches the upper limit.
 * @throws { BusinessException } 2900099 - Operation failed.
 * @throws { BusinessException } 2902054 - The length of the advertising data exceeds the upper limit.
 */
@!APILevel[
    since: "22",
    permission: "ohos.permission.ACCESS_BLUETOOTH",
    syscap: "SystemCapability.Communication.Bluetooth.Core",
    throwexception: true,
    workerthread: true
]
public func startAdvertising(advertisingParams: AdvertisingParams): UInt32

/**
 * Stops BLE advertising.
 * Completely stop the advertising corresponding to the ID.
 *
 * @param { UInt32 } advertisingId - Indicates the ID for this BLE advertising.
 * @throws { BusinessException } 201 - Permission denied.
 * @throws { BusinessException } 801 - Capability not supported.
 * @throws { BusinessException } 2900001 - Service stopped.
 * @throws { BusinessException } 2900003 - Bluetooth disabled.
 * @throws { BusinessException } 2900099 - Operation failed.
 * @throws { BusinessException } 2902055 - Invalid advertising id.
 */
@!APILevel[
    since: "22",
    permission: "ohos.permission.ACCESS_BLUETOOTH",
    syscap: "SystemCapability.Communication.Bluetooth.Core",
    throwexception: true,
    workerthread: true
]
public func stopAdvertising(advertisingId: UInt32): Unit

/**
 * Subscribing to advertising state change event.
 *
 * @param { BluetoothBleCallbackType } eventType - Type of the advertising state to listen for.
 * @param { Callback1Argument<AdvertisingStateChangeInfo> } callback - Callback used to listen for the advertising state.
 */
@!APILevel[
    since: "22",
    permission: "ohos.permission.ACCESS_BLUETOOTH",
    syscap: "SystemCapability.Communication.Bluetooth.Core"
]
public func on(eventType: BluetoothBleCallbackType, callback: Callback1Argument<AdvertisingStateChangeInfo>): Unit

/**
 * Subscribe BLE scan result.
 *
 * @param { BluetoothBleCallbackType } eventType - Type of the scan result event to listen for.
 * @param { Callback1Argument<Array<ScanResult>> } callback - Callback used to listen for the scan result event.
 */
@!APILevel[
    since: "22",
    permission: "ohos.permission.ACCESS_BLUETOOTH",
    syscap: "SystemCapability.Communication.Bluetooth.Core"
]
public func on(eventType: BluetoothBleCallbackType, callback: Callback1Argument<Array<ScanResult>>): Unit

/**
 * Unsubscribe from callback event.
 *
 * @param { BluetoothBleCallbackType } eventType - Type of unsubscribe event.
 * @param { ?CallbackObject } [callback] - Callback used to listen.
 */
@!APILevel[
    since: "22",
    permission: "ohos.permission.ACCESS_BLUETOOTH",
    syscap: "SystemCapability.Communication.Bluetooth.Core"
]
public func off(eventType: BluetoothBleCallbackType, callback!: ?CallbackObject = None): Unit

/**
 * Manages GATT client. Before calling an Gatt client method, you must use createGattClientDevice to create an
 * GattClientDevice instance.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Communication.Bluetooth.Core"
]
public class GattClientDevice {
    /**
     * Connects to a BLE peripheral device.
     * The 'BLEConnectionStateChange' event is subscribed to return the connection state.
     *
     * @throws { BusinessException } 201 - Permission denied.
     * @throws { BusinessException } 801 - Capability not supported.
     * @throws { BusinessException } 2900001 - Service stopped.
     * @throws { BusinessException } 2900003 - Bluetooth disabled.
     * @throws { BusinessException } 2900099 - Operation failed.
     */
    @!APILevel[
        since: "22",
        permission: "ohos.permission.ACCESS_BLUETOOTH",
        syscap: "SystemCapability.Communication.Bluetooth.Core",
        throwexception: true
    ]
    public func connect(): Unit

    /**
     * Disconnects from or stops an ongoing connection to a BLE peripheral device.
     *
     * @throws { BusinessException } 201 - Permission denied.
     * @throws { BusinessException } 801 - Capability not supported.
     * @throws { BusinessException } 2900001 - Service stopped.
     * @throws { BusinessException } 2900003 - Bluetooth disabled.
     * @throws { BusinessException } 2900099 - Operation failed.
     */
    @!APILevel[
        since: "22",
        permission: "ohos.permission.ACCESS_BLUETOOTH",
        syscap: "SystemCapability.Communication.Bluetooth.Core",
        throwexception: true
    ]
    public func disconnect(): Unit

    /**
     * Disables a BLE peripheral device.
     *  This method unregisters the device and clears the registered callbacks and handles.
     *
     * @throws { BusinessException } 201 - Permission denied.
     * @throws { BusinessException } 801 - Capability not supported.
     * @throws { BusinessException } 2900001 - Service stopped.
     * @throws { BusinessException } 2900003 - Bluetooth disabled.
     * @throws { BusinessException } 2900099 - Operation failed.
     */
    @!APILevel[
        since: "22",
        permission: "ohos.permission.ACCESS_BLUETOOTH",
        syscap: "SystemCapability.Communication.Bluetooth.Core",
        throwexception: true
    ]
    public func close(): Unit

    /**
     * Obtains the name of BLE peripheral device.
     *
     * @returns { String } Returns a string representation of the name if obtained;
     * @throws { BusinessException } 201 - Permission denied.
     * @throws { BusinessException } 801 - Capability not supported.
     * @throws { BusinessException } 2900001 - Service stopped.
     * @throws { BusinessException } 2900099 - Operation failed.
     */
    @!APILevel[
        since: "22",
        permission: "ohos.permission.ACCESS_BLUETOOTH",
        syscap: "SystemCapability.Communication.Bluetooth.Core",
        throwexception: true,
        workerthread: true
    ]
    public func getDeviceName(): String

    /**
     * Starts discovering services.
     *
     * @param { AsyncCallback<Array<GattService>> } callback - Callback used to catch the services.
     * @throws { BusinessException } 201 - Permission denied.
     * @throws { BusinessException } 801 - Capability not supported.
     * @throws { BusinessException } 2900001 - Service stopped.
     * @throws { BusinessException } 2900099 - Operation failed.
     */
    @!APILevel[
        since: "22",
        permission: "ohos.permission.ACCESS_BLUETOOTH",
        syscap: "SystemCapability.Communication.Bluetooth.Core",
        throwexception: true
    ]
    public func getServices(callback: AsyncCallback<Array<GattService>>): Unit

    /**
     * Reads the characteristic of a BLE peripheral device.
     *
     * @param { BleCharacteristic } characteristic - Indicates the characteristic to read.
     * @param { AsyncCallback<BleCharacteristic> } callback - Callback invoked to return the characteristic value read.
     * @throws { BusinessException } 201 - Permission denied.
     * @throws { BusinessException } 801 - Capability not supported.
     * @throws { BusinessException } 2900001 - Service stopped.
     * @throws { BusinessException } 2900011 - The operation is busy. The last operation is not completed.
     * @throws { BusinessException } 2900099 - Operation failed.
     * @throws { BusinessException } 2901000 - Read forbidden.
     * @throws { BusinessException } 2901003 - The connection is not established.
     * @throws { BusinessException } 2901004 - The connection is congested.
     * @throws { BusinessException } 2901005 - The connection is not encrypted.
     * @throws { BusinessException } 2901006 - The connection is not authenticated.
     * @throws { BusinessException } 2901007 - The connection is not authorized.
     */
    @!APILevel[
        since: "22",
        permission: "ohos.permission.ACCESS_BLUETOOTH",
        syscap: "SystemCapability.Communication.Bluetooth.Core",
        throwexception: true
    ]
    public func readCharacteristicValue(
        characteristic: BleCharacteristic,
        callback: AsyncCallback<BleCharacteristic>
    ): Unit

    /**
     * Reads the descriptor of a BLE peripheral device.
     *
     * @param { BleDescriptor } descriptor - Indicates the descriptor to read.
     * @param { AsyncCallback<BleDescriptor> } callback - Callback invoked to return the descriptor read.
     * @throws { BusinessException } 201 - Permission denied.
     * @throws { BusinessException } 801 - Capability not supported.
     * @throws { BusinessException } 2900001 - Service stopped.
     * @throws { BusinessException } 2900011 - The operation is busy. The last operation is not complete.
     * @throws { BusinessException } 2900099 - Operation failed.
     * @throws { BusinessException } 2901000 - Read forbidden.
     * @throws { BusinessException } 2901003 - The connection is not established.
     * @throws { BusinessException } 2901004 - The connection is congested.
     * @throws { BusinessException } 2901005 - The connection is not encrypted.
     * @throws { BusinessException } 2901006 - The connection is not authenticated.
     * @throws { BusinessException } 2901007 - The connection is not authorized.
     */
    @!APILevel[
        since: "22",
        permission: "ohos.permission.ACCESS_BLUETOOTH",
        syscap: "SystemCapability.Communication.Bluetooth.Core",
        throwexception: true
    ]
    public func readDescriptorValue(descriptor: BleDescriptor, callback: AsyncCallback<BleDescriptor>): Unit

    /**
     * Writes the characteristic of a BLE peripheral device.
     *
     * @param { BleCharacteristic } characteristic - Indicates the characteristic to write.
     * @param { GattWriteType } writeType - Write type of the characteristic.
     * @param { AsyncCallback<Unit> } callback - Callback used to return the result.
     * @throws { BusinessException } 201 - Permission denied.
     * @throws { BusinessException } 801 - Capability not supported.
     * @throws { BusinessException } 2900001 - Service stopped.
     * @throws { BusinessException } 2900011 - The operation is busy. The last operation is not completed.
     * @throws { BusinessException } 2900099 - Operation failed.
     * @throws { BusinessException } 2901001 - Write forbidden.
     * @throws { BusinessException } 2901003 - The connection is not established.
     * @throws { BusinessException } 2901004 - The connection is congested.
     * @throws { BusinessException } 2901005 - The connection is not encrypted.
     * @throws { BusinessException } 2901006 - The connection is not authenticated.
     * @throws { BusinessException } 2901007 - The connection is not authorized.
     */
    @!APILevel[
        since: "22",
        permission: "ohos.permission.ACCESS_BLUETOOTH",
        syscap: "SystemCapability.Communication.Bluetooth.Core",
        throwexception: true
    ]
    public func writeCharacteristicValue(characteristic: BleCharacteristic, writeType: GattWriteType,
        callback: AsyncCallback<Unit>): Unit

    /**
     * Writes the descriptor of a BLE peripheral device.
     *
     * @param { BleDescriptor } descriptor - Indicates the descriptor to write.
     * @param { AsyncCallback<Unit> } callback - Callback used to return the result.
     * @throws { BusinessException } 201 - Permission denied.
     * @throws { BusinessException } 801 - Capability not supported.
     * @throws { BusinessException } 2900001 - Service stopped.
     * @throws { BusinessException } 2900011 - The operation is busy. The last operation is not complete.
     * @throws { BusinessException } 2900099 - Operation failed.
     * @throws { BusinessException } 2901001 - Write forbidden.
     * @throws { BusinessException } 2901003 - The connection is not established.
     * @throws { BusinessException } 2901004 - The connection is congested.
     * @throws { BusinessException } 2901005 - The connection is not encrypted.
     * @throws { BusinessException } 2901006 - The connection is not authenticated.
     * @throws { BusinessException } 2901007 - The connection is not authorized.
     */
    @!APILevel[
        since: "22",
        permission: "ohos.permission.ACCESS_BLUETOOTH",
        syscap: "SystemCapability.Communication.Bluetooth.Core",
        throwexception: true
    ]
    public func writeDescriptorValue(descriptor: BleDescriptor, callback: AsyncCallback<Unit>): Unit

    /**
     * Get the RSSI value of this BLE peripheral device.
     *
     * @param { AsyncCallback<Int32> } callback - Callback invoked to return the RSSI, in dBm.
     * @throws { BusinessException } 201 - Permission denied.
     * @throws { BusinessException } 801 - Capability not supported.
     * @throws { BusinessException } 2900011 - The operation is busy. The last operation is not completed.
     * @throws { BusinessException } 2900099 - Operation failed.
     * @throws { BusinessException } 2901003 - The connection is not established.
     */
    @!APILevel[
        since: "22",
        permission: "ohos.permission.ACCESS_BLUETOOTH",
        syscap: "SystemCapability.Communication.Bluetooth.Core",
        throwexception: true
    ]
    public func getRssiValue(callback: AsyncCallback<Int32>): Unit

    /**
     * Set the mtu size of a BLE peripheral device.
     *
     * @param { Int32 } mtu - The maximum transmission unit.
     * @throws { BusinessException } 201 - Permission denied.
     * @throws { BusinessException } 801 - Capability not supported.
     * @throws { BusinessException } 2900001 - Service stopped.
     * @throws { BusinessException } 2900099 - Operation failed.
     */
    @!APILevel[
        since: "22",
        permission: "ohos.permission.ACCESS_BLUETOOTH",
        syscap: "SystemCapability.Communication.Bluetooth.Core",
        throwexception: true
    ]
    public func setBleMtuSize(mtu: Int32): Unit

    /**
     * Enables or disables notification of a characteristic when value changed.
     *
     * @param { BleCharacteristic } characteristic - Indicates the characteristic to indicate.
     * @param { Bool } enable - Specifies whether to enable indication of the characteristic. The value true indicates
     * that notification is enabled, and the value false indicates that indication is disabled.
     * @param { AsyncCallback<Unit> } callback - the callback of setCharacteristicChangeNotification.
     * @throws { BusinessException } 201 - Permission denied.
     * @throws { BusinessException } 801 - Capability not supported.
     * @throws { BusinessException } 2900001 - Service stopped.
     * @throws { BusinessException } 2900011 - The operation is busy. The last operation is not completed.
     * @throws { BusinessException } 2900099 - Operation failed.
     * @throws { BusinessException } 2901003 - The connection is not established.
     */
    @!APILevel[
        since: "22",
        permission: "ohos.permission.ACCESS_BLUETOOTH",
        syscap: "SystemCapability.Communication.Bluetooth.Core",
        throwexception: true
    ]
    public func setCharacteristicChangeNotification(characteristic: BleCharacteristic, enable: Bool,
        callback: AsyncCallback<Unit>): Unit

    /**
     * Enables or disables indication of a characteristic when value changed.
     *
     * @param { BleCharacteristic } characteristic - Indicates the characteristic to indicate.
     * @param { Bool } enable - Specifies whether to enable indication of the characteristic. The value true indicates
     * that indication is enabled, and the value false indicates that indication is disabled.
     * @param { AsyncCallback<Unit> } callback - the callback of setCharacteristicChangeIndication.
     * @throws { BusinessException } 201 - Permission denied.
     * @throws { BusinessException } 801 - Capability not supported.
     * @throws { BusinessException } 2900001 - Service stopped.
     * @throws { BusinessException } 2900011 - The operation is busy. The last operation is not completed.
     * @throws { BusinessException } 2900099 - Operation failed.
     * @throws { BusinessException } 2901003 - The connection is not established.
     */
    @!APILevel[
        since: "22",
        permission: "ohos.permission.ACCESS_BLUETOOTH",
        syscap: "SystemCapability.Communication.Bluetooth.Core",
        throwexception: true
    ]
    public func setCharacteristicChangeIndication(characteristic: BleCharacteristic, enable: Bool,
        callback: AsyncCallback<Unit>): Unit

    /**
     * Subscribe characteristic value changed event.
     *
     * @param { BluetoothBleGattClientDeviceCallbackType } eventType - Type of the characteristic value changed event to listen for.
     * @param { Callback1Argument<BleCharacteristic> } callback - Callback used to listen for the characteristic value changed event.
     * @throws { BusinessException } 201 - Permission denied.
     * @throws { BusinessException } 801 - Capability not supported.
     */
    @!APILevel[
        since: "22",
        permission: "ohos.permission.ACCESS_BLUETOOTH",
        syscap: "SystemCapability.Communication.Bluetooth.Core",
        throwexception: true
    ]
    public func on(eventType: BluetoothBleGattClientDeviceCallbackType, callback: Callback1Argument<BleCharacteristic>): Unit

    /**
     * Subscribe client connection state changed event.
     *
     * @param { BluetoothBleGattClientDeviceCallbackType } eventType - Type of the connection state changed event to listen for.
     * @param { Callback1Argument<BleConnectionChangeState> } callback - Callback used to listen for the connection state changed event.
     */
    @!APILevel[
        since: "22",
        permission: "ohos.permission.ACCESS_BLUETOOTH",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public func on(
        eventType: BluetoothBleGattClientDeviceCallbackType,
        callback: Callback1Argument<BleConnectionChangeState>
    ): Unit

    /**
     * Subscribe mtu changed event.
     *
     * @param { BluetoothBleGattClientDeviceCallbackType } eventType - Type of the mtu changed event to listen for.
     * @param { Callback1Argument<Int32> } callback - Callback used to listen for the mtu changed event.
     */
    @!APILevel[
        since: "22",
        permission: "ohos.permission.ACCESS_BLUETOOTH",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public func on(eventType: BluetoothBleGattClientDeviceCallbackType, callback: Callback1Argument<Int32>): Unit

    /**
     * Unsubscribe gatt client device callback event.
     *
     * @param { BluetoothBleGattClientDeviceCallbackType } eventType - Type of unsubscribe event.
     * @param { ?CallbackObject } [callback] - Callback used to listen.
     */
    @!APILevel[
        since: "22",
        permission: "ohos.permission.ACCESS_BLUETOOTH",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public func off(eventType: BluetoothBleGattClientDeviceCallbackType, callback!: ?CallbackObject = None): Unit
}

/**
 * Manages GATT server. Before calling an Gatt server method, you must use createGattServer to create an GattServer
 * instance.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Communication.Bluetooth.Core"
]
public class GattServer {
    /**
     * Adds a specified service to be hosted.
     * The added service and its characteristics are provided by the local device.
     *
     * @param { GattService } service - Indicates the service to add.
     * @throws { BusinessException } 201 - Permission denied.
     * @throws { BusinessException } 801 - Capability not supported.
     * @throws { BusinessException } 2900001 - Service stopped.
     * @throws { BusinessException } 2900003 - Bluetooth disabled.
     * @throws { BusinessException } 2900099 - Operation failed.
     */
    @!APILevel[
        since: "22",
        permission: "ohos.permission.ACCESS_BLUETOOTH",
        syscap: "SystemCapability.Communication.Bluetooth.Core",
        throwexception: true
    ]
    public func addService(service: GattService): Unit

    /**
     * Removes a specified service from the list of GATT services provided by this device.
     *
     * @param { String } serviceUUID - Indicates the UUID of the service to remove.
     * @throws { BusinessException} 201 - Permission denied.
     * @throws { BusinessException} 801 - Capability not supported.
     * @throws { BusinessException} 2900001 - Service stopped.
     * @throws { BusinessException} 2900003 - Bluetooth disabled.
     * @throws { BusinessException} 2900004 - Profile not supported.
     * @throws { BusinessException} 2900099 - Operation failed.
     */
    @!APILevel[
        since: "22",
        permission: "ohos.permission.ACCESS_BLUETOOTH",
        syscap: "SystemCapability.Communication.Bluetooth.Core",
        throwexception: true
    ]
    public func removeService(serviceUUID: String): Unit

    /**
     * Closes this GattServer object and unregisters its callbacks.
     *
     * @throws { BusinessException } 201 - Permission denied.
     * @throws { BusinessException } 801 - Capability not supported.
     * @throws { BusinessException } 2900001 - Service stopped.
     * @throws { BusinessException } 2900003 - Bluetooth disabled.
     * @throws { BusinessException } 2900099 - Operation failed.
     */
    @!APILevel[
        since: "22",
        permission: "ohos.permission.ACCESS_BLUETOOTH",
        syscap: "SystemCapability.Communication.Bluetooth.Core",
        throwexception: true
    ]
    public func close(): Unit

    /**
     * Sends a notification of a change in a specified local characteristic with a asynchronous callback.
     * This method should be called for every BLE peripheral device that has requested notifications.
     *
     * @param { String } deviceId - Indicates device ID. For example, "11:22:33:AA:BB:FF".
     * @param { NotifyCharacteristic } notifyCharacteristic - Indicates the local characteristic that has changed.
     * @throws { BusinessException } 201 - Permission denied.
     * @throws { BusinessException } 801 - Capability not supported.
     * @throws { BusinessException } 2900001 - Service stopped.
     * @throws { BusinessException } 2900003 - Bluetooth disabled.
     * @throws { BusinessException } 2900099 - Operation failed.
     */
    @!APILevel[
        since: "22",
        permission: "ohos.permission.ACCESS_BLUETOOTH",
        syscap: "SystemCapability.Communication.Bluetooth.Core",
        throwexception: true,
        workerthread: true
    ]
    public func notifyCharacteristicChanged(deviceId: String, notifyCharacteristic: NotifyCharacteristic): Unit

    /**
     * Sends a response to a specified read or write request to a given BLE peripheral device.
     *
     * @param { ServerResponse } serverResponse - Indicates the response parameters ServerResponse.
     * @throws { BusinessException } 201 - Permission denied.
     * @throws { BusinessException } 801 - Capability not supported.
     * @throws { BusinessException } 2900001 - Service stopped.
     * @throws { BusinessException } 2900003 - Bluetooth disabled.
     * @throws { BusinessException } 2900099 - Operation failed.
     */
    @!APILevel[
        since: "22",
        permission: "ohos.permission.ACCESS_BLUETOOTH",
        syscap: "SystemCapability.Communication.Bluetooth.Core",
        throwexception: true
    ]
    public func sendResponse(serverResponse: ServerResponse): Unit

    /**
     * Subscribe characteristic read event.
     *
     * @param { BluetoothBleGattServerCallbackType } eventType - Type of the characteristic read event to listen for.
     * @param { Callback1Argument<CharacteristicReadRequest> } callback - Callback used to listen for the characteristic read event.
     * @throws { BusinessException } 201 - Permission denied.
     * @throws { BusinessException } 801 - Capability not supported.
     */
    @!APILevel[
        since: "22",
        permission: "ohos.permission.ACCESS_BLUETOOTH",
        syscap: "SystemCapability.Communication.Bluetooth.Core",
        throwexception: true
    ]
    public func on(eventType: BluetoothBleGattServerCallbackType, callback: Callback1Argument<CharacteristicReadRequest>): Unit

    /**
     * Subscribe characteristic write event.
     *
     * @param { BluetoothBleGattServerCallbackType } eventType - Type of the characteristic write event to listen for.
     * @param { Callback1Argument<CharacteristicWriteRequest> } callback - Callback used to listen for the characteristic write event.
     * @throws { BusinessException } 201 - Permission denied.
     * @throws { BusinessException } 801 - Capability not supported.
     */
    @!APILevel[
        since: "22",
        permission: "ohos.permission.ACCESS_BLUETOOTH",
        syscap: "SystemCapability.Communication.Bluetooth.Core",
        throwexception: true
    ]
    public func on(eventType: BluetoothBleGattServerCallbackType,
        callback: Callback1Argument<CharacteristicWriteRequest>): Unit

    /**
     * Subscribe descriptor read event.
     *
     * @param { BluetoothBleGattServerCallbackType } eventType - Type of the descriptor read event to listen for.
     * @param { Callback1Argument<DescriptorReadRequest> } callback - Callback used to listen for the descriptor read event.
     * @throws { BusinessException } 201 - Permission denied.
     * @throws { BusinessException } 801 - Capability not supported.
     */
    @!APILevel[
        since: "22",
        permission: "ohos.permission.ACCESS_BLUETOOTH",
        syscap: "SystemCapability.Communication.Bluetooth.Core",
        throwexception: true
    ]
    public func on(eventType: BluetoothBleGattServerCallbackType, callback: Callback1Argument<DescriptorReadRequest>): Unit

    /**
     * Subscribe descriptor write event.
     *
     * @param { BluetoothBleGattServerCallbackType } eventType - Type of the descriptor write event to listen for.
     * @param { Callback1Argument<DescriptorWriteRequest> } callback - Callback used to listen for the descriptor write event.
     * @throws { BusinessException } 201 - Permission denied.
     * @throws { BusinessException } 801 - Capability not supported.
     */
    @!APILevel[
        since: "22",
        permission: "ohos.permission.ACCESS_BLUETOOTH",
        syscap: "SystemCapability.Communication.Bluetooth.Core",
        throwexception: true
    ]
    public func on(eventType: BluetoothBleGattServerCallbackType, callback: Callback1Argument<DescriptorWriteRequest>): Unit

    /**
     * Subscribe server connection state changed event.
     *
     * @param { BluetoothBleGattServerCallbackType } eventType - Type of the connection state changed event to listen for.
     * @param { Callback1Argument<BleConnectionChangeState> } callback - Callback used to listen for the connection state changed event.
     * @throws { BusinessException } 201 - Permission denied.
     * @throws { BusinessException } 801 - Capability not supported.
     */
    @!APILevel[
        since: "22",
        permission: "ohos.permission.ACCESS_BLUETOOTH",
        syscap: "SystemCapability.Communication.Bluetooth.Core",
        throwexception: true
    ]
    public func on(eventType: BluetoothBleGattServerCallbackType, callback: Callback1Argument<BleConnectionChangeState>): Unit

    /**
     * Subscribe mtu changed event.
     *
     * @param { BluetoothBleGattServerCallbackType } eventType - Type of the mtu changed event to listen for.
     * @param { Callback1Argument<Int32> } callback - Callback used to listen for the mtu changed event.
     */
    @!APILevel[
        since: "22",
        permission: "ohos.permission.ACCESS_BLUETOOTH",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public func on(eventType: BluetoothBleGattServerCallbackType, callback: Callback1Argument<Int32>): Unit

    /**
     * Unsubscribe gatt server callback event.
     *
     * @param { BluetoothBleGattServerCallbackType } eventType - Type of unsubscribe event.
     * @param { ?CallbackObject } [callback] - Callback used to listen.
     */
    @!APILevel[
        since: "22",
        permission: "ohos.permission.ACCESS_BLUETOOTH",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public func off(eventType: BluetoothBleGattServerCallbackType, callback!: ?CallbackObject = None): Unit
}

/**
 * Describes the Gatt service.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Communication.Bluetooth.Core"
]
public class GattService {
    /**
     * The UUID of a GattService instance.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var serviceUUID: String

    /**
     * Indicates whether the GattService instance is primary or secondary.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var isPrimary: Bool

    /**
     * The BleCharacteristic list belongs to this GattService instance.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var characteristics: Array<BleCharacteristic>

    /**
     * The list of GATT services contained in the service.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var includeServices: Array<GattService>

    /**
     * GattService constructor.
     *
     * @param { String } serviceUUID - The UUID of a GattService instance.
     * @param { Bool } isPrimary - Indicates whether the GattService instance is primary or secondary.
     * @param { Array<BleCharacteristic> } characteristics - The BleCharacteristic list belongs to this GattService instance
     * @param { Array<GattService> } includeServices - The list of GATT services contained in the service.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public init(
        serviceUUID: String,
        isPrimary: Bool,
        characteristics: Array<BleCharacteristic>,
        includeServices!: Array<GattService> = []
    )
}

/**
 * Describes the Gatt characteristic.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Communication.Bluetooth.Core"
]
public class BleCharacteristic {
    /**
     * The UUID of the GattService instance to which the characteristic belongs.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var serviceUUID: String

    /**
     * The UUID of a BleCharacteristic instance.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var characteristicUUID: String

    /**
     * The value of a BleCharacteristic instance.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var characteristicValue: Array<Byte>

    /**
     * The list of BleDescriptor contained in the characteristic.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var descriptors: Array<BleDescriptor>

    /**
     * The properties of a BleCharacteristic instance.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var properties: GattProperties

    /**
     * BleCharacteristic constructor.
     *
     * @param { String } serviceUUID - The UUID of the GattService instance to which the characteristic belongs
     * @param { String } characteristicUUID - The UUID of a BleCharacteristic instance
     * @param { Array<Byte> } characteristicValue - The value of a BleCharacteristic instance
     * @param { Array<BleDescriptor> } descriptors - The list of BleDescriptor contained in the characteristic
     * @param { GattProperties } properties - The properties of a BleCharacteristic instance
     * @param { GattPermissions } permissions - The permissions of a BleCharacteristic instance.
     * The default value is Readable and Writable.
     * @param { UInt32 } characteristicValueHandle - The characteristic value handle of a BleCharacteristic instance
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public init(
        serviceUUID: String,
        characteristicUUID: String,
        characteristicValue: Array<Byte>,
        descriptors: Array<BleDescriptor>,
        properties!: GattProperties = GattProperties(),
        permissions!: GattPermissions = GattPermissions(),
        characteristicValueHandle!: UInt32 = 0
    )
}

/**
 * Describes the Gatt descriptor.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Communication.Bluetooth.Core"
]
public class BleDescriptor {
    /**
     * The UUID of the GattService instance to which the descriptor belongs.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var serviceUUID: String

    /**
     * The UUID of the BleCharacteristic instance to which the descriptor belongs.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var characteristicUUID: String

    /**
     * The UUID of the BleDescriptor instance.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var descriptorUUID: String

    /**
     * The value of the BleDescriptor instance.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var descriptorValue: Array<Byte>

    /**
     * BleDescriptor constructor.
     *
     * @param { String } serviceUUID - The UUID of the GattService instance to which the descriptor belongs
     * @param { String } characteristicUUID - The UUID of the GattService instance to which the descriptor belongs
     * @param { String } descriptorUUID - The UUID of the BleDescriptor instance
     * @param { Array<Byte> } descriptorValue - The value of the BleDescriptor instance
     * @param { UInt32 } descriptorHandle - The descriptor handle of a BleDescriptor instance
     * @param { GattPermissions } permissions - The permissions of a BleDescriptor instance. The default value is Readable and Writable.
     * The default value is Readable and Writable.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public init(
        serviceUUID: String,
        characteristicUUID: String,
        descriptorUUID: String,
        descriptorValue: Array<Byte>,
        descriptorHandle!: UInt32 = 0,
        permissions!: GattPermissions = GattPermissions()
    )
}

/**
 * Describes the properties of a gatt characteristic.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Communication.Bluetooth.Core"
]
public class GattProperties {
    /**
     * Support write property of the characteristic.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var write: Bool

    /**
     * Support write no response property of the characteristic.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var writeNoResponse: Bool

    /**
     * Support read property of the characteristic.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var read: Bool

    /**
     * Support notify property of the characteristic.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var notify: Bool

    /**
     * Support indicate property of the characteristic.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var indicate: Bool

    /**
     * GattProperties constructor.
     *
     * @param { Bool } write - Support write property of the characteristic.
     * @param { Bool } writeNoResponse - Support write no response property of the characteristic.
     * @param { Bool } read - Support read property of the characteristic.
     * @param { Bool } notify - Support notify property of the characteristic.
     * @param { Bool } indicate - Support indicate property of the characteristic.
     * @param { Bool } broadcast - Support broadcast property of the characteristic.
     * @param { Bool } authenticatedSignedWrite - Support authenticated signed write property of the characteristic.
     * @param { Bool } extendedProperties - Support extended properties property of the characteristic.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public init(
        write!: Bool = true,
        writeNoResponse!: Bool = true,
        read!: Bool = true,
        notify!: Bool = false,
        indicate!: Bool = false,
        broadcast!: Bool = false,
        authenticatedSignedWrite!: Bool = false,
        extendedProperties!: Bool = false
    )
}

/**
 * Describes the value of the indication or notification sent by the Gatt server.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Communication.Bluetooth.Core"
]
public class NotifyCharacteristic {
    /**
     * The UUID of the GattService instance to which the characteristic belongs.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var serviceUUID: String

    /**
     * The UUID of a NotifyCharacteristic instance.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var characteristicUUID: String

    /**
     * The value of a NotifyCharacteristic instance.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var characteristicValue: Array<Byte>

    /**
     * Specifies whether to request confirmation from the BLE peripheral device (indication) or
     * send a notification. Value true indicates the former and false indicates the latter.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var confirm: Bool

    /**
     * NotifyCharacteristic constructor.
     *
     * @param { String } serviceUUID - The UUID of the GattService instance to which the characteristic belongs
     * @param { String } characteristicUUID - The UUID of a NotifyCharacteristic instance
     * @param { Array<Byte> } characteristicValue - The value of a NotifyCharacteristic instance
     * @param { Bool } confirm - Specifies whether to request confirmation from the BLE peripheral device (indication) or
     * send a notification. Value true indicates the former and false indicates the latter.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public init(
        serviceUUID: String,
        characteristicUUID: String,
        characteristicValue: Array<Byte>,
        confirm: Bool
    )
}

/**
 * Describes the parameters of a response send by the server to a specified read or write request.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Communication.Bluetooth.Core"
]
public class ServerResponse {
    /**
     * Indicates the address of the client to which to send the response.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var deviceId: String

    /**
     * The Id of the write request.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var transId: Int32

    /**
     * Indicates the status of the read or write request, set this parameter to '0' in normal cases.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var status: Int32

    /**
     * Indicates the byte offset of the start position for reading or writing operation.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var offset: Int32

    /**
     * Indicates the value to be sent.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var value: Array<Byte>

    /**
     * ServerResponse constructor.
     *
     * @param { String } deviceId - Indicates the address of the client to which to send the response
     * @param { Int32 } transId  - The Id of the write request
     * @param { Int32 } status - Indicates the status of the read or write request, set this parameter to '0' in normal cases
     * @param { Int32 } offset - Indicates the byte offset of the start position for reading or writing operation
     * @param { Array<Byte> } value - Indicates the value to be sent
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public init(
        deviceId: String,
        transId: Int32,
        status: Int32,
        offset: Int32,
        value: Array<Byte>
    )
}

/**
 * The enum of gatt characteristic write type
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Communication.Bluetooth.Core"
]
public enum GattWriteType {
    
    /**
     * Write characteristic with response.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    Write
    | 
    /**
     * Write characteristic without response.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    WriteNoResponse
    | ...
}


extend GattWriteType <: ToString {
    /**
     * Converts the GattWriteType to its string representation.
     * @returns { String } A string representation of the GattWriteType.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public func toString(): String
}


extend GattWriteType <: Equatable<GattWriteType> {
    /**
     * Compares this GattWriteType with another for equality.
     * @param { GattWriteType } other - The GattWriteType to compare with.
     * @returns { Bool } True if both modes are equal, false otherwise.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public operator func ==(other: GattWriteType): Bool
    
    /**
     * Compares this GattWriteType with another for inequality.
     * @param { GattWriteType } other - The GattWriteType to compare with.
     * @returns { Bool } True if both modes are not equal, false otherwise.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public operator func !=(other: GattWriteType): Bool
}

/**
 * Describes the parameters of the Gatt client's characteristic read request.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Communication.Bluetooth.Core"
]
public class CharacteristicReadRequest {
    /**
     * Indicates the address of the client that initiates the read request.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var deviceId: String

    /**
     * The Id of the read request.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var transId: Int32

    /**
     * Indicates the byte offset of the start position for reading characteristic value
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var offset: Int32

    /**
     * The UUID of a CharacteristicReadRequest instance.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var characteristicUUID: String

    /**
     * The UUID of the service to which the characteristic belongs.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var serviceUUID: String
}

/**
 * Describes the parameters of the of the Gatt client's characteristic write request.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Communication.Bluetooth.Core"
]
public class CharacteristicWriteRequest {
    /**
     * Indicates the address of the client that initiates the write request.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var deviceId: String

    /**
     * The Id of the write request.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var transId: Int32

    /**
     * Indicates the byte offset of the start position for writing characteristic value.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var offset: Int32

    /**
     * Whether this request should be pending for later operation.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var isPrepared: Bool

    /**
     * Whether the remote client need a response.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var needRsp: Bool

    /**
     * Indicates the value to be written.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var value: Array<Byte>

    /**
     * The UUID of a CharacteristicWriteRequest instance.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var characteristicUUID: String

    /**
     * The UUID of the service to which the characteristic belongs.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var serviceUUID: String
}

/**
 * Describes the parameters of the Gatt client's descriptor read request.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Communication.Bluetooth.Core"
]
public class DescriptorReadRequest {
    /**
     * Indicates the address of the client that initiates the read request.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var deviceId: String

    /**
     * The Id of the read request.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var transId: Int32

    /**
     * Indicates the byte offset of the start position for reading characteristic value.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var offset: Int32

    /**
     * The UUID of a DescriptorReadRequest instance.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var descriptorUUID: String

    /**
     * The UUID of the characteristic to which the descriptor belongs.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var characteristicUUID: String

    /**
     * The UUID of the service to which the descriptor belongs.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var serviceUUID: String
}

/**
 * Describes the parameters of the Gatt client's characteristic write request.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Communication.Bluetooth.Core"
]
public class DescriptorWriteRequest {
    /**
     * Indicates the address of the client that initiates the write request.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var deviceId: String

    /**
     * The Id of the write request.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var transId: Int32

    /**
     * Indicates the byte offset of the start position for writing characteristic value.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var offset: Int32

    /**
     * Whether this request should be pending for later operation.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var isPrepared: Bool

    /**
     * Whether the remote client need a response.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var needRsp: Bool

    /**
     * Indicates the value to be written.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var value: Array<Byte>

    /**
     * The UUID of a DescriptorWriteRequest instance.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var descriptorUUID: String

    /**
     * The UUID of the characteristic to which the descriptor belongs.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var characteristicUUID: String

    /**
     * The UUID of the service to which the descriptor belongs.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var serviceUUID: String
}

/**
 * Describes the Gatt profile connection state.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Communication.Bluetooth.Core"
]
public class BleConnectionChangeState {
    /**
     * Indicates the peer device address.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var deviceId: String

    /**
     * Connection state of the Gatt profile.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var state: ProfileConnectionState
}

/**
 * Bluetooth Ble GattServer CallbackType.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Communication.Bluetooth.Core"
]
public enum BluetoothBleGattServerCallbackType {
    /**
     * Characteristic read request.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    CharacteristicRead
    | 
    /**
     * Characteristic write request.
     *
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    CharacteristicWrite
    | 
    
    /**
     * Descriptor read request.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    DescriptorRead
    | 
    
    /**
     * Descriptor write request.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    DescriptorWrite
    | 
    
    /**
     * Connection state changed.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    ConnectionStateChange
    | 
    /**
     * Server ble mtu changed.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    ServerBleMtuChange
    | ...
}


extend BluetoothBleGattServerCallbackType <: ToString {
    /**
     * Converts the BluetoothBleGattServerCallbackType to its string representation.
     * @returns { String } A string representation of the BluetoothBleGattServerCallbackType.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public func toString(): String
}


extend BluetoothBleGattServerCallbackType <: Hashable {
    /**
     * Returns a hash code value for this BluetoothBleGattServerCallbackType.
     * @returns { Int64 } A hash code value for this BluetoothBleGattServerCallbackType.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public func hashCode(): Int64
}


extend BluetoothBleGattServerCallbackType <: Equatable<BluetoothBleGattServerCallbackType> {
    /**
     * Compares this BluetoothBleGattServerCallbackType with another for equality.
     * @param { BluetoothBleGattServerCallbackType } other - The BluetoothBleGattServerCallbackType to compare with.
     * @returns { Bool } True if both modes are equal, false otherwise.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public operator func ==(other: BluetoothBleGattServerCallbackType): Bool
    
    /**
     * Compares this BluetoothBleGattServerCallbackType with another for inequality.
     * @param { BluetoothBleGattServerCallbackType } other - The BluetoothBleGattServerCallbackType to compare with.
     * @returns { Bool } True if both modes are not equal, false otherwise.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public operator func !=(other: BluetoothBleGattServerCallbackType): Bool
}

/**
 * Bluetooth Ble GattClientDevice CallbackType.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Communication.Bluetooth.Core"
]
public enum BluetoothBleGattClientDeviceCallbackType {
    /**
     * BLE characteristic changed.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    BleCharacteristicChange
    | 
    /**
     * BLE connection state changed.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    BleConnectionStateChange
    | 
    /**
     * Client ble mtu changed.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    ClientBleMtuChange
    | ...
}


extend BluetoothBleGattClientDeviceCallbackType <: ToString {
    /**
     * Converts the BluetoothBleGattClientDeviceCallbackType to its string representation.
     * @returns { String } A string representation of the BluetoothBleGattClientDeviceCallbackType.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public func toString(): String
}


extend BluetoothBleGattClientDeviceCallbackType <: Hashable {
    /**
     * Returns a hash code value for this BluetoothBleGattClientDeviceCallbackType.
     * @returns { Int64 } A hash code value for this BluetoothBleGattClientDeviceCallbackType.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public func hashCode(): Int64
}


extend BluetoothBleGattClientDeviceCallbackType <: Equatable<BluetoothBleGattClientDeviceCallbackType> {
    /**
     * Compares this BluetoothBleGattClientDeviceCallbackType with another for equality.
     * @param { BluetoothBleGattClientDeviceCallbackType } other - The BluetoothBleGattClientDeviceCallbackType to compare with.
     * @returns { Bool } True if both modes are equal, false otherwise.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public operator func ==(other: BluetoothBleGattClientDeviceCallbackType): Bool
    
    /**
     * Compares this BluetoothBleGattClientDeviceCallbackType with another for inequality.
     * @param { BluetoothBleGattClientDeviceCallbackType } other - The BluetoothBleGattClientDeviceCallbackType to compare with.
     * @returns { Bool } True if both modes are not equal, false otherwise.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public operator func !=(other: BluetoothBleGattClientDeviceCallbackType): Bool
}

/**
 * Describes the permission of a att attribute item.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Communication.Bluetooth.Core"
]
public class GattPermissions {
    /**
     * The attribute field has the read permission.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var read: Bool

    /**
     * The attribute field has the encrypted read permission.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var readEncrypted: Bool

    /**
     * The attribute field has the read permission for encryption authentication.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var readEncryptedMitm: Bool

    /**
     * The attribute field has the write permission.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var write: Bool

    /**
     * The attribute field has the encrypted write permission.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var writeEncrypted: Bool

    /**
     * The attribute field has the write permission for encryption authentication.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var writeEncryptedMitm: Bool

    /**
     * The attribute field has the signed write permission.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var writeSigned: Bool

    /**
     * The attribute field has the write permission for signature authentication.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var writeSignedMitm: Bool

    /**
     * GattPermissions constructor.
     *
     * @param { Bool } read -  The attribute field has the read permission.
     * @param { Bool } readEncrypted - The attribute field has the encrypted read permission.
     * @param { Bool } readEncryptedMitm - The attribute field has the read permission for encryption authentication.
     * @param { Bool } write - The attribute field has the write permission.
     * @param { Bool } writeEncrypted - The attribute field has the encrypted write permission.
     * @param { Bool } writeEncryptedMitm - The attribute field has the write permission for encryption authentication.
     * @param { Bool } writeSigned - The attribute field has the signed write permission.
     * @param { Bool } writeSignedMitm - The attribute field has the write permission for signature authentication.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public init (
        read!: Bool = true,
        readEncrypted!: Bool = false,
        readEncryptedMitm!: Bool = false,
        write!: Bool = true,
        writeEncrypted!: Bool = false,
        writeEncryptedMitm!: Bool = false,
        writeSigned!: Bool = false,
        writeSignedMitm!: Bool = false
    )
}


extend GattPermissions <: Equatable<GattPermissions> {
    /**
     * Compares this GattPermissions with another for equality.
     * @param { GattPermissions } other - The GattPermissions to compare with.
     * @returns { Bool } True if both modes are equal, false otherwise.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public operator func ==(other: GattPermissions): Bool
    
    /**
     * Compares this GattPermissions with another for inequality.
     * @param { GattPermissions } other - The GattPermissions to compare with.
     * @returns { Bool } True if both modes are not equal, false otherwise.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public operator func !=(other: GattPermissions): Bool
}


extend GattPermissions {}

/**
 * Describes the criteria for filtering scanning results can be set.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Communication.Bluetooth.Core"
]
public class ScanFilter {
    /**
     * The address of a BLE peripheral device.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var deviceId: String

    /**
     * The name of a BLE peripheral device.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var name: String

    /**
     * The service UUID of a BLE peripheral device.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var serviceUUID: String

    /**
     * Service UUID mask.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var serviceUUIDMask: String

    /**
     * Service solicitation UUID.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var serviceSolicitationUUID: String

    /**
     * Service solicitation UUID mask.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var serviceSolicitationUUIDMask: String

    /**
     * Service data.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var serviceData: Array<Byte>

    /**
     * Service data mask.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var serviceDataMask: Array<Byte>

    /**
     * Manufacture id.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var manufactureId: UInt16

    /**
     * Manufacture data.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var manufactureData: Array<Byte>

    /**
     * Manufacture data mask.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var manufactureDataMask: Array<Byte>

    /**
     * ScanFilter constructor.
     *
     * @param { String } deviceId - The address of a BLE peripheral device.
     * @param { String } name - The name of a BLE peripheral device.
     * @param { String } serviceUUID - The service UUID of a BLE peripheral device.
     * @param { String } serviceUUIDMask - Service UUID mask.
     * @param { String } serviceSolicitationUUID - Service solicitation UUID.
     * @param { String } serviceSolicitationUUIDMask - Service solicitation UUID mask.
     * @param { Array<Byte> } serviceData - Service data.
     * @param { Array<Byte> } serviceDataMask - Service data mask.
     * @param { UInt16 } manufactureId - Manufacture id.
     * @param { Array<Byte> } manufactureData - Manufacture data.
     * @param { Array<Byte> } manufactureDataMask - Manufacture data mask.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public init(
        deviceId!: String = "",
        name!: String = "",
        serviceUUID!: String = "",
        serviceUUIDMask!: String = "",
        serviceSolicitationUUID!: String = "",
        serviceSolicitationUUIDMask!: String = "",
        serviceData!: Array<Byte> = [],
        serviceDataMask!: Array<Byte> = [],
        manufactureId!: UInt16 = 0,
        manufactureData!: Array<Byte> = [],
        manufactureDataMask!: Array<Byte> = []
    )
}

/**
 * Describes the parameters for scan.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Communication.Bluetooth.Core"
]
public class ScanOptions {
    /**
     * Time of delay for reporting the scan result.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var interval: Int32

    /**
     * Bluetooth LE scan mode.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var dutyMode: ScanDuty

    /**
     * Match mode for Bluetooth LE scan filters hardware match.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var matchMode: MatchMode

    /**
     * Physical Layer used during scan.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var phyType: PhyType

    /**
     * ScanOptions constructor.
     *
     * @param { Int32 } interval - Time of delay for reporting the scan result.
     * @param { ScanDuty } dutyMode - Bluetooth LE scan mode.
     * @param { MatchMode } matchMode - Match mode for Bluetooth LE scan filters hardware match.
     * @param { PhyType } phyType - Physical Layer used during scan.
     * @param { ScanReportMode } reportMode - Report mode used during scan.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public init(
        interval!: Int32 = 0,
        dutyMode!: ScanDuty = ScanModeLowPower,
        matchMode!: MatchMode = MatchModeAggressive,
        phyType!: PhyType = PhyLe1M,
        reportMode!: ScanReportMode = Normal
    )
}

/**
 * Describes the settings for BLE advertising.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Communication.Bluetooth.Core"
]
public class AdvertiseSetting {
    /**
     * Minimum slot value for the advertising interval, which is 32 (20 ms)
     * Maximum slot value for the advertising interval, which is 16777215 (10485.759375s)
     * Default slot value for the advertising interval, which is 1600 (1s)
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var interval: UInt16

    /**
     * Minimum transmission power level for advertising, which is -127
     * Maximum transmission power level for advertising, which is 1
     * Default transmission power level for advertising, which is -7
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var txPower: Int8

    /**
     * Indicates whether the BLE is connectable, default is true
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var connectable: Bool

    /**
     * AdvertiseSetting constructor.
     *
     * @param { UInt16 } [interval] - Minimum slot value for the advertising interval, which is 32 (20 ms)
     * Maximum slot value for the advertising interval, which is 16777215 (10485.759375s)
     * Default slot value for the advertising interval, which is 1600 (1s)
     * @param { Int8 } [txPower] - Minimum transmission power level for advertising, which is -127
     * Maximum transmission power level for advertising, which is 1
     * Default transmission power level for advertising, which is -7
     * @param { Bool } connectable - Indicates whether the BLE is connectable, default is true
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public init(interval!: UInt16 = BLE_ADV_DEFAULT_INTERVAL, txPower!: Int8 = BLE_ADV_TX_POWER_MEDIUM_VALUE,
        connectable!: Bool = true)
}

/**
 * Describes the advertising data.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Communication.Bluetooth.Core"
]
public class AdvertiseData {
    /**
     * The specified service UUID list to this advertisement
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var serviceUUIDs: Array<String>

    /**
     * The specified manufacturer data list to this advertisement
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var manufactureData: Array<ManufactureData>

    /**
     * The specified service data list to this advertisement
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var serviceData: Array<ServiceData>

    /**
     * Indicates whether the device name will be included in the advertisement packet.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var includeDeviceName: Bool

    /**
     * AdvertiseData constructor.
     *
     * @param { Array<String> } serviceUUIDs - The specified service UUID list to this advertisement.
     * @param { Array<ManufactureData> } manufactureData - The specified manufacturer data list to this advertisement.
     * @param { Array<ServiceData> } serviceData - The specified service data list to this advertisement.
     * @param { Bool } includeDeviceName - Indicates whether the device name will be included in the advertisement packet.
     * @param { Bool } includeTxPower - Indicates whether the tx power will be included in the advertisement packet.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public init(
        serviceUUIDs: Array<String>,
        manufactureData: Array<ManufactureData>,
        serviceData: Array<ServiceData>,
        includeDeviceName!: Bool = false,
        includeTxPower!: Bool = false
    )
}

/**
 * Describes the manufacturer data.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Communication.Bluetooth.Core"
]
public class ManufactureData {
    /**
     * Indicates the manufacturer ID assigned by Bluetooth SIG.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var manufactureId: UInt16

    /**
     * Indicates the manufacturer data to add.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var manufactureValue: Array<Byte>

    /**
     * ManufactureData constructor.
     *
     * @param { UInt16 } manufactureId - Indicates the manufacturer ID assigned by Bluetooth SIG
     * @param { Array<Byte> } manufactureValue - Indicates the manufacturer data to add
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public init(
        manufactureId: UInt16,
        manufactureValue: Array<Byte>
    )
}

/**
 * Describes the service data.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Communication.Bluetooth.Core"
]
public class ServiceData {
    /**
     * Indicates the UUID of the service data to add.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var serviceUUID: String

    /**
     * Indicates the service data to add.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var serviceValue: Array<Byte>

    /**
     * ServiceData constructor.
     *
     * @param { String } serviceUUID - Indicates the UUID of the service data to add
     * @param { Array<Byte> } serviceValue - Indicates the service data to add
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public init(
        serviceUUID: String,
        serviceValue: Array<Byte>
    )
}

/**
 * Describes the advertising parameters.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Communication.Bluetooth.Core"
]
public class AdvertisingParams {
    /**
     * Indicates the advertising settings.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var advertisingSettings: AdvertiseSetting

    /**
     * Indicates the advertising data.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var advertisingData: AdvertiseData

    /**
     * Indicates the advertising response.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var advertisingResponse: AdvertiseData

    /**
     * Indicates the duration for advertising continuously.
     * The duration, in 10ms unit. Valid range is from 1 (10ms) to 65535 (655,350 ms).
     * If this parameter is not specified or is set to 0, advertisement is continuously sent.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var duration: UInt16

    /**
     * AdvertisingParams constructor.
     *
     * @param { AdvertiseSetting } advertisingSettings - Indicates the advertising settings.
     * @param { AdvertiseData } advertisingData - Indicates the advertising data.
     * @param { AdvertiseData } advertisingResponse - Indicates the advertising response.
     * @param { UInt16 } duration - Indicates the duration for advertising continuously.
     * The duration, in 10ms unit. Valid range is from 1 (10ms) to 65535 (655,350 ms).
     * If this parameter is not specified or is set to 0, advertisement is continuously sent.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public init(
        advertisingSettings: AdvertiseSetting,
        advertisingData: AdvertiseData,
        advertisingResponse!: AdvertiseData = AdvertiseData([], [], []),
        duration!: UInt16 = 0
    )
}

/**
 * Advertising state change information.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Communication.Bluetooth.Core"
]
public class AdvertisingStateChangeInfo {
    /**
     * Indicates the ID of current advertising.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var advertisingId: Int32

    /**
     * Indicates the advertising state.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var state: AdvertisingState
}

/**
 * Describes the contents of the scan results.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Communication.Bluetooth.Core"
]
public class ScanResult {
    /**
     * Address of the scanned device
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var deviceId: String

    /**
     * RSSI of the remote device
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var rssi: Int32

    /**
     * The raw data of broadcast packet
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var data: Array<Byte>

    /**
     * The local name of the BLE device
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var deviceName: String

    /**
     * Connectable of the remote device
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public var connectable: Bool
}

/**
 * The enum of scan duty.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Communication.Bluetooth.Core"
]
public enum ScanDuty {
    /**
     * low power mode
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    ScanModeLowPower
    | 
    
    /**
     * balanced power mode
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    ScanModeBalanced
    | 
    /**
     * Scan using highest duty cycle
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    ScanModeLowLatency
    | ...
}


extend ScanDuty <: ToString {
    
    /**
     * Converts the ScanDuty to its string representation.
     * @returns { String } A string representation of the ScanDuty.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public func toString(): String
}


extend ScanDuty <: Equatable<ScanDuty> {
    
    /**
     * Compares this ScanDuty with another for equality.
     * @param { ScanDuty } other - The ScanDuty to compare with.
     * @returns { Bool } True if both modes are equal, false otherwise.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public operator func ==(other: ScanDuty): Bool
    
    /**
     * Compares this ScanDuty with another for inequality.
     * @param { ScanDuty } other - The ScanDuty to compare with.
     * @returns { Bool } True if both modes are not equal, false otherwise.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public operator func !=(other: ScanDuty): Bool
}

/**
 * The enum of BLE match mode.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Communication.Bluetooth.Core"
]
public enum MatchMode {
    /**
     * aggressive mode
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    MatchModeAggressive
    | 
    /**
     * Reports advertising packets only if their signal strength is high
     * or they are transmitted intensively within a short period of time.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    MatchModeSticky
    | ...
}


extend MatchMode <: ToString {
    
    /**
     * Converts the MatchMode to its string representation.
     * @returns { String } A string representation of the MatchMode.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public func toString(): String
}


extend MatchMode <: Equatable<MatchMode> {
    
    /**
     * Compares this MatchMode with another for equality.
     * @param { MatchMode } other - The MatchMode to compare with.
     * @returns { Bool } True if both modes are equal, false otherwise.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public operator func ==(other: MatchMode): Bool
    
    /**
     * Compares this MatchMode with another for inequality.
     * @param { MatchMode } other - The MatchMode to compare with.
     * @returns { Bool } True if both modes are not equal, false otherwise.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public operator func !=(other: MatchMode): Bool
}

/**
 * The enum of BLE advertising state.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Communication.Bluetooth.Core"
]
public enum AdvertisingState {
    /**
     * advertising started.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    Started
    | 
    
    /**
     * advertising temporarily enabled.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    Enabled
    | 
    
    /**
     * advertising temporarily disabled.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    Disabled
    | 
    /**
     * advertising stopped.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    Stopped
    | ...
}


extend AdvertisingState <: ToString {
    
    /**
     * Converts the AdvertisingState to its string representation.
     * @returns { String } A string representation of the AdvertisingState.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public func toString(): String
}


extend AdvertisingState <: Equatable<AdvertisingState> {
    
    /**
     * Compares this AdvertisingState with another for equality.
     * @param { AdvertisingState } other - The AdvertisingState to compare with.
     * @returns { Bool } True if both modes are equal, false otherwise.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public operator func ==(other: AdvertisingState): Bool
    
    /**
     * Compares this AdvertisingState with another for inequality.
     * @param { AdvertisingState } other - The AdvertisingState to compare with.
     * @returns { Bool } True if both modes are not equal, false otherwise.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public operator func !=(other: AdvertisingState): Bool
}

/**
 * Phy type used during scan.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Communication.Bluetooth.Core"
]
public enum PhyType {
    /**
     * Use 1M phy for scanning.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    PhyLe1M
    | 
    /**
     * Use all supported Phys for scanning.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    PhyLeAllSupported
    | ...
}


extend PhyType <: ToString {
    
    /**
     * Converts the PhyType to its string representation.
     * @returns { String } A string representation of the PhyType.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public func toString(): String
}


extend PhyType <: Equatable<PhyType> {
    /**
     * Compares this PhyType with another for equality.
     * @param { PhyType } other - The PhyType to compare with.
     * @returns { Bool } True if both modes are equal, false otherwise.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public operator func ==(other: PhyType): Bool
    
    /**
     * Compares this PhyType with another for inequality.
     * @param { PhyType } other - The PhyType to compare with.
     * @returns { Bool } True if both modes are not equal, false otherwise.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public operator func !=(other: PhyType): Bool
}

/**
 * Bluetooth Ble CallbackType
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Communication.Bluetooth.Core"
]
public enum BluetoothBleCallbackType {
    
    /**
     * Event type. The value advertising indicate an advertising state change event.
     * This event is triggered if the advertising state changes when startAdvertising,
     * stopAdvertising, enableAdvertising or disableAdvertising is called.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    AdvertisingStateChange
    | 
    /**
     * ble device find changed.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    BleDeviceFind
    | ...
}


extend BluetoothBleCallbackType <: ToString {
    
    /**
     * Converts the BluetoothBleCallbackType to its string representation.
     * @returns { String } A string representation of the BluetoothBleCallbackType.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public func toString(): String
}


extend BluetoothBleCallbackType <: Hashable {
    
    /**
     * Returns a hash code value for this BluetoothBleCallbackType.
     * @returns { Int64 } A hash code value for this BluetoothBleCallbackType.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public func hashCode(): Int64
}


extend BluetoothBleCallbackType <: Equatable<BluetoothBleCallbackType> {
    
    /**
     * Compares this BluetoothBleCallbackType with another for equality.
     * @param { BluetoothBleCallbackType } other - The BluetoothBleCallbackType to compare with.
     * @returns { Bool } True if both modes are equal, false otherwise.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public operator func ==(other: BluetoothBleCallbackType): Bool
    
    /**
     * Compares this BluetoothBleCallbackType with another for inequality.
     * @param { BluetoothBleCallbackType } other - The BluetoothBleCallbackType to compare with.
     * @returns { Bool } True if both modes are not equal, false otherwise.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public operator func !=(other: BluetoothBleCallbackType): Bool
}

/**
 * Report mode used during scan.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Communication.Bluetooth.Core"
]
public enum ScanReportMode {
    
    /**
     * In normal mode, the advertisement packet is reported immediately after being scanned.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    Normal
    | 
    
    /**
     * Enables the batch mode in which advertisement packets are sent after the interval specified by
     * interval.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    Batch
    | 
    
    /**
     * In low sensitivity fence mode, the advertisement packets are reported only when they are received for
     * the first time and lost for the last time. The reception sensitivity is low.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    FenceSensitivityLow
    | 
    /**
     * In high sensitivity fence mode, the advertisement packets are reported only when they are received for
     * the first time and lost for the last time. The reception sensitivity is high.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    FenceSensitivityHigh
    | ...
}


extend ScanReportMode <: ToString {
    
    /**
     * Converts the ScanReportMode to its string representation.
     * @returns { String } A string representation of the ScanReportMode.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public func toString(): String
}


extend ScanReportMode <: Equatable<ScanReportMode> {
    
    /**
     * Compares this ScanReportMode with another for equality.
     * @param { ScanReportMode } other - The ScanReportMode to compare with.
     * @returns { Bool } True if both modes are equal, false otherwise.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public operator func ==(other: ScanReportMode): Bool
    
    /**
     * Compares this ScanReportMode with another for inequality.
     * @param { ScanReportMode } other - The ScanReportMode to compare with.
     * @returns { Bool } True if both modes are not equal, false otherwise.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.Bluetooth.Core"
    ]
    public operator func !=(other: ScanReportMode): Bool
}
