package ohos.pasteboard

import ohos.business_exception.AsyncCallback
import ohos.labels.APILevel
import ohos.multimedia.image.PixelMap
import std.collection.HashMap

/**
 * MIME type of the HTML content.
 */
@!APILevel[
    since: "26.1.0",
    syscap: "SystemCapability.MiscServices.Pasteboard"
]
public const MIMETYPE_TEXT_HTML: String = "text/html"

/**
 * MIME type of the Want content.
 */
@!APILevel[
    since: "26.1.0",
    syscap: "SystemCapability.MiscServices.Pasteboard"
]
public const MIMETYPE_TEXT_WANT: String = "text/want"

/**
 * MIME type of the plain text content.
 */
@!APILevel[
    since: "26.1.0",
    syscap: "SystemCapability.MiscServices.Pasteboard"
]
public const MIMETYPE_TEXT_PLAIN: String = "text/plain"

/**
 * MIME type of the URI content.
 */
@!APILevel[
    since: "26.1.0",
    syscap: "SystemCapability.MiscServices.Pasteboard"
]
public const MIMETYPE_TEXT_URI: String = "text/uri"

/**
 * MIME type of the PixelMap content.
 */
@!APILevel[
    since: "26.1.0",
    syscap: "SystemCapability.MiscServices.Pasteboard"
]
public const MIMETYPE_PIXELMAP: String = "pixelMap"

/**
 * Indicates the type of the value.
 *
 * It is used, for example, as the value parameter of createData, createRecord, and PasteData.addRecord.
 */
