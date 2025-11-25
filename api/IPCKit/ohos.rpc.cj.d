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

package ohos.rpc

import ohos.labels.*

/**
 * Provides methods related to anonymous shared memory objects,
 * including creating, closing, mapping, and unmapping an Ashmem object,
 * reading data from and writing data to an Ashmem object,
 * obtaining the Ashmem size, and setting Ashmem protection.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Communication.IPC.Core"
]
public class Ashmem {
    /**
     * The mapped memory is executable. Default value is 4.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public static const PROT_EXEC: UInt32 = 4

    /**
     * The mapped memory is inaccessible. Default value is 0.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public static const PROT_NONE: UInt32 = 0

    /**
     * The mapped memory is readable. Default value is 1.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public static const PROT_READ: UInt32 = 1

    /**
     * The mapped memory is writable. Default value is 2.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public static const PROT_WRITE: UInt32 = 2

    /**
     * Creates an Ashmem object with the specified name and size.
     * @param { String } name - Name of the Ashmem object to create.
     * @param { Int32 } size - Size (in bytes) of the Ashmem object to create.
     * @returns { Ashmem } Return the Ashmem object if it is created successfully.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public static func create(name: String, size: Int32): Ashmem

    /**
     * Creates an Ashmem object by copying the file descriptor (FD) of an existing Ashmem object.
     * The two Ashmem objects point to the same shared memory region.
     * @param { Ashmem } ashmem - Existing Ashmem object.
     * @returns { Ashmem } Ashmem object created.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public static func create(ashmem: Ashmem): Ashmem

    /**
     * Closes this Ashmem object.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public func closeAshmem(): Unit

    /**
     * Deletes the mappings for the specified address range of this Ashmem object.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public func unmapAshmem(): Unit

    /**
     * Obtains the mapped memory size of this Ashmem object.
     * @returns { Int32 } Memory size mapped.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public func getAshmemSize(): Int32

    /**
     * Creates the shared file mapping on the virtual address space of this process.
     * The size of the mapping region is specified by this Ashmem object.
     * @param { UInt32 } mapType - Protection level of the memory region to which the shared file is mapped.
     * @throws { BusinessException } 1900001 - Failed to call mmap.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.IPC.Core",
        throwexception: true
    ]
    public func mapTypedAshmem(mapType: UInt32): Unit

    /**
     * Maps the shared file to the readable and writable virtual address space of the process.
     * @throws { BusinessException } 1900001 - Failed to call mmap.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.IPC.Core",
        throwexception: true
    ]
    public func mapReadWriteAshmem(): Unit

    /**
     * Maps the shared file to the read-only virtual address space of the process.
     * @throws { BusinessException } 1900001 - Failed to call mmap.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.IPC.Core",
        throwexception: true
    ]
    public func mapReadonlyAshmem(): Unit

    /**
     * Sets the protection level of the memory region to which the shared file is mapped.
     * @param { UInt32 } protectionType - Protection type to set.
     * @throws { BusinessException } 1900002 - Failed to call ioctl.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.IPC.Core",
        throwexception: true
    ]
    public func setProtectionType(protectionType: UInt32): Unit

    /**
     * Writes data to the shared file associated with this Ashmem object.
     * @param { Array<Byte> } buf - Data to write
     * @param { Int64 } size - Size of the data to write
     * @param { Int64 } offset - Start position of the data to write in the memory region associated
     *                   with this Ashmem object.
     * @throws { BusinessException } 1900003 - Failed to write data to the shared memory.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.IPC.Core",
        throwexception: true
    ]
    public func writeDataToAshmem(buf: Array<Byte>, size: Int64, offset: Int64): Unit

    /**
     * Reads data from the shared file associated with this Ashmem object.
     * @param { Int64 } size - Size of the data to read.
     * @param { Int64 } offset - Start position of the data to read in the memory region associated
     *                   with this Ashmem object.
     * @returns { Array<Byte> } Data read.
     * @throws { BusinessException } 1900004 - Failed to read data from the shared memory.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.IPC.Core",
        throwexception: true
    ]
    public func readDataFromAshmem(size: Int64, offset: Int64): Array<Byte>
}

/**
 * A data object used for remote procedure call (RPC).
 * During RPC, the sender can use the write methods provided by MessageSequence to
 * write the to-be-sent data into a MessageSequence object in a specific format, and the receiver can use the
 * read methods provided by MessageSequence to read data of the specific format from
 * the MessageSequence object.
 *
 * The default capacity of a MessageSequence instance is 200KB. If you want more or less,
 * use setCapacity(int) to change it.
 * 
 * Note: Only data of the following data types can be written into or read from a MessageSequence:
 * Int8, Int8Array, Int16, Int16Array, Int32, Int32Array, Int64, Int64Array, Float32, Float32Array, Float64,
 * Float64Array, Bool, BoolArray, UInt8, UInt8Array, String, StringArray,
 * Parcelable, and ParcelableArray.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Communication.IPC.Core"
]
public class MessageSequence {
    /**
     * Creates an empty MessageSequence object.
     * @returns { MessageSequence } Return the object created.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.IPC.Core",
        throwexception: true
    ]
    public static func create(): MessageSequence

    /**
     * Reclaim the MessageSequence object.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public func reclaim(): Unit

    /**
     * Writes an interface token into the MessageSequence object.
     * @param { String } token - Interface descriptor to write.
     * @throws { BusinessException } 1900009 - Failed to write data to the message sequence.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.IPC.Core",
        throwexception: true
    ]
    public func writeInterfaceToken(token: String): Unit

    /**
     * Reads an interface token from the MessageSequence object.
     * @returns { String } Return a String value.
     * @throws { BusinessException } 1900010 - Failed to read data from the message sequence.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.IPC.Core",
        throwexception: true
    ]
    public func readInterfaceToken(): String

    /**
     * Obtains the size of data (in bytes) contained in the MessageSequence object.
     * @returns { UInt32 } Return the size of data contained in the MessageSequence object.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public func getSize(): UInt32

    /**
     * Obtains the storage capacity (in bytes) of the MessageSequence object.
     * @returns { UInt32 } Return the storage capacity of the MessageSequence object.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public func getCapacity(): UInt32

    /**
     * Sets the size of data (in bytes) contained in the MessageSequence object.
     * False is returned if the data size set in this method is greater
     * than the storage capacity of the MessageSequence.
     * @param { UInt32 } size - Indicates the data size of the MessageSequence object.
     * @throws { BusinessException } 1900009 - Failed to write data to the message sequence.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.IPC.Core",
        throwexception: true
    ]
    public func setSize(size: UInt32): Unit

    /**
     * Sets the storage capacity (in bytes) of the MessageSequence object.
     * False is returned if the capacity set in this method is less than
     * the size of data contained in the MessageSequence.
     * @param { UInt32 } size - Indicates the storage capacity of the MessageSequence object.
     * @throws { BusinessException } 1900009 - Failed to write data to the message sequence.
     * @throws { BusinessException } 1900011 - Memory allocation failed.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.IPC.Core",
        throwexception: true
    ]
    public func setCapacity(size: UInt32): Unit

    /**
     * Obtains the writable data space (in bytes) in the MessageSequence object.
     * Writable data space = Storage capacity of the MessageSequence – Size of data contained in
     * the MessageSequence.
     * @returns { UInt32 } Return the writable data space of the MessageSequence object.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public func getWritableBytes(): UInt32

    /**
     * Obtains the readable data space (in bytes) in the MessageSequence object.
     * Readable data space = Size of data contained in the MessageSequence – Size of data that has been read.
     * @returns { UInt32 } Return the readable data space of the MessageSequence object.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public func getReadableBytes(): UInt32

    /**
     * Obtains the current read position in the MessageSequence object.
     * @returns { UInt32 } Return the current read position in the MessageSequence object.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public func getReadPosition(): UInt32

    /**
     * Obtains the current write position in the MessageSequence object.
     * @returns { UInt32 } Return the current write position in the MessageSequence object.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public func getWritePosition(): UInt32

    /**
     * Changes the current write position in the MessageSequence object.
     * Generally, you are advised not to change the current write position. If you must
     * change it, change it to an accurate position. Otherwise, the data to be read may be incorrect.
     * @param { UInt32 } pos - Indicates the target position to start data writing.
     * @throws { BusinessException } 1900009 - Failed to write data to the message sequence.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.IPC.Core",
        throwexception: true
    ]
    public func rewindWrite(pos: UInt32): Unit

    /**
     * Changes the current read position in the MessageSequence object.
     * Generally, you are advised not to change the current read position. If you must
     * change it, change it to an accurate position. Otherwise, the read data may be incorrect.
     * @param { UInt32 } pos - Indicates the target position to start data reading.
     * @throws { BusinessException } 1900010 - Failed to read data from the message sequence.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.IPC.Core",
        throwexception: true
    ]
    public func rewindRead(pos: UInt32): Unit

    /**
     * Writes information to this MessageSequence object indicating that no exception occurred.
     * After handling requests, you should call this method before writing any data to reply
     * MessageSequence.
     * @throws { BusinessException } 1900009 - Failed to write data to the message sequence.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.IPC.Core",
        throwexception: true
    ]
    public func writeNoException(): Unit

    /**
     * Reads the exception information from this MessageSequence object.
     * If exception was thrown in server side, it will be thrown here.
     * This method should be called before reading any data from reply MessageSequence
     * if writeNoException was invoked in server side.
     * @throws { BusinessException } 1900010 - Failed to read data from the message sequence.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.IPC.Core",
        throwexception: true
    ]
    public func readException(): Unit

    /**
     * Writes a Int8 value into the MessageSequence object.
     * @param { Int8 } val - Indicates the Int8 value to write.
     * @throws { BusinessException } 1900009 - Failed to write data to the message sequence.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.IPC.Core",
        throwexception: true
    ]
    public func writeByte(val: Int8): Unit

    /**
     * Writes a Int16 value into the MessageSequence object.
     * @param { Int16 } val - Indicates the Int16 value to write.
     * @throws { BusinessException } 1900009 - Failed to write data to the message sequence.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.IPC.Core",
        throwexception: true
    ]
    public func writeShort(val: Int16): Unit

    /**
     * Writes an Int32 value into the MessageSequence object.
     * @param { Int32 } val - Indicates the Int32 value to write.
     * @throws { BusinessException } 1900009 - Failed to write data to the message sequence.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.IPC.Core",
        throwexception: true
    ]
    public func writeInt(val: Int32): Unit

    /**
     * Writes a Int64 value into the MessageSequence object.
     * @param { Int64 } val - Indicates the Int64 value to write.
     * @throws { BusinessException } 1900009 - Failed to write data to the message sequence.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.IPC.Core",
        throwexception: true
    ]
    public func writeLong(val: Int64): Unit

    /**
     * Writes a Float32 value into the MessageSequence object.
     * @param { Float32 } val - Indicates the Float32 value to write.
     * @throws { BusinessException } 1900009 - Failed to write data to the message sequence.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.IPC.Core",
        throwexception: true
    ]
    public func writeFloat(val: Float32): Unit

    /**
     * Writes a Float64 value into the MessageSequence object.
     * @param { Float64 } val - Indicates the Float64 value to write.
     * @throws { BusinessException } 1900009 - Failed to write data to the message sequence.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.IPC.Core",
        throwexception: true
    ]
    public func writeDouble(val: Float64): Unit

    /**
     * Writes a Bool value into the MessageSequence object.
     * @param { Bool } val - Indicates the Bool value to write.
     * @throws { BusinessException } 1900009 - Failed to write data to the message sequence.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.IPC.Core",
        throwexception: true
    ]
    public func writeBoolean(val: Bool): Unit

    /**
     * Writes a UInt8 value into the MessageSequence object.
     * @param { UInt8 } val - Indicates the UInt8 value to write.
     * @throws { BusinessException } 1900009 - Failed to write data to the message sequence.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.IPC.Core",
        throwexception: true
    ]
    public func writeChar(val: UInt8): Unit

    /**
     * Writes a String value into the MessageSequence object.
     * @param { String } val - Indicates the String value to write.
     * @throws { BusinessException } 1900009 - Failed to write data to the message sequence.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.IPC.Core",
        throwexception: true
    ]
    public func writeString(val: String): Unit

    /**
     * Writes a Parcelable object into the MessageSequence object.
     * @param { T } val - Indicates the Parcelable object to write.
     * @throws { BusinessException } 1900009 - Failed to write data to the message sequence.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.IPC.Core",
        throwexception: true
    ]
    public func writeParcelable<T>(val: T): Unit where T <: Parcelable

    /**
     * Writes a Int8 array into the MessageSequence object.
     * @param { Array<Int8> } byteArray - Indicates the Int8 array to write.
     * @throws { BusinessException } 1900009 - Failed to write data to the message sequence.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.IPC.Core",
        throwexception: true
    ]
    public func writeByteArray(byteArray: Array<Int8>): Unit

    /**
     * Writes a Int16 array into the MessageSequence object.
     * Ensure that the data type and size comply with the interface definition.
     * Otherwise,data may be truncated.
     * @param { Array<Int16> } shortArray - Indicates the Int16 array to write.
     * @throws { BusinessException } 1900009 - Failed to write data to the message sequence.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.IPC.Core",
        throwexception: true
    ]
    public func writeShortArray(shortArray: Array<Int16>): Unit

    /**
     * Writes a Int32 array into the MessageSequence object.
     * Ensure that the data type and size comply with the interface definition.
     * Otherwise,data may be truncated.
     * @param { Array<Int32> } intArray - Indicates the Int32 array to write.
     * @throws { BusinessException } 1900009 - Failed to write data to the message sequence.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.IPC.Core",
        throwexception: true
    ]
    public func writeIntArray(intArray: Array<Int32>): Unit

    /**
     * Writes a Int64 array into the MessageSequence object.
     * Ensure that the data type and size comply with the interface definition.
     * Otherwise,data may be truncated.
     * @param { Array<Int64> } longArray - Indicates the Int64 array to write.
     * @throws { BusinessException } 1900009 - Failed to write data to the message sequence.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.IPC.Core",
        throwexception: true
    ]
    public func writeLongArray(longArray: Array<Int64>): Unit

    /**
     * Writes a Float32 array into the MessageSequence object.
     * Ensure that the data type and size comply with the interface definition.
     * Otherwise,data may be truncated.
     * @param { Array<Float32> } floatArray - Indicates the Float32 array to write.
     * @throws { BusinessException } 1900009 - Failed to write data to the message sequence.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.IPC.Core",
        throwexception: true
    ]
    public func writeFloatArray(floatArray: Array<Float32>): Unit

    /**
     * Writes a Float64 array into the MessageSequence object.
     * Ensure that the data type and size comply with the interface definition.
     * Otherwise,data may be truncated.
     * @param { Array<Float64> } doubleArray - Indicates the Float64 array to write.
     * @throws { BusinessException } 1900009 - Failed to write data to the message sequence.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.IPC.Core",
        throwexception: true
    ]
    public func writeDoubleArray(doubleArray: Array<Float64>): Unit

    /**
     * Writes a Bool array into the MessageSequence object.
     * Ensure that the data type and size comply with the interface definition.
     * Otherwise,data may be truncated.
     * @param { Array<Bool> } booleanArray - Indicates the Bool array to write.
     * @throws { BusinessException } 1900009 - Failed to write data to the message sequence.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.IPC.Core",
        throwexception: true
    ]
    public func writeBooleanArray(booleanArray: Array<Bool>): Unit

    /**
     * Writes a UInt8 array into the MessageSequence object.
     * Ensure that the data type and size comply with the interface definition.
     * Otherwise,data may be truncated.
     * @param { Array<UInt8> } charArray - Indicates the UInt8 array to write.
     * @throws { BusinessException } 1900009 - Failed to write data to the message sequence.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.IPC.Core",
        throwexception: true
    ]
    public func writeCharArray(charArray: Array<UInt8>): Unit

    /**
     * Writes a String array into the MessageSequence object.
     * Ensure that the data type and size comply with the interface definition.
     * Otherwise,data may be truncated.
     * @param { Array<String> } stringArray - Indicates the String array to write.
     * @throws { BusinessException } 1900009 - Failed to write data to the message sequence.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.IPC.Core",
        throwexception: true
    ]
    public func writeStringArray(stringArray: Array<String>): Unit

    /**
     * Writes a Parcelable object array into the MessageSequence object.
     * @param { Array<T> } parcelableArray - Indicates the Parcelable object array to write.
     * @throws { BusinessException } 1900009 - Failed to write data to the message sequence.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.IPC.Core",
        throwexception: true
    ]
    public func writeParcelableArray<T>(parcelableArray: Array<T>): Unit where T <: Parcelable

    /**
     * Reads a Int8 value from the MessageSequence object.
     * @returns { Int8 } Return a Int8 value.
     * @throws { BusinessException } 1900010 - Failed to read data from the message sequence.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.IPC.Core",
        throwexception: true
    ]
    public func readByte(): Int8

    /**
     * Reads a Int16 value from the MessageSequence object.
     * @returns { Int16 } Return a Int16 value.
     * @throws { BusinessException } 1900010 - Failed to read data from the message sequence.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.IPC.Core",
        throwexception: true
    ]
    public func readShort(): Int16

    /**
     * Reads an Int32 value from the MessageSequence object.
     * @returns { Int32 } Return an Int32 value.
     * @throws { BusinessException } 1900010 - Failed to read data from the message sequence.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.IPC.Core",
        throwexception: true
    ]
    public func readInt(): Int32

    /**
     * Reads a Int64 value from the MessageSequence object.
     * @returns { Int64 } Return a Int64 value.
     * @throws { BusinessException } 1900010 - Failed to read data from the message sequence.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.IPC.Core",
        throwexception: true
    ]
    public func readLong(): Int64

    /**
     * Reads a Float32 value from the MessageSequence object.
     * @returns { Float32 } Return a Float32 value.
     * @throws { BusinessException } 1900010 - Failed to read data from the message sequence.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.IPC.Core",
        throwexception: true
    ]
    public func readFloat(): Float32

    /**
     * Reads a Float64 value from the MessageSequence object.
     * @returns { Float64 } Return a Float64 value.
     * @throws { BusinessException } 1900010 - Failed to read data from the message sequence.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.IPC.Core",
        throwexception: true
    ]
    public func readDouble(): Float64

    /**
     * Reads a Bool value from the MessageSequence object.
     * @returns { Bool } Return a Bool value.
     * @throws { BusinessException } 1900010 - Failed to read data from the message sequence.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.IPC.Core",
        throwexception: true
    ]
    public func readBoolean(): Bool

    /**
     * Reads a UInt8 value from the MessageSequence object.
     * @returns { UInt8 } Return a UInt8 value.
     * @throws { BusinessException } 1900010 - Failed to read data from the message sequence.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.IPC.Core",
        throwexception: true
    ]
    public func readChar(): UInt8

    /**
     * Reads a String value from the MessageSequence object.
     * @returns { String } Return a String value.
     * @throws { BusinessException } 1900010 - Failed to read data from the message sequence.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.IPC.Core",
        throwexception: true
    ]
    public func readString(): String

    /**
     * Reads a Parcelable object from the MessageSequence instance.
     * @param { T } dataIn - Indicates the Parcelable object that needs to perform
     *                       the unmarshalling operation using the MessageSequence.
     * @throws { BusinessException } 1900010 - Failed to read data from the message sequence.
     * @throws { BusinessException } 1900012 - Failed to call the JS callback function.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.IPC.Core",
        throwexception: true
    ]
    public func readParcelable<T>(dataIn: T): Unit where T <: Parcelable

    /**
     * Reads a Int8 array from the MessageSequence object.
     * @returns { Array<Int8> } Return a Int8 array.
     * @throws { BusinessException } 1900010 - Failed to read data from the message sequence.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.IPC.Core",
        throwexception: true
    ]
    public func readByteArray(): Array<Int8>

    /**
     * Reads a Int16 array from the MessageSequence object.
     * @returns { Array<Int16> } Return a Int16 array.
     * @throws { BusinessException } 1900010 - Failed to read data from the message sequence.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.IPC.Core",
        throwexception: true
    ]
    public func readShortArray(): Array<Int16>

    /**
     * Reads an Int32 array from the MessageSequence object.
     * @returns { Array<Int32> } Return an Int32 array.
     * @throws { BusinessException } 1900010 - Failed to read data from the message sequence.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.IPC.Core",
        throwexception: true
    ]
    public func readIntArray(): Array<Int32>

    /**
     * Reads a Int64 array from the MessageSequence object.
     * @returns { Array<Int64> } Return a Int64 array.
     * @throws { BusinessException } 1900010 - Failed to read data from the message sequence.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.IPC.Core",
        throwexception: true
    ]
    public func readLongArray(): Array<Int64>

    /**
     * Reads a Float32 array from the MessageSequence object.
     * @returns { Array<Float32> } Return a Float32 array.
     * @throws { BusinessException } 1900010 - Failed to read data from the message sequence.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.IPC.Core",
        throwexception: true
    ]
    public func readFloatArray(): Array<Float32>

    /**
     * Reads a Float64 array from the MessageSequence object.
     * @returns { Array<Float64> } Return a Float64 array.
     * @throws { BusinessException } 1900010 - Failed to read data from the message sequence.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.IPC.Core",
        throwexception: true
    ]
    public func readDoubleArray(): Array<Float64>

    /**
     * Reads a Bool array from the MessageSequence object.
     * @returns { Array<Bool> } Return a Bool array.
     * @throws { BusinessException } 1900010 - Failed to read data from the message sequence.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.IPC.Core",
        throwexception: true
    ]
    public func readBooleanArray(): Array<Bool>

    /**
     * Reads a UInt8 array from the MessageSequence object.
     * @returns { Array<UInt8> } Return a UInt8 array.
     * @throws { BusinessException } 1900010 - Failed to read data from the message sequence.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.IPC.Core",
        throwexception: true
    ]
    public func readCharArray(): Array<UInt8>

    /**
     * Reads a String array from the MessageSequence object.
     * @returns { Array<String> } Return a String array.
     * @throws { BusinessException } 1900010 - Failed to read data from the message sequence.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.IPC.Core",
        throwexception: true
    ]
    public func readStringArray(): Array<String>

    /**
     * Reads the specified Parcelable array from this MessageSequence object.
     * @param { Array<T> } parcelableArray - Parcelable array to read.
     * @throws { BusinessException } 1900010 - Failed to read data from the message sequence.
     * @throws { BusinessException } 1900012 - Failed to call the JS callback function.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.IPC.Core",
        throwexception: true
    ]
    public func readParcelableArray<T>(parcelableArray: Array<T>): Unit where T <: Parcelable

    /**
     * Closes the specified file descriptor.
     * @param { Int32 } fd - File descriptor to be closed.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public static func closeFileDescriptor(fd: Int32): Unit

    /**
     * Duplicates the specified file descriptor.
     * @param { Int32 } fd - File descriptor to be duplicated.
     * @returns { Int32 } Return a duplicated file descriptor.
     * @throws { BusinessException } 1900013 - Failed to call dup.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.IPC.Core",
        throwexception: true
    ]
    public static func dupFileDescriptor(fd: Int32): Int32

    /**
     * Checks whether this MessageSequence object contains a file descriptor.
     * @returns { Bool } Return True if the MessageSequence object contains a file descriptor;
     *                      return False otherwise.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public func containFileDescriptors(): Bool

    /**
     * Writes a file descriptor to this MessageSequence object.
     * @param { Int32 } fd - File descriptor to wrote.
     * @throws { BusinessException } 1900009 - Failed to write data to the message sequence.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.IPC.Core",
        throwexception: true
    ]
    public func writeFileDescriptor(fd: Int32): Unit

    /**
     * Reads a file descriptor from this MessageSequence object.
     * @returns { Int32 } Return a file descriptor obtained.
     * @throws { BusinessException } 1900010 - Failed to read data from the message sequence.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.IPC.Core",
        throwexception: true
    ]
    public func readFileDescriptor(): Int32

    /**
     * Writes an anonymous shared memory object to this MessageSequence object.
     * @param { Ashmem } ashmem - Anonymous shared memory object to wrote.
     * @throws { BusinessException } 1900003 - Failed to write data to the shared memory.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.IPC.Core",
        throwexception: true
    ]
    public func writeAshmem(ashmem: Ashmem): Unit

    /**
     * Reads the anonymous shared memory object from this MessageSequence object.
     * @returns { Ashmem } Return the anonymous share object obtained.
     * @throws { BusinessException } 1900004 - Failed to read data from the shared memory.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.IPC.Core",
        throwexception: true
    ]
    public func readAshmem(): Ashmem

    /**
     * Obtains the maximum amount of raw data that can be sent in a time.
     * @returns { UInt32 } 128 MB.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    public func getRawDataCapacity(): UInt32

    /**
     * Writes raw data to this MessageSequence object.
     * @param { Array<Byte> } rawData - Raw data to wrote.
     * @param { Int64 } size - Size of the raw data, in bytes.
     * @throws { BusinessException } 1900009 - Failed to write data to the message sequence.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.IPC.Core",
        throwexception: true
    ]
    public func writeRawDataBuffer(rawData: Array<Byte>, size: Int64): Unit

    /**
     * Reads raw data from this MessageSequence object.
     * @param { Int64 } size - Size of the raw data to read.
     * @returns { Array<Byte> } Return the raw data obtained, in bytes.
     * @throws { BusinessException } 1900010 - Failed to read data from the message sequence.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.IPC.Core",
        throwexception: true
    ]
    public func readRawDataBuffer(size: Int64): Array<Byte>

    /**
     * Writes the data in an Array<UInt8> object into this MessageSequence object.
     * @param { Array<UInt8> } buf - Data to write.
     * @throws { BusinessException } 1900009 - Failed to write data to the message sequence.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.IPC.Core",
        throwexception: true
    ]
    public func writeUInt8Array(buf: Array<UInt8>): Unit

    /**
     * Writes the data in an Array<UInt16> object into this MessageSequence object.
     * @param { Array<UInt16> } buf - Data to write.
     * @throws { BusinessException } 1900009 - Failed to write data to the message sequence.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.IPC.Core",
        throwexception: true
    ]
    public func writeUInt16Array(buf: Array<UInt16>): Unit

    /**
     * Writes the data in an Array<UInt32> object into this MessageSequence object.
     * @param { Array<UInt32> } buf - Data to write.
     * @throws { BusinessException } 1900009 - Failed to write data to the message sequence.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.IPC.Core",
        throwexception: true
    ]
    public func writeUInt32Array(buf: Array<UInt32>): Unit

    /**
     * Writes the data in an Array<UInt64> object into this MessageSequence object.
     * @param { Array<UInt64> } buf - Data to write.
     * @throws { BusinessException } 1900009 - Failed to write data to the message sequence.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.IPC.Core",
        throwexception: true
    ]
    public func writeUInt64Array(buf: Array<UInt64>): Unit

    /**
     * Reads raw data from this MessageSequence object.
     * @returns { Array<UInt8> } Returns the Array<UInt8> obtained.
     * @throws { BusinessException } 1900010 - Failed to read data from the message sequence.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.IPC.Core",
        throwexception: true
    ]
    public func readUInt8Array(): Array<UInt8>

    /**
     * Reads raw data from this MessageSequence object.
     * @returns { Array<UInt16> } Returns the Array<UInt16> obtained.
     * @throws { BusinessException } 1900010 - Failed to read data from the message sequence.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.IPC.Core",
        throwexception: true
    ]
    public func readUInt16Array(): Array<UInt16>

    /**
     * Reads raw data from this MessageSequence object.
     * @returns { Array<UInt32> } Returns the Array<UInt32> obtained.
     * @throws { BusinessException } 1900010 - Failed to read data from the message sequence.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.IPC.Core",
        throwexception: true
    ]
    public func readUInt32Array(): Array<UInt32>

    /**
     * Reads raw data from this MessageSequence object.
     * @returns { Array<UInt64> } Returns the Array<UInt64> obtained.
     * @throws { BusinessException } 1900010 - Failed to read data from the message sequence.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.IPC.Core",
        throwexception: true
    ]
    public func readUInt64Array(): Array<UInt64>
}

/**
 * During inter-process communication, objects of the class are written to the MessageSequence and
 * they are recovered from the MessageSequence.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Communication.IPC.Core"
]
public interface Parcelable {
    /**
     * Marshal this Parcelable object into a MessageSequence.
     * @param { MessageSequence } dataOut - Indicates the MessageSequence object to which the Parcelable
     *                            object will be marshalled.
     * @returns { Bool } Return True if the marshalling is successful; return False otherwise.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    func marshalling(dataOut: MessageSequence): Bool

    /**
     * Unmarshal this Parcelable object from a MessageSequence.
     * @param { MessageSequence } dataIn - Indicates the MessageSequence object into
     *                            which the Parcelable object has been marshalled.
     * @returns { Bool } Return True if the unmarshalling is successful; return False otherwise.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.IPC.Core"
    ]
    func unmarshalling(dataIn: MessageSequence): Bool
}
