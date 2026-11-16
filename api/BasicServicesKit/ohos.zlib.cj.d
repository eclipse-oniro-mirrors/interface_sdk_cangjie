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

package ohos.zlib

import ohos.business_exception.AsyncCallback
import ohos.labels.APILevel

/**
 * CompressLevel.
 */
@!APILevel[
    since: "26.1.0",
    syscap: "SystemCapability.BundleManager.Zlib"
]
public enum CompressLevel {
    /**
     * Compress level 0 that indicates uncompressed.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.BundleManager.Zlib"
    ]
    CompressLevelNoCompression
    |
    /**
     * Compression level 1 that gives the best speed.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.BundleManager.Zlib"
    ]
    CompressLevelBestSpeed
    |
    /**
     * Compression level 9 that gives the best compression.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.BundleManager.Zlib"
    ]
    CompressLevelBestCompression
    |
    /**
     * Default compression level.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.BundleManager.Zlib"
    ]
    CompressLevelDefaultCompression
    | ...
}

extend CompressLevel <: ToString {
    /**
     * Converts the CompressLevel to its string representation.
     * @returns { String } A string representation of the CompressLevel.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.BundleManager.Zlib"
    ]
    public func toString(): String
}

extend CompressLevel <: Equatable<CompressLevel> {
    /**
     * Compares this CompressLevel with another for equality.
     * @param { CompressLevel } other - The CompressLevel to compare with.
     * @returns { Bool } True if both modes are equal, false otherwise.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.BundleManager.Zlib"
    ]
    public operator func ==(other: CompressLevel): Bool

    /**
     * Compares this CompressLevel with another for inequality.
     * @param { CompressLevel } other - The CompressLevel to compare with.
     * @returns { Bool } True if both modes are not equal, false otherwise.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.BundleManager.Zlib"
    ]
    public operator func !=(other: CompressLevel): Bool
}

/**
 * CompressStrategy.
 */
@!APILevel[
    since: "26.1.0",
    syscap: "SystemCapability.BundleManager.Zlib"
]
public enum CompressStrategy {
    /**
     * Default compression strategy.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.BundleManager.Zlib"
    ]
    CompressStrategyDefaultStrategy
    |
    /**
     * Filtered compression strategy.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.BundleManager.Zlib"
    ]
    CompressStrategyFiltered
    |
    /**
     * Huffman coding compression strategy.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.BundleManager.Zlib"
    ]
    CompressStrategyHuffmanOnly
    |
    /**
     * RLE compression strategy.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.BundleManager.Zlib"
    ]
    CompressStrategyRle
    |
    /**
     * Fixed compression strategy.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.BundleManager.Zlib"
    ]
    CompressStrategyFixed
    | ...
}

extend CompressStrategy <: ToString {
    /**
     * Converts the CompressStrategy to its string representation.
     * @returns { String } A string representation of the CompressStrategy.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.BundleManager.Zlib"
    ]
    public func toString(): String
}

extend CompressStrategy <: Equatable<CompressStrategy> {
    /**
     * Compares this CompressStrategy with another for equality.
     * @param { CompressStrategy } other - The CompressStrategy to compare with.
     * @returns { Bool } True if both modes are equal, false otherwise.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.BundleManager.Zlib"
    ]
    public operator func ==(other: CompressStrategy): Bool

    /**
     * Compares this CompressStrategy with another for inequality.
     * @param { CompressStrategy } other - The CompressStrategy to compare with.
     * @returns { Bool } True if both modes are not equal, false otherwise.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.BundleManager.Zlib"
    ]
    public operator func !=(other: CompressStrategy): Bool
}

/**
 * MemLevel.
 */
@!APILevel[
    since: "26.1.0",
    syscap: "SystemCapability.BundleManager.Zlib"
]
public enum MemLevel {
    /**
     * Minimum memory used by the **zlib** API during compression.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.BundleManager.Zlib"
    ]
    MemLevelMin
    |
    /**
     * Maximum memory used by the **zlib** API during compression.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.BundleManager.Zlib"
    ]
    MemLevelMax
    |
    /**
     * Default memory used by the **zlib** API during compression.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.BundleManager.Zlib"
    ]
    MemLevelDefault
    | ...
}

extend MemLevel <: ToString {
    /**
     * Converts the MemLevel to its string representation.
     * @returns { String } A string representation of the MemLevel.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.BundleManager.Zlib"
    ]
    public func toString(): String
}

extend MemLevel <: Equatable<MemLevel> {
    /**
     * Compares this MemLevel with another for equality.
     * @param { MemLevel } other - The MemLevel to compare with.
     * @returns { Bool } True if both modes are equal, false otherwise.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.BundleManager.Zlib"
    ]
    public operator func ==(other: MemLevel): Bool

    /**
     * Compares this MemLevel with another for inequality.
     * @param { MemLevel } other - The MemLevel to compare with.
     * @returns { Bool } True if both modes are not equal, false otherwise.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.BundleManager.Zlib"
    ]
    public operator func !=(other: MemLevel): Bool
}

/**
 * CompressFlushMode.
 */
@!APILevel[
    since: "26.1.0",
    syscap: "SystemCapability.BundleManager.Zlib"
]
public enum CompressFlushMode {
    /**
     * Default value, indicating a normal operation.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.BundleManager.Zlib"
    ]
    NoFlush
    |
    /**
     * Generates some refresh points in the stream.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.BundleManager.Zlib"
    ]
    PartialFlush
    |
    /**
     * Forcibly outputs all compressed data while maintaining the compression stream state.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.BundleManager.Zlib"
    ]
    SyncFlush
    |
    /**
     * Resets the compression state.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.BundleManager.Zlib"
    ]
    FullFlush
    |
    /**
     * Ends the compression or decompression process.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.BundleManager.Zlib"
    ]
    Finish
    |
    /**
     * Allows more precise control.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.BundleManager.Zlib"
    ]
    Block
    |
    /**
     * Implements special purposes.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.BundleManager.Zlib"
    ]
    Trees
    | ...
}

extend CompressFlushMode <: ToString {
    /**
     * Converts the CompressFlushMode to its string representation.
     * @returns { String } A string representation of the CompressFlushMode.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.BundleManager.Zlib"
    ]
    public func toString(): String
}

extend CompressFlushMode <: Equatable<CompressFlushMode> {
    /**
     * Compares this CompressFlushMode with another for equality.
     * @param { CompressFlushMode } other - The CompressFlushMode to compare with.
     * @returns { Bool } True if both modes are equal, false otherwise.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.BundleManager.Zlib"
    ]
    public operator func ==(other: CompressFlushMode): Bool

    /**
     * Compares this CompressFlushMode with another for inequality.
     * @param { CompressFlushMode } other - The CompressFlushMode to compare with.
     * @returns { Bool } True if both modes are not equal, false otherwise.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.BundleManager.Zlib"
    ]
    public operator func !=(other: CompressFlushMode): Bool
}

/**
 * Return codes for the compression/decompression functions.
 */
@!APILevel[
    since: "26.1.0",
    syscap: "SystemCapability.BundleManager.Zlib"
]
public enum ReturnStatus {
    /**
     * The API is successfully called. This API is supported for use in atomic services.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.BundleManager.Zlib"
    ]
    Ok
    |
    /**
     * The API is successfully called, indicating that the entire data has been processed.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.BundleManager.Zlib"
    ]
    StreamEnd
    |
    /**
     * The API is successfully called, indicating that a preset dictionary is required to continue decompression.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.BundleManager.Zlib"
    ]
    NeedDict
    |
    /**
     * The API fails to be called, indicating that the file operation is incorrect.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.BundleManager.Zlib"
    ]
    Errno
    |
    /**
     * The API fails to be called, indicating that the compression or decompression stream is incorrect.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.BundleManager.Zlib"
    ]
    StreamError
    |
    /**
     * The API fails to be called, indicating that the input data is incorrect.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.BundleManager.Zlib"
    ]
    DataError
    |
    /**
     * The API fails to be called, indicating that the memory allocation fails.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.BundleManager.Zlib"
    ]
    MemError
    |
    /**
     * The API fails to be called, indicating that the input buffer is incorrect.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.BundleManager.Zlib"
    ]
    BufError
    | ...
}

extend ReturnStatus <: ToString {
    /**
     * Converts the ReturnStatus to its string representation.
     * @returns { String } A string representation of the ReturnStatus.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.BundleManager.Zlib"
    ]
    public func toString(): String
}

extend ReturnStatus <: Equatable<ReturnStatus> {
    /**
     * Compares this ReturnStatus with another for equality.
     * @param { ReturnStatus } other - The ReturnStatus to compare with.
     * @returns { Bool } True if both modes are equal, false otherwise.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.BundleManager.Zlib"
    ]
    public operator func ==(other: ReturnStatus): Bool

    /**
     * Compares this ReturnStatus with another for inequality.
     * @param { ReturnStatus } other - The ReturnStatus to compare with.
     * @returns { Bool } True if both modes are not equal, false otherwise.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.BundleManager.Zlib"
    ]
    public operator func !=(other: ReturnStatus): Bool
}

/**
 * The deflate compression method (the only one supported in this version).
 */
@!APILevel[
    since: "26.1.0",
    syscap: "SystemCapability.BundleManager.Zlib"
]
public enum CompressMethod {
    /**
     * Compression method.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.BundleManager.Zlib"
    ]
    Deflated
    | ...
}

extend CompressMethod <: ToString {
    /**
     * Converts the CompressMethod to its string representation.
     * @returns { String } A string representation of the CompressMethod.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.BundleManager.Zlib"
    ]
    public func toString(): String
}

extend CompressMethod <: Equatable<CompressMethod> {
    /**
     * Compares this CompressMethod with another for equality.
     * @param { CompressMethod } other - The CompressMethod to compare with.
     * @returns { Bool } True if both modes are equal, false otherwise.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.BundleManager.Zlib"
    ]
    public operator func ==(other: CompressMethod): Bool

    /**
     * Compares this CompressMethod with another for inequality.
     * @param { CompressMethod } other - The CompressMethod to compare with.
     * @returns { Bool } True if both modes are not equal, false otherwise.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.BundleManager.Zlib"
    ]
    public operator func !=(other: CompressMethod): Bool
}

/**
 * Defines options used to compress or decompress a ZIP file.
 */
@!APILevel[
    since: "26.1.0",
    syscap: "SystemCapability.BundleManager.Zlib"
]
public class Options {
    /**
     * Compression level specified for compression or decompression.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.BundleManager.Zlib"
    ]
    public mut prop level: ?CompressLevel

    /**
     * Memory level specified for compression.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.BundleManager.Zlib"
    ]
    public mut prop memLevel: ?MemLevel

    /**
     * Compression strategy specified for compression.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.BundleManager.Zlib"
    ]
    public mut prop strategy: ?CompressStrategy

    /**
     * A constructor used to create an Options.
     *
     * @param { ?CompressLevel } [level] - Compression level specified for compression or decompression.
     * @param { ?MemLevel } [memLevel] - Memory level specified for compression.
     * @param { ?CompressStrategy } [strategy] - Compression strategy specified for compression.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.BundleManager.Zlib"
    ]
    public init(
        level!: ?CompressLevel = None,
        memLevel!: ?MemLevel = None,
        strategy!: ?CompressStrategy = None
    )
}

/**
 * Process all the information required for compression and decompression.
 */
@!APILevel[
    since: "26.1.0",
    syscap: "SystemCapability.BundleManager.Zlib"
]
public class ZStream {
    /**
     * Input bytes to be compressed.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.BundleManager.Zlib"
    ]
    public mut prop nextIn: ?ArrayBuffer

    /**
     * Number of bytes available for **nextIn**.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.BundleManager.Zlib"
    ]
    public mut prop availableIn: ?UInt32

    /**
     * Total number of input bytes read so far.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.BundleManager.Zlib"
    ]
    public mut prop totalIn: ?UInt64

    /**
     * Output bytes after compression.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.BundleManager.Zlib"
    ]
    public mut prop nextOut: ?ArrayBuffer

    /**
     * Number of remaining bytes available for **nextOut**.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.BundleManager.Zlib"
    ]
    public mut prop availableOut: ?UInt32

    /**
     * Total number of output bytes.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.BundleManager.Zlib"
    ]
    public mut prop totalOut: ?UInt64

    /**
     * Binary or text of **deflate**, or decoding state of **inflate**.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.BundleManager.Zlib"
    ]
    public mut prop dataType: ?Int32

    /**
     * Adler-32 or CRC-32 value of uncompressed data.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.BundleManager.Zlib"
    ]
    public mut prop adler: ?UInt64

    /**
     * A constructor used to create a ZStream.
     *
     * @param { ?ArrayBuffer } [nextIn] - Input bytes to be compressed.
     * @param { ?UInt32 } [availableIn] - Number of bytes available for **nextIn**.
     * @param { ?UInt64 } [totalIn] - Total number of input bytes read so far.
     * @param { ?ArrayBuffer } [nextOut] - Output bytes after compression.
     * @param { ?UInt32 } [availableOut] - Number of remaining bytes available for **nextOut**.
     * @param { ?UInt64 } [totalOut] - Total number of output bytes.
     * @param { ?Int32 } [dataType] - Binary or text of **deflate**, or decoding state of **inflate**.
     * @param { ?UInt64 } [adler] - Adler-32 or CRC-32 value of uncompressed data.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.BundleManager.Zlib"
    ]
    public init(
        nextIn!: ?ArrayBuffer = None,
        availableIn!: ?UInt32 = None,
        totalIn!: ?UInt64 = None,
        nextOut!: ?ArrayBuffer = None,
        availableOut!: ?UInt32 = None,
        totalOut!: ?UInt64 = None,
        dataType!: ?Int32 = None,
        adler!: ?UInt64 = None
    )
}

/**
 * Compression and decompression return value information.
 */
@!APILevel[
    since: "26.1.0",
    syscap: "SystemCapability.BundleManager.Zlib"
]
public class ZipOutputInfo {
    /**
     * For details, see ReturnStatus.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.BundleManager.Zlib"
    ]
    public mut prop status: ReturnStatus

    /**
     * Total length of the destination buffer.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.BundleManager.Zlib"
    ]
    public mut prop destLen: Int64
}

/**
 * Compresses a file. This API uses an asynchronous callback to return the result.
 *
 * **NOTE**
 *
 * To avoid path traversal, the input parameters of **inFile** and **outFile** cannot contain two consecutive periods
 * and a slash (../). Otherwise, error codes 900001 and 900002 are returned.
 *
 * @param { String } inFile - Path of the folder or file to compress. The path must be an application sandbox path,
 *     which can be obtained from the context. For details about the context, see FA Model and Stage Model. The folder
 *     to compress cannot be empty. Otherwise, an error will be reported when decompressFile is used to decompress the
 *     folder.
 * @param { String } outFile - Path of the compressed file. When multiple threads compress files at the same time, the
 *     values of **outFile** must be different.
 * @param { Options } options - Compression parameters.
 * @param { AsyncCallback<Unit> } callback - Callback used to return the result. If the operation is successful,
 *     **null** is returned; otherwise, a specific error code is returned.
 * @throws { BusinessException } 900001 - The input source file is invalid.
 * @throws { BusinessException } 900002 - The input destination file is invalid.
 */
@!APILevel[
    since: "26.1.0",
    syscap: "SystemCapability.BundleManager.Zlib",
    throwexception: true
]
public func compressFile(inFile: String, outFile: String, options: Options, callback: AsyncCallback<Unit>): Unit

/**
 * Compresses multiple specified files. This API uses an asynchronous callback to return the result.
 *
 * @param { Array<String> } inFiles - Path of the folder or file to compress. The path must be an application sandbox
 *     path, which can be obtained from the context. For details about the context, see FA Model and Stage Model. The
 *     folder to compress cannot be empty. Otherwise, an error will be reported when decompressFile is used to
 *     decompress the folder.
 * @param { String } outFile - Path of the compressed file. When multiple threads compress files at the same time, the
 *     values of **outFile** must be different.
 * @param { Options } options - Compression parameters.
 * @param { AsyncCallback<Unit> } callback - Callback used to return the result. If the operation is successful,
 *     **null** is returned; otherwise, a specific error code is returned.
 * @throws { BusinessException } 900001 - The input source file is invalid.
 * @throws { BusinessException } 900002 - The input destination file is invalid.
 */
@!APILevel[
    since: "26.1.0",
    syscap: "SystemCapability.BundleManager.Zlib",
    throwexception: true
]
public func compressFiles(inFiles: Array<String>, outFile: String, options: Options,
    callback: AsyncCallback<Unit>): Unit

/**
 * Decompresses a file. This API uses an asynchronous callback to return the result.
 *
 * **NOTE**
 *
 * To avoid path traversal, the input parameters of **inFile** and **outFile** cannot contain two consecutive periods
 * and a slash (../). Otherwise, error codes 900001 and 900002 are returned.
 *
 * The name of the zipped file or zipped folder cannot contain two consecutive periods and a slash (../). Otherwise,
 * the error code 900003 is returned.
 *
 * @param { String } inFile - Path of the file to decompress. The file name extension must be .zip. The path must be
 *     an application sandbox path, which can be obtained from the context. For details about the context, see FA Model
 *     and Stage Model. If the .zip file to be unzipped contains Chinese file names or folder names, use UTF-8 to
 *     encode them. Otherwise, garbled characters may be displayed after unzipping.
 * @param { String } outFile - Path of the decompressed file. The path must exist in the system. Otherwise, the
 *     decompression fails. The path must be an application sandbox path, which can be obtained from the context. For
 *     details about the context, see FA Model and Stage Model. If a file or folder with the same name already exists
 *     in the path, they will be overwritten. When multiple threads decompress files at the same time, the values of
 *     **outFile** must be different.
 * @param { Options } options - Decompression parameters.
 * @param { AsyncCallback<Unit> } callback - Callback used to return the result. If the operation is successful,
 *     **null** is returned; otherwise, a specific error code is returned.
 * @throws { BusinessException } 900001 - The input source file is invalid.
 * @throws { BusinessException } 900002 - The input destination file is invalid.
 * @throws { BusinessException } 900003 - The input source file is not in ZIP format or is damaged.
 */
@!APILevel[
    since: "26.1.0",
    syscap: "SystemCapability.BundleManager.Zlib",
    throwexception: true
]
public func decompressFile(inFile: String, outFile: String, options: Options, callback: AsyncCallback<Unit>): Unit

/**
 * Decompresses a file. This API uses an asynchronous callback to return the result.
 *
 * **NOTE**
 *
 * To avoid path traversal, the input parameters of **inFile** and **outFile** cannot contain two consecutive periods
 * and a slash (../). Otherwise, error codes 900001 and 900002 are returned.
 *
 * The name of the zipped file or zipped folder cannot contain two consecutive periods and a slash (../). Otherwise,
 * the error code 900003 is returned.
 *
 * @param { String } inFile - Path of the file to decompress. The file name extension must be .zip. The path must be
 *     an application sandbox path, which can be obtained from the context. For details about the context, see FA Model
 *     and Stage Model. If the .zip file to be unzipped contains Chinese file names or folder names, use UTF-8 to
 *     encode them. Otherwise, garbled characters may be displayed after unzipping.
 * @param { String } outFile - Path of the decompressed file. The path must exist in the system. Otherwise, the
 *     decompression fails. The path must be an application sandbox path, which can be obtained from the context. For
 *     details about the context, see FA Model and Stage Model. If a file or folder with the same name already exists
 *     in the path, they will be overwritten. When multiple threads decompress files at the same time, the values of
 *     **outFile** must be different.
 * @param { AsyncCallback<Unit> } callback - Callback used to return the result. If the operation is successful,
 *     **null** is returned; otherwise, a specific error code is returned.
 * @throws { BusinessException } 900001 - The input source file is invalid.
 * @throws { BusinessException } 900002 - The input destination file is invalid.
 * @throws { BusinessException } 900003 - The input source file is not in ZIP format or is damaged.
 */
@!APILevel[
    since: "26.1.0",
    syscap: "SystemCapability.BundleManager.Zlib",
    throwexception: true
]
public func decompressFile(inFile: String, outFile: String, callback: AsyncCallback<Unit>): Unit

/**
 * Obtains the original size of a compressed file. This API uses an asynchronous callback to return the result.
 *
 * @param { String } compressedFile - Specifies the path of the compressed file. Only .zip files are supported. The
 *     path must be an application sandbox path, which can be obtained from the context. For details about the context,
 *     see FA Model and Stage Model.
 * @param { AsyncCallback<Int64> } callback - Callback used to return the original size of the compressed file, in
 *     bytes.
 * @throws { BusinessException } 900001 - The input source file is invalid.
 * @throws { BusinessException } 900003 - The input source file is not in ZIP format or is damaged.
 */
@!APILevel[
    since: "26.1.0",
    syscap: "SystemCapability.BundleManager.Zlib",
    throwexception: true
]
public func getOriginalSize(compressedFile: String, callback: AsyncCallback<Int64>): Unit

/**
 * Creates this checksum object. This API uses an asynchronous callback to return the result.
 *
 * @param { AsyncCallback<Checksum> } callback - Callback used to return the created checksum object.
 */
@!APILevel[
    since: "26.1.0",
    syscap: "SystemCapability.BundleManager.Zlib"
]
public func createChecksum(callback: AsyncCallback<Checksum>): Unit

/**
 * Creates this **Zip** instance. This API uses an asynchronous callback to return the result.
 *
 * @param { AsyncCallback<Zip> } callback - Callback used to return the **Zip** instance created.
 */
@!APILevel[
    since: "26.1.0",
    syscap: "SystemCapability.BundleManager.Zlib"
]
public func createZip(callback: AsyncCallback<Zip>): Unit

/**
 * Creates this **GZip** object. This API uses an asynchronous callback to return the result.
 *
 * @param { AsyncCallback<GZip> } callback - Callback used to return the **GZip** object created.
 */
@!APILevel[
    since: "26.1.0",
    syscap: "SystemCapability.BundleManager.Zlib"
]
public func createGZip(callback: AsyncCallback<GZip>): Unit

/**
 * Checksum object.
 */
@!APILevel[
    since: "26.1.0",
    syscap: "SystemCapability.BundleManager.Zlib"
]
public class Checksum {
    /**
     * Updates a CRC-32 checksum. This API uses an asynchronous callback to return the result.
     *
     * @param { UInt64 } crc - Initial value of the CRC-32 checksum.
     * @param { ArrayBuffer } buf - Data buffer for calculating the checksum.
     * @param { AsyncCallback<UInt64> } callback - Callback used to return the updated CRC-32 checksum.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.BundleManager.Zlib"
    ]
    public func crc32(crc: UInt64, buf: ArrayBuffer, callback: AsyncCallback<UInt64>): Unit
}

/**
 * Defines the **Zip** instance. It provides APIs to zip or unzip data in Zlib, Deflate, or Gzip format.
 */
@!APILevel[
    since: "26.1.0",
    syscap: "SystemCapability.BundleManager.Zlib"
]
public class Zip {
    /**
     * Obtains this stream. This API uses an asynchronous callback to return the result.
     *
     * @param { AsyncCallback<ZStream> } callback - Callback used to return the **ZStream** object.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.BundleManager.Zlib"
    ]
    public func getZStream(callback: AsyncCallback<ZStream>): Unit

    /**
     * Compresses the source buffer into the destination buffer. This API uses an asynchronous callback to return the
     * result.
     *
     * @param { ArrayBuffer } dest - Destination buffer.
     * @param { ArrayBuffer } source - Source buffer.
     * @param { AsyncCallback<ZipOutputInfo> } callback - Callback used to return the result status and the total size
     *     of the destination buffer.
     * @param { ?Int64 } [sourceLen] - Length of the source data. The default value is **0**.
     * @throws { BusinessException } 17800007 - The input buffer is incorrect, and the output buffer is too small to
     *     accommodate the compressed or decompressed data.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.BundleManager.Zlib",
        throwexception: true
    ]
    public func compress(dest: ArrayBuffer, source: ArrayBuffer, callback: AsyncCallback<ZipOutputInfo>,
        sourceLen!: ?Int64 = None): Unit

    /**
     * Compresses the source buffer into the destination buffer. This API uses an asynchronous callback to return the
     * result.
     *
     * @param { ArrayBuffer } dest - Destination buffer.
     * @param { ArrayBuffer } source - Source buffer.
     * @param { CompressLevel } level - For details, see CompressLevel.
     * @param { AsyncCallback<ZipOutputInfo> } callback - Callback used to return the result status and the total size
     *     of the destination buffer.
     * @param { ?Int64 } [sourceLen] - Length of the source data. The default value is **0**.
     * @throws { BusinessException } 17800004 - Compression or decompression stream error, which may be caused by an
     *     initialization error in the zlib stream structure or a modified structure.
     * @throws { BusinessException } 17800007 - The input buffer is incorrect, and the output buffer is too small to
     *     accommodate the compressed or decompressed data.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.BundleManager.Zlib",
        throwexception: true
    ]
    public func compress2(dest: ArrayBuffer, source: ArrayBuffer, level: CompressLevel,
        callback: AsyncCallback<ZipOutputInfo>, sourceLen!: ?Int64 = None): Unit

    /**
     * Calculates the maximum size of the compressed data to be returned. This API uses an asynchronous callback to
     * return the result.
     *
     * @param { Int32 } sourceLen - Length of the source data.
     * @param { AsyncCallback<Int32> } callback - Callback used to return the maximum size of the compressed data.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.BundleManager.Zlib"
    ]
    public func compressBound(sourceLen: Int32, callback: AsyncCallback<Int32>): Unit

    /**
     * Decompresses the compressed data into the raw data. This API uses an asynchronous callback to return the
     * result.
     *
     * @param { ArrayBuffer } dest - Destination buffer.
     * @param { ArrayBuffer } source - Source buffer.
     * @param { AsyncCallback<ZipOutputInfo> } callback - Callback used to return the result status and the total size
     *     of the destination buffer.
     * @param { ?Int64 } [sourceLen] - Length of the source data. The default value is **0**.
     * @throws { BusinessException } 17800005 - The input data is incorrect. For example, the data does not conform to
     *     the zlib compression format, the compressed data is corrupted, or the data is not compressed.
     * @throws { BusinessException } 17800007 - The input buffer is incorrect, and the output buffer is too small to
     *     accommodate the compressed or decompressed data.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.BundleManager.Zlib",
        throwexception: true
    ]
    public func uncompress(dest: ArrayBuffer, source: ArrayBuffer, callback: AsyncCallback<ZipOutputInfo>,
        sourceLen!: ?Int64 = None): Unit

    /**
     * Initializes a decompression stream with the specified **windowBits**. This API uses an asynchronous callback to
     * return the result.
     *
     * @param { ZStream } strm - For details, see ZStream.
     * @param { Int32 } windowBits - Memory window size. The value is restricted in certain range based on the data
     *     formats. The options are as follows:<br>Zlib: [1, 15]<br>Gzip: (15, +∞)<br>Raw Deflate: [-15, -1]
     * @param { AsyncCallback<ReturnStatus> } callback - Callback used to return the result status.
     * @throws { BusinessException } 17800004 - Compression or decompression stream error, which may be caused by an
     *     initialization error in the zlib stream structure or a modified structure.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.BundleManager.Zlib",
        throwexception: true
    ]
    public func inflateInit2(strm: ZStream, windowBits: Int32, callback: AsyncCallback<ReturnStatus>): Unit

    /**
     * Initializes a decompression stream. This API uses an asynchronous callback to return the result.
     *
     * @param { ZStream } strm - For details, see ZStream.
     * @param { AsyncCallback<ReturnStatus> } callback - Callback used to return the result status.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.BundleManager.Zlib"
    ]
    public func inflateInit(strm: ZStream, callback: AsyncCallback<ReturnStatus>): Unit

    /**
     * Releases all dynamically allocated data structs of a decompression stream. This API uses an asynchronous
     * callback to return the result.
     *
     * @param { ZStream } strm - For details, see ZStream.
     * @param { AsyncCallback<ReturnStatus> } callback - Callback used to return the result status.
     * @throws { BusinessException } 17800004 - Compression or decompression stream error, which may be caused by an
     *     initialization error in the zlib stream structure or a modified structure.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.BundleManager.Zlib",
        throwexception: true
    ]
    public func inflateEnd(strm: ZStream, callback: AsyncCallback<ReturnStatus>): Unit

    /**
     * Inflates data. This API uses an asynchronous callback to return the result.
     *
     * @param { ZStream } strm - For details, see ZStream.
     * @param { CompressFlushMode } flush - For details, see CompressFlushMode.
     * @param { AsyncCallback<ReturnStatus> } callback - Callback used to return the result status.
     * @throws { BusinessException } 17800004 - Compression or decompression stream error, which may be caused by an
     *     initialization error in the zlib stream structure or a modified structure.
     * @throws { BusinessException } 17800005 - The input data is incorrect. For example, the data does not conform to
     *     the zlib compression format, the compressed data is corrupted, or the data is not compressed.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.BundleManager.Zlib",
        throwexception: true
    ]
    public func inflate(strm: ZStream, flush: CompressFlushMode, callback: AsyncCallback<ReturnStatus>): Unit

    /**
     * Initializes a compression stream with the specified compression level, compression method, window size, memory
     * level, and compression strategy. This API uses an asynchronous callback to return the result.
     *
     * @param { ZStream } strm - For details, see ZStream.
     * @param { CompressLevel } level - For details, see CompressLevel.
     * @param { CompressMethod } method - For details, see CompressMethod.
     * @param { Int32 } windowBits - Memory window size. The value is restricted in certain range based on the data
     *     formats. The options are as follows:<br>Zlib: [1, 15]<br>Gzip: (15, +∞)<br>Raw Deflate: [-15, -1]
     * @param { MemLevel } memLevel - For details, see MemLevel.
     * @param { CompressStrategy } strategy - For details, see CompressStrategy.
     * @param { AsyncCallback<ReturnStatus> } callback - Callback used to return the result status.
     * @throws { BusinessException } 17800004 - Compression or decompression stream error, which may be caused by an
     *     initialization error in the zlib stream structure or a modified structure.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.BundleManager.Zlib",
        throwexception: true
    ]
    public func deflateInit2(strm: ZStream, level: CompressLevel, method: CompressMethod, windowBits: Int32,
        memLevel: MemLevel, strategy: CompressStrategy, callback: AsyncCallback<ReturnStatus>): Unit

    /**
     * Deflates data. This API uses an asynchronous callback to return the result.
     *
     * @param { ZStream } strm - For details, see ZStream.
     * @param { CompressFlushMode } flush - For details, see CompressFlushMode.
     * @param { AsyncCallback<ReturnStatus> } callback - Callback used to return the result status.
     * @throws { BusinessException } 17800004 - Compression or decompression stream error, which may be caused by an
     *     initialization error in the zlib stream structure or a modified structure.
     * @throws { BusinessException } 17800007 - The input buffer is incorrect, and the output buffer is too small to
     *     accommodate the compressed or decompressed data.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.BundleManager.Zlib",
        throwexception: true
    ]
    public func deflate(strm: ZStream, flush: CompressFlushMode, callback: AsyncCallback<ReturnStatus>): Unit

    /**
     * Releases all dynamically allocated data structs of a decompression stream. This API uses an asynchronous
     * callback to return the result.
     *
     * @param { ZStream } strm - For details, see ZStream.
     * @param { AsyncCallback<ReturnStatus> } callback - Callback used to return the result status.
     * @throws { BusinessException } 17800004 - Compression or decompression stream error, which may be caused by an
     *     initialization error in the zlib stream structure or a modified structure.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.BundleManager.Zlib",
        throwexception: true
    ]
    public func deflateEnd(strm: ZStream, callback: AsyncCallback<ReturnStatus>): Unit
}

/**
 * Describes gzip-related APIs.
 */
@!APILevel[
    since: "26.1.0",
    syscap: "SystemCapability.BundleManager.Zlib"
]
public class GZip {
    /**
     * Associates gzip file with the file descriptor (fd) and opens the file for reading and decompressing, or
     * compressing and writing. This API uses an asynchronous callback to return the result.
     *
     * @param { Int32 } fd - File descriptor. Generally, the value is obtained by calling the **open** method or other
     *     methods.
     * @param { String } mode - Specifies the access mode. For details, see the description of gzopen.
     * @param { AsyncCallback<Unit> } callback - Callback used to return the result. No value is returned.
     * @throws { BusinessException } 17800002 - No such file or access mode error.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.BundleManager.Zlib",
        throwexception: true
    ]
    public func gzdopen(fd: Int32, mode: String, callback: AsyncCallback<Unit>): Unit

    /**
     * Opens the .gz file in the specified path for reading and decompressing, or compressing and writing. This API
     * uses an asynchronous callback to return the result.
     *
     * @param { String } path - Path of the file to be opened.
     * @param { String } mode - Specifies a mode for opening a file.<br>Basic modes (one of the following must be
     *     selected):<br>- **"r"** or **"rb"**: read mode. The system automatically detects and decompresses the gzip
     *     file. If the file is not in gzip format, the original data is directly read.<br>- **"w"** or **"wb"**: write
     *     mode. The system creates a new file and compresses data.<br>- **"a"** or **"ab"**: append mode. The system
     *     appends a new gzip stream to the end of the existing file without verifying the format of the original
     *     file.<br>Optional function parameters (can be used together):<br>- Compression level: **0** (no
     *     compression) to **9** (maximum compression). The default compression level is **6**. This parameter must be
     *     used together with the write or append mode.<br>- Compression strategy: **"f"** (filtering strategy),
     *     **"h"** (Huffman coding strategy), **"R"** (RLE compression strategy), or **"F"** (fixed encoding
     *     strategy). You can only select one of the strategies.<br>- Transparent mode: **"T"**. In this mode, data is
     *     not compressed and no gzip header is generated during writing (a common file is generated). This parameter
     *     is mutually exclusive with the compression strategy parameter.<br>- Exclusive creation: **"x"**. The file
     *     fails to be opened if it already exists. This parameter must be used together with the write or append
     *     mode.<br>- Close-on-exec flag: **"e"**. This parameter is used to set the **FD_CLOEXEC** property of the
     *     file descriptor (system-dependent).<br>Examples:<br>- **"r"**: read mode. Data is read in binary
     *     format.<br>- **"rb"**: read mode. Data is read in binary format.<br>- **"wb6"**: write mode. Data is
     *     written in binary format with the compression level of 6.<br>- **"wb9f"**: write mode. Data is written in
     *     binary format with the maximum compression level and filtering strategy.<br>- **"wbT"**: write mode. Data
     *     is not compressed and a common file is generated.<br>- **"wbx"**: write mode. Data is written to the
     *     exclusively created file in binary format.<br>- **"abx"**: append mode. Data is appended and written to the
     *     exclusively created file in binary format.
     * @param { AsyncCallback<Unit> } callback - Callback used to return the result. No value is returned.
     * @throws { BusinessException } 17800002 - No such file or access mode error.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.BundleManager.Zlib",
        throwexception: true
    ]
    public func gzopen(path: String, mode: String, callback: AsyncCallback<Unit>): Unit

    /**
     * Checks whether the position from which data is read has reached the end of the gzip file. This API uses an
     * asynchronous callback to return the result.
     *
     * @param { AsyncCallback<Int32> } callback - Callback used to return the result. If the end-of-file indicator is
     *     set while reading, **1** is returned.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.BundleManager.Zlib"
    ]
    public func gzeof(callback: AsyncCallback<Int32>): Unit

    /**
     * Clears all pending output of the file. Closes the file and releases the decompression or compression state if
     * necessary. This API uses an asynchronous callback to return the result.
     *
     * @param { AsyncCallback<ReturnStatus> } callback - Callback used to return the result.
     * @throws { BusinessException } 17800004 - Compression or decompression stream error, which may be caused by an
     *     initialization error in the zlib stream structure or a modified structure.
     * @throws { BusinessException } 17800006 - Memory allocation failed.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.BundleManager.Zlib",
        throwexception: true
    ]
    public func gzclose(callback: AsyncCallback<ReturnStatus>): Unit

    /**
     * Compresses the uncompressed bytes of the declared length in the buffer and writes them to the file. This API
     * uses an asynchronous callback to return the result.
     *
     * @param { ArrayBuffer } buf - Data buffer pointed by an object to be written.
     * @param { Int64 } len - Length of uncompressed bytes.
     * @param { AsyncCallback<Int64> } callback - Callback used to return the result.
     * @throws { BusinessException } 17800009 - Internal structure error.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.BundleManager.Zlib",
        throwexception: true
    ]
    public func gzwrite(buf: ArrayBuffer, len: Int64, callback: AsyncCallback<Int64>): Unit

    /**
     * Reads a maximum of **len** uncompressed bytes from a file and decompresses them into the buffer. This API uses
     * an asynchronous callback to return the result.
     *
     * @param { ArrayBuffer } buf - Target offset position.
     * @param { AsyncCallback<Int64> } callback - Callback used to return the result.
     * @throws { BusinessException } 17800009 - Internal structure error.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.BundleManager.Zlib",
        throwexception: true
    ]
    public func gzread(buf: ArrayBuffer, callback: AsyncCallback<Int64>): Unit

    /**
     * Compresses the given null-terminated strings and writes them to the file, excluding the null operator. This
     * API uses an asynchronous callback to return the result.
     *
     * @param { String } str - Format descriptors and plain text.
     * @param { AsyncCallback<Int32> } callback - Callback used to return the result.
     * @throws { BusinessException } 17800009 - Internal structure error.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.BundleManager.Zlib",
        throwexception: true
    ]
    public func gzputs(str: String, callback: AsyncCallback<Int32>): Unit

    /**
     * Reads bytes from a compressed file until len-1 characters are read, a newline character is read and transferred
     * to a buffer, or an end-of-file condition is encountered. This API uses an asynchronous callback to return the
     * result.
     *
     * @param { ArrayBuffer } buf - Stores the read row data.
     * @param { AsyncCallback<String> } callback - Callback used to return a string ended with **null**.
     * @throws { BusinessException } 17800009 - Internal structure error.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.BundleManager.Zlib",
        throwexception: true
    ]
    public func gzgets(buf: ArrayBuffer, callback: AsyncCallback<String>): Unit
}