@!APILevel[
    since: "26.1.0",
    syscap: "SystemCapability.MiscServices.Pasteboard"
]
public enum PasteDataValueType {
    /**
     * Represents a value of the ArrayBuffer type.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.MiscServices.Pasteboard"
    ]
    ArrayBufferValue(ArrayBuffer)
    |
    /**
     * Represents a value of the PixelMap type.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.MiscServices.Pasteboard"
    ]
    PixelMapValue(PixelMap)
    |
    /**
     * Represents a value of the String type.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.MiscServices.Pasteboard"
    ]
    StringValue(String)
    | ...
}

extend PasteDataValueType <: ToString {
    /**
     * Converts the PasteDataValueType to its string representation.
     * @returns { String } A string representation of the PasteDataValueType.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.MiscServices.Pasteboard"
    ]
    public func toString(): String
}

extend PasteDataValueType <: Equatable<PasteDataValueType> {
    /**
     * Compares this PasteDataValueType with another for equality.
     * @param { PasteDataValueType } other - The PasteDataValueType to compare with.
     * @returns { Bool } True if both values are equal, false otherwise.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.MiscServices.Pasteboard"
    ]
    public operator func ==(other: PasteDataValueType): Bool

    /**
     * Compares this PasteDataValueType with another for inequality.
     * @param { PasteDataValueType } other - The PasteDataValueType to compare with.
     * @returns { Bool } True if both values are not equal, false otherwise.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.MiscServices.Pasteboard"
    ]
    public operator func !=(other: PasteDataValueType): Bool
}

/**
 * Creates a **PasteData** object of the specified type.
 *
 * @param { String } mimeType - Type of PasteData. The value can be a predefined MIME type listed in Constants,
 *     including HTML, Want, plain text, URI, and PixelMap, or a custom type. The value of **mimeType** cannot
 *     exceed 1024 bytes.
 * @param { PasteDataValueType } value - Content of PasteData.
 * @returns { PasteData } **PasteData** object.
 */
@!APILevel[
    since: "26.1.0",
    syscap: "SystemCapability.MiscServices.Pasteboard"
]
public func createData(mimeType: String, value: PasteDataValueType): PasteData

/**
 * Creates a **PasteData** object that contains multiple types of data.
 *
 * @param { HashMap<String, PasteDataValueType> } data - The key of **HashMap** can be the MIME type corresponding to the
 *     PasteData, including HTML, Want, plain text, URI, and PixelMap defined in Constants. Alternatively, the key
 *     could be a custom type, whose parameter, the length of **mimeType**, cannot exceed 1024 bytes. The value of
 *     **HashMap** is the data corresponding to the type specified in the key. The first type specified by the
 *     key-value in **HashMap** is used as the default type of the first **PasteDataRecord** in the **PasteData**
 *     object. Data of non-default types can be read only by using the getData API of SystemPasteboard.
 * @returns { PasteData } **PasteData** object.
 */
@!APILevel[
    since: "26.1.0",
    syscap: "SystemCapability.MiscServices.Pasteboard"
]
public func createData(data: HashMap<String, PasteDataValueType>): PasteData

/**
 * Creates a **PasteDataRecord** object of the specified type.
 *
 * @param { String } mimeType - The type of custom data. The value can be a predefined MIME type listed in Constants,
 *     including HTML, Want, plain text, URI, and PixelMap, or a custom type. The value of **mimeType** cannot
 *     exceed 1024 bytes.
 * @param { PasteDataValueType } value - Data content of the specified type.
 * @returns { PasteDataRecord } A new paste data record of a specified type.
 */
@!APILevel[
    since: "26.1.0",
    syscap: "SystemCapability.MiscServices.Pasteboard"
]
public func createRecord(mimeType: String, value: PasteDataValueType): PasteDataRecord

/**
 * Obtains **SystemPasteboard** object.
 *
 * @returns { SystemPasteboard } **SystemPasteboard** object.
 */
@!APILevel[
    since: "26.1.0",
    syscap: "SystemCapability.MiscServices.Pasteboard"
]
public func getSystemPasteboard(): SystemPasteboard

/**
 * Enumerates the pasteable ranges of PasteData.
 */
@!APILevel[
    since: "26.1.0",
    syscap: "SystemCapability.MiscServices.Pasteboard"
]
public enum ShareOption {
    /**
     * Only intra-application pasting is allowed.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.MiscServices.Pasteboard"
    ]
    Inapp
    |
    /**
     * Paste is allowed in any application.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.MiscServices.Pasteboard"
    ]
    Localdevice
    | ...
}

extend ShareOption <: ToString {
    /**
     * Converts the ShareOption to its string representation.
     * @returns { String } A string representation of the ShareOption.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.MiscServices.Pasteboard"
    ]
    public func toString(): String
}

extend ShareOption <: Equatable<ShareOption> {
    /**
     * Compares this ShareOption with another for equality.
     * @param { ShareOption } other - The ShareOption to compare with.
     * @returns { Bool } True if both modes are equal, false otherwise.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.MiscServices.Pasteboard"
    ]
    public operator func ==(other: ShareOption): Bool

    /**
     * Compares this ShareOption with another for inequality.
     * @param { ShareOption } other - The ShareOption to compare with.
     * @returns { Bool } True if both modes are not equal, false otherwise.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.MiscServices.Pasteboard"
    ]
    public operator func !=(other: ShareOption): Bool
}

/**
 * Defines the properties of PasteData in the pasteboard, including the timestamp, data types, and pasteable range.
 * The defined properties can be applied to the pasteboard only with the setProperty method.
 */
@!APILevel[
    since: "26.1.0",
    syscap: "SystemCapability.MiscServices.Pasteboard"
]
public class PasteDataProperty {
    /**
     * Data types of all records in PasteData.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.MiscServices.Pasteboard"
    ]
    public prop mimeTypes: Array<String>

    /**
     * Custom tag. This parameter is left empty by default.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.MiscServices.Pasteboard"
    ]
    public mut prop tag: String

    /**
     * Timestamp when data is written to the pasteboard (unit: nanoseconds since the device is powered on).
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.MiscServices.Pasteboard"
    ]
    public prop timestamp: Int64

    /**
     * Whether the pasteboard content is for local access only. The default value is **false**. The value will be
     * overwritten by the value of the **shareOption** attribute. You are advised to use the ShareOption attribute
     * instead.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.MiscServices.Pasteboard"
    ]
    public mut prop localOnly: Bool

    /**
     * Pasteable ranges of PasteData. The default value is **Localdevice**.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.MiscServices.Pasteboard"
    ]
    public mut prop shareOption: ShareOption

    /**
     * A constructor used to create a PasteDataProperty.
     *
     * @param { Array<String> } mimeTypes - Data types of all records in PasteData.
     * @param { String } tag - Custom tag. This parameter is left empty by default.
     * @param { Int64 } timestamp - Timestamp when data is written to the pasteboard (unit: nanoseconds since the
     *     device is powered on).
     * @param { Bool } localOnly - Whether the pasteboard content is for local access only. The default value is
     *     **false**. The value will be overwritten by the value of the **shareOption** attribute. You are advised
     *     to use the ShareOption attribute instead.
     * @param { ShareOption } shareOption - Pasteable ranges of PasteData. The default value is **Localdevice**.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.MiscServices.Pasteboard"
    ]
    public init(
        mimeTypes: Array<String>,
        tag: String,
        timestamp: Int64,
        localOnly: Bool,
        shareOption: ShareOption
    )
}

/**
 * Provides **PasteDataRecord** APIs. A **PasteDataRecord** is an abstract definition of the content in the
 * pasteboard. The pasteboard content consists of one or more plain text, HTML, URI, or Want records.
 * After creating a PasteDataRecord, it is not supported to modify the value of the default data type of the
 * PasteDataRecord. The correct value for the default data type should be specified when creating the PasteDataRecord.
 */
@!APILevel[
    since: "26.1.0",
    syscap: "SystemCapability.MiscServices.Pasteboard"
]
public class PasteDataRecord {
    /**
     * HTML content, must conform to standard HTML format. Modifications to this attribute are ineffective.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.MiscServices.Pasteboard"
    ]
    public mut prop htmlText: String

    /**
     * Default type of PasteDataRecord. Modifications to this attribute are ineffective.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.MiscServices.Pasteboard"
    ]
    public mut prop mimeType: String

    /**
     * Plain text. Modifications to this attribute are ineffective.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.MiscServices.Pasteboard"
    ]
    public mut prop plainText: String

    /**
     * URI content, must conform to standard URI format. Modifications to this attribute are ineffective.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.MiscServices.Pasteboard"
    ]
    public mut prop uri: String

    /**
     * PixelMap content. Modifications to this attribute are ineffective.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.MiscServices.Pasteboard"
    ]
    public mut prop pixelMap: PixelMap
}

/**
 * Implements a **PasteData** object. PasteData contains one or more data records (PasteDataRecord) and property
 * description objects (PasteDataProperty). Before calling any API in **PasteData**, you must use **createData()**
 * or **getData()** to create a **PasteData** object.
 */
@!APILevel[
    since: "26.1.0",
    syscap: "SystemCapability.MiscServices.Pasteboard"
]
public class PasteData {
    /**
     * Adds a data record to the PasteData, and adds its type to **mimeTypes** in PasteDataProperty.
     * The parameters cannot be empty. Otherwise, the operation fails.
     *
     * @param { PasteDataRecord } record - Record to add.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.MiscServices.Pasteboard"
    ]
    public func addRecord(record: PasteDataRecord): Unit

    /**
     * Adds a data record to the PasteData, and adds its type to **mimeTypes** in PasteDataProperty.
     * The parameters cannot be empty. Otherwise, the operation fails.
     *
     * @param { String } mimeType - MIME type of PasteData. The length cannot exceed 1024 bytes.
     * @param { PasteDataValueType } value - Data content.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.MiscServices.Pasteboard"
    ]
    public func addRecord(mimeType: String, value: PasteDataValueType): Unit

    /**
     * Obtains types of PasteDataProperty of the PasteData.
     *
     * @returns { Array<String> } Data types of the PasteData.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.MiscServices.Pasteboard"
    ]
    public func getMimeTypes(): Array<String>

    /**
     * Obtains the HTML content of the primary record.
     *
     * @returns { String } HTML content.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.MiscServices.Pasteboard"
    ]
    public func getPrimaryHtml(): String

    /**
     * Obtains the data type of the primary record in the pasteboard.
     *
     * @returns { String } Data type of the primary record.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.MiscServices.Pasteboard"
    ]
    public func getPrimaryMimeType(): String

    /**
     * Obtains the plain text of the primary record.
     *
     * @returns { String } Plain text.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.MiscServices.Pasteboard"
    ]
    public func getPrimaryText(): String

    /**
     * Obtains the URI of the primary record.
     *
     * @returns { String } URI content.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.MiscServices.Pasteboard"
    ]
    public func getPrimaryUri(): String

    /**
     * Obtains the PixelMap of the primary record.
     *
     * @returns { PixelMap } PixelMap.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.MiscServices.Pasteboard"
    ]
    public func getPrimaryPixelMap(): PixelMap

    /**
     * Obtains the property of the PasteData.
     *
     * @returns { PasteDataProperty } Property of the PasteData.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.MiscServices.Pasteboard"
    ]
    public func getProperty(): PasteDataProperty

    /**
     * Sets a PasteDataProperty object.
     *
     * @param { PasteDataProperty } pasteDataProperty - Property of the PasteData.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.MiscServices.Pasteboard"
    ]
    public func setProperty(pasteDataProperty: PasteDataProperty): Unit

    /**
     * Obtains the record with a specific index in PasteData.
     *
     * @param { Int32 } index - Index of the target record.
     * @returns { PasteDataRecord } Record with the specified index.
     * @throws { BusinessException } 12900001 - The index is out of range.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.MiscServices.Pasteboard",
        throwexception: true
    ]
    public func getRecord(index: Int32): PasteDataRecord

    /**
     * Obtains the number of records in a PasteData object.
     *
     * @returns { UIntNative } Number of records.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.MiscServices.Pasteboard"
    ]
    public func getRecordCount(): UIntNative

    /**
     * Obtains the custom tag from the PasteData. If no custom tag is set, an empty string is returned.
     *
     * @returns { String } Custom tag. If no custom tag is set, an empty string is returned.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.MiscServices.Pasteboard"
    ]
    public func getTag(): String

    /**
     * Checks whether the PasteData contains data of the specified MIME type.
     *
     * @param { String } mimeType - Type of the data to query. The value can be a predefined type listed in
     *     Constants, including HTML, Want, plain text, URI, and PixelMap, or a custom type.
     * @returns { Bool } Returns **true** if the specified data type exists; returns **false** otherwise.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.MiscServices.Pasteboard"
    ]
    public func hasType(mimeType: String): Bool

    /**
     * Removes the record with a specific index in PasteData.
     *
     * @param { Int32 } index - Specified index.
     * @throws { BusinessException } 12900001 - The index is out of range.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.MiscServices.Pasteboard",
        throwexception: true
    ]
    public func removeRecord(index: Int32): Unit

    /**
     * Replaces the record with a specific index in PasteData.
     *
     * @param { Int32 } index - Specified index.
     * @param { PasteDataRecord } record - New record.
     * @throws { BusinessException } 12900001 - The index is out of range.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.MiscServices.Pasteboard",
        throwexception: true
    ]
    public func replaceRecord(index: Int32, record: PasteDataRecord): Unit
}

/**
 * Provides **SystemPasteboard** APIs.
 * Before calling any **SystemPasteboard** API, you must obtain a **SystemPasteboard** object using
 * getSystemPasteboard.
 */
@!APILevel[
    since: "26.1.0",
    syscap: "SystemCapability.MiscServices.Pasteboard"
]
public class SystemPasteboard {
    /**
     * Checks whether the data in the pasteboard is from another device.
     *
     * @returns { Bool } Returns **true** if the data in the pasteboard is from another device;
     *     returns **false** otherwise.
     * @throws { BusinessException } 12900005 - Excessive processing time for internal data.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.MiscServices.Pasteboard",
        throwexception: true
    ]
    public func isRemoteData(): Bool

    /**
     * Obtains the name of the application that provides data.
     *
     * @returns { String } Application name.
     * @throws { BusinessException } 12900005 - Excessive processing time for internal data.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.MiscServices.Pasteboard",
        throwexception: true
    ]
    public func getDataSource(): String

    /**
     * Checks whether the pasteboard contains data of the specified type.
     *
     * @param { String } mimeType - Data type.
     * @returns { Bool } Returns **true** if the pasteboard contains data of the specified type; returns **false**
     *     otherwise.
     * @throws { BusinessException } 12900005 - Excessive processing time for internal data.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.MiscServices.Pasteboard",
        throwexception: true
    ]
    public func hasDataType(mimeType: String): Bool

    /**
     * Clears the system pasteboard. This API uses an asynchronous callback to return the result.
     *
     * @param { AsyncCallback<Unit> } callback - Callback used to return the result.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.MiscServices.Pasteboard"
    ]
    public func clearData(callback: AsyncCallback<Unit>): Unit

    /**
     * Obtains a **PasteData** object from the pasteboard. This API uses an asynchronous callback to return the result..
     *
     * While most applications must request permissions to access the pasteboard, those using PasteButton can
     * access the pasteboard content without permission requests.
     *
     * @param { AsyncCallback<PasteData> } callback - Callback used to return the result.
     * @throws { BusinessException } 27787277 - Another copy or paste operation is in progress.
     * @throws { BusinessException } 201 - Permission verification failed. The application does not have the
     *     permission required to call the API.
     */
    @!APILevel[
        since: "26.1.0",
        permission: "ohos.permission.READ_PASTEBOARD",
        syscap: "SystemCapability.MiscServices.Pasteboard",
        throwexception: true
    ]
    public func getData(callback: AsyncCallback<PasteData>): Unit

    /**
     * Checks whether the system pasteboard contains data. This API uses an asynchronous callback to return the result.
     *
     * @param { AsyncCallback<Bool> } callback - Callback used to return the result. Returns **true** if the system
     *     pasteboard contains data; returns **false** otherwise.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.MiscServices.Pasteboard",
        throwexception: true
    ]
    public func hasData(callback: AsyncCallback<Bool>): Unit

    /**
     * Writes a **PasteData** object to the pasteboard. This API uses an asynchronous callback to return the result.
     *
     * @param { PasteData } data - **PasteData** object.
     * @param { AsyncCallback<Unit> } callback - Callback used to return the result.
     * @throws { BusinessException } 27787277 - Another copy or paste operation is in progress.
     * @throws { BusinessException } 27787278 - Replication is prohibited.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.MiscServices.Pasteboard",
        throwexception: true
    ]
    public func setData(data: PasteData, callback: AsyncCallback<Unit>): Unit
}
