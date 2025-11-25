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

package ohos.multimedia.media

import ohos.labels.APILevel
import ohos.multimedia.image.PixelMap

/**
 * Creates an AVImageGenerator instance.
 * @returns { AVImageGenerator } Returns the AVImageGenerator instance.
 * @throws { BusinessException } 5400101 - No memory.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Multimedia.Media.AVImageGenerator",
    throwexception: true,
    workerthread: true
]
public func createAVImageGenerator(): AVImageGenerator

/**
 * Provides APIs to obtain a thumbnail from a video. Before calling any API of AVImageGenerator,
 * you must use createAVImageGenerator to create an AVImageGenerator instance.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Multimedia.Media.AVImageGenerator"
]
public class AVImageGenerator {
    /**
     * Media file descriptor, which specifies the data source. 
     * @throws { BusinessException } 5400101 - No memory.
     * @throws { BusinessException } 5400102 - Operation not allowed.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Media.AVMetadataExtractor",
        throwexception: true
    ]
    public mut prop fdSrc: AVFileDescriptor

    /**
     * It will decode the given video resource. Then fetch a picture
     * at @timeUs according the given @options and @param .
     * @param { Int64 } timeUs - The time expected to fetch picture from the video resource.
     * The unit is microsecond(us).
     * @param { AVImageQueryOptions } options - The time options about the relationship
     * between the given timeUs and a key frame, see @AVImageQueryOptions .
     * @param { PixelMapParams } param - The output pixel map format params, see @PixelMapParams .
     * @returns { PixelMap } Returns the PixelMap instance.
     * @throws { BusinessException } 5400101 - No memory.
     * @throws { BusinessException } 5400102 - Operation not allowed.
     * @throws { BusinessException } 5400106 - Unsupported format.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Media.AVImageGenerator",
        throwexception: true,
        workerthread: true
    ]
    public func fetchFrameByTime(timeUs: Int64, options: AVImageQueryOptions, param: PixelMapParams): PixelMap

    /**
     * Releases this AVImageGenerator instance.
     * @throws { BusinessException } 5400101 - No memory.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Media.AVImageGenerator",
        throwexception: true,
        workerthread: true
    ]
    public func release(): Unit
}

/**
 * Media file descriptor. The caller needs to ensure that the fd is valid and
 * the offset and length are correct.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Multimedia.Media.Core"
]
public class AVFileDescriptor {
    /**
     * The file descriptor of audio or video source from file system. The caller
     * is responsible to close the file descriptor.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Media.Core"
    ]
    public var fd: Int32

    /**
     * The offset into the file where the data to be read, in bytes. By default,
     * the offset is zero.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Media.Core"
    ]
    public var offset: Int64

    /**
     * The length in bytes of the data to be read. By default, the length is the
     * rest of bytes in the file from the offset.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Media.Core"
    ]
    public var length: Int64

    /**
     * AVFileDescriptor constructor.
     * @param { Int32 } fd - The file descriptor of audio or video source from file system.
     * @param { Int64 } [offset] - The offset into the file where the data to be read, in bytes. By default,
     * the offset is zero.
     * @param { Int64 } [length] - The length in bytes of the data to be read. By default, the length is the
     * rest of bytes in the file from the offset.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Media.Core"
    ]
    public init(
        fd: Int32,
        offset!: Int64 = 0,
        length!: Int64 = -1
    )
}

/**
 * Defines the format parameters of the video thumbnail to be obtained.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Multimedia.Media.AVImageGenerator"
]
public class PixelMapParams {
    /**
     * Width of the thumbnail. The value must be greater than 0 and less than or equal to the width of the original
     * video. Otherwise, the returned thumbnail will not be scaled.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Media.AVImageGenerator"
    ]
    public var width: Int32

    /**
     * Height of the thumbnail. The value must be greater than 0 and less than or equal to the height of the original
     * video. Otherwise, the returned thumbnail will not be scaled.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Media.AVImageGenerator"
    ]
    public var height: Int32

    /**
     * PixelMapParams constructor.
     * @param { Int32 } [width] - Width of the thumbnail.The default value is -1.
     * @param { Int32 } [height] - Height of the thumbnail.The default value is -1.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Media.AVImageGenerator"
    ]
    public init(width!: Int32 = -1, height!: Int32 = -1)
}

/**
 * Enumerates the relationship between the video frame and the time at which the video thumbnail is obtained.
 *
 * The time passed in for obtaining the thumbnail may be different from the time of the video frame for which
 * the thumbnail is actually obtained. Therefore, you need to specify their relationship.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Multimedia.Media.AVImageGenerator"
]
public enum AVImageQueryOptions {
    
    /**
      * The key frame at or next to the specified time is selected.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Media.AVImageGenerator"
    ]
    AvImageQueryNextSync
    | 
    
    /**
      * The key frame at or prior to the specified time is selected.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Media.AVImageGenerator"
    ]
    AvImageQueryPreviousSync
    | 
    
    /**
      * The key frame closest to the specified time is selected.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Media.AVImageGenerator"
    ]
    AvImageQueryClosestSync
    | 
    
    /**
      * The frame (not necessarily a key frame) closest to the specified time is selected.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Media.AVImageGenerator"
    ]
    AvImageQueryClosest
    | ...
}


extend AVImageQueryOptions <: ToString {
    
    /**
     * Converts the AVImageQueryOptions to its string representation.
     * @returns { String } A string representation of the AVImageQueryOptions.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Media.AVImageGenerator"
    ]
    public func toString(): String
}


extend AVImageQueryOptions <: Equatable<AVImageQueryOptions> {
    
    /**
     * Compares this AVImageQueryOptions with another for equality.
     * @param { AVImageQueryOptions } other - The AVImageQueryOptions to compare with.
     * @returns { Bool } True if both modes are equal, false otherwise.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Media.AVImageGenerator"
    ]
    public operator func ==(other: AVImageQueryOptions): Bool
    
    /**
     * Compares this AVImageQueryOptions with another for inequality.
     * @param { AVImageQueryOptions } other - The AVImageQueryOptions to compare with.
     * @returns { Bool } True if both modes are not equal, false otherwise.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Media.AVImageGenerator"
    ]
    public operator func !=(other: AVImageQueryOptions): Bool
}