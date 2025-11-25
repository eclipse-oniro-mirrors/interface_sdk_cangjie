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

package ohos.multimedia.image

import ohos.callback_invoke.Callback0Argument
import ohos.graphics.color_space_manager.ColorSpaceManager
import ohos.labels.APILevel
import ohos.resource_manager.RawFileDescriptor

/**
 * Describes image information.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Multimedia.Image.Core"
]
public class ImageInfo {
    /**
     * Indicates image dimensions.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    public var size: Size

    /**
     * Indicates image default density.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    public var density: Int32

    /**
     * The number of byte per row.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    public var stride: Int32

    /**
     * Indicates image format.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    public var pixelFormat: PixelMapFormat

    /**
     * Indicates image alpha type.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    public var alphaType: AlphaType

    /**
     * Indicates image mime type.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    public var mimeType: String

    /**
     * Indicates whether the image high dynamic range.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    public var isHdr: Bool
}

/**
 * Initialization options for ImageSource.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Multimedia.Image.Core"
]
public class SourceOptions {
    /**
     * The density for ImageSource.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    public var sourceDensity: Int32

    /**
     * PixelMap expected format.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    public var sourcePixelFormat: PixelMapFormat

    /**
     * PixelMap size.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    public var sourceSize: Size

    /**
     * SourceOptions constructor.
     *
     * @param { Int32 } sourceDensity - The density for ImageSource.
     * @param { PixelMapFormat } [sourcePixelFormat] - PixelMap expected format.
     * @param { Size } [sourceSize] - PixelMap size.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    public init(sourceDensity: Int32, sourcePixelFormat!: PixelMapFormat = PixelMapFormat.Unknown,
        sourceSize!: Size = Size(0, 0))
}

/**
 * Initialization options for pixelmap.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Multimedia.Image.Core"
]
public class InitializationOptions {
    /**
     * PixelMap expected alpha type.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    public var alphaType: AlphaType

    /**
     * Editable or not.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    public var editable: Bool

    /**
     * PixelMap source format.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    public var srcPixelFormat: PixelMapFormat

    /**
     * PixelMap expected format.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    public var pixelFormat: PixelMapFormat

    /**
     * PixelMap expected scaling effect.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    public var scaleMode: ScaleMode

    /**
     * PixelMap size.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    public var size: Size

    /**
     * InitializationOptions constructor.
     *
     * @param { Size } size - PixelMap size.
     * @param { AlphaType } [alphaType] - PixelMap expected alpha type.
     * @param { Bool } [editable] - Editable or not.
     * @param { PixelMapFormat } [srcPixelFormat] - PixelMap source format.
     * @param { PixelMapFormat } [pixelFormat] - PixelMap expected format.
     * @param { ScaleMode } [scaleMode] - PixelMap expected scaling effect.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    public init(size: Size, alphaType!: AlphaType = AlphaType.Premul, editable!: Bool = false,
        srcPixelFormat!: PixelMapFormat = PixelMapFormat.Bgra8888,
        pixelFormat!: PixelMapFormat = PixelMapFormat.Bgra8888, scaleMode!: ScaleMode = ScaleMode.FitTargetSize)
}

/**
 * Describes image decoding parameters.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Multimedia.Image.ImageSource"
]
public class DecodingOptions {
    /**
     * Number of image frames.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Image.ImageSource"
    ]
    public var index: UInt32

    /**
     * Sampling ratio of the image pixel map.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Image.ImageSource"
    ]
    public var sampleSize: UInt32

    /**
     * Rotation angle of the image pixel map. The value ranges from 0 to 360.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Image.ImageSource"
    ]
    public var rotate: UInt32

    /**
     * Whether the image pixel map is editable.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Image.ImageSource"
    ]
    public var editable: Bool

    /**
     * Width and height of the image pixel map. The value (0, 0) indicates that the pixels are decoded
     * based on the original image size.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Image.ImageSource"
    ]
    public var desiredSize: Size

    /**
     * Cropping region of the image pixel map.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Image.ImageSource"
    ]
    public var desiredRegion: Region

    /**
     * Data format of the image pixel map.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Image.ImageSource"
    ]
    public var desiredPixelFormat: PixelMapFormat

    /**
     * The density for image pixel map.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Image.ImageSource"
    ]
    public var fitDensity: Int32

    /**
     * Color space of the image pixel map.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Image.ImageSource"
    ]
    public var desiredColorSpace: ?ColorSpaceManager

    /**
     * The desired dynamic range of the image pixelmap.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Image.ImageSource"
    ]
    public var desiredDynamicRange: DecodingDynamicRange

    /**
     * DecodingOptions constructor.
     *
     * @param { UInt32 } [sampleSize] - PixelMap size.
     * @param { UInt32 } [rotate] - Rotation angle of the image pixel map. The value ranges from 0 to 360.
     * @param { Bool } [editable] - Whether the image pixel map is editable.
     * @param { Size } [desiredSize] - Width and height of the image pixel map.
     * @param { Region } [desiredRegion] - Cropping region of the image pixel map.
     * @param { PixelMapFormat } [desiredPixelFormat] - Data format of the image pixel map.
     * @param { UInt32 } [index] - Number of image frames.
     * @param { Int32 } [fitDensity] - The density for image pixel map.
     * @param { ColorSpaceManager } [desiredColorSpace] - Color space of the image pixel map.
     * @param { DecodingDynamicRange } [desiredDynamicRange] - The desired dynamic range of the image pixelmap.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Image.ImageSource"
    ]
    public init(sampleSize!: UInt32 = 1, rotate!: UInt32 = 0, editable!: Bool = false, desiredSize!: Size = Size(0, 0),
        desiredRegion!: Region = Region(Size(0, 0), 0, 0), desiredPixelFormat!: PixelMapFormat = Unknown,
        index!: UInt32 = 0, fitDensity!: Int32 = 0, desiredColorSpace!: ?ColorSpaceManager = None,
        desiredDynamicRange!: DecodingDynamicRange = Sdr)
}

/**
 * Describes area information in an image.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Multimedia.Image.Core"
]
public class PositionArea {
    /**
     * Image data that will be read or written.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    public var pixels: Array<UInt8>

    /**
     * Offset for data reading.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    public var offset: UInt32

    /**
     * Number of bytes to read.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    public var stride: UInt32

    /**
     * Region to read.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    public var region: Region

    /**
     * PositionArea constructor.
     *
     * @param { Array<UInt8> } pixels - Image data that will be read or written.
     * @param { UInt32 } offset - Offset for data reading.
     * @param { UInt32 } stride - Number of bytes to read.
     * @param { Region } region - Region to read.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    public init(pixels: Array<UInt8>, offset: UInt32, stride: UInt32, region: Region)
}

/**
 * Describes the size of an image.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Multimedia.Image.Core"
]
public class Size {
    /**
     * Height.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    public var height: Int32

    /**
     * Width.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    public var width: Int32

    /**
     * Size constructor.
     *
     * @param { Int32 } height - Height.
     * @param { Int32 } width - Width.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    public init(height: Int32, width: Int32)
}

/**
 * Describes region information.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Multimedia.Image.Core"
]
public class Region {
    /**
     * Image size.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    public var size: Size

    /**
     * x-coordinate at the upper left corner of the image.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    public var x: Int32

    /**
     * y-coordinate at the upper left corner of the image.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    public var y: Int32

    /**
     * Region constructor.
     *
     * @param { Size } size - Image size.
     * @param { Int32 } x - x-coordinate at the upper left corner of the image.
     * @param { Int32 } y - y-coordinate at the upper left corner of the image.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    public init(size: Size, x: Int32, y: Int32)
}

/**
 * Describes image color components.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Multimedia.Image.Core"
]
public class Component {
    /**
     * Component type.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    public let componentType: ComponentType

    /**
     * Row stride.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    public let rowStride: Int32

    /**
     * Pixel stride.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    public let pixelStride: Int32

    /**
     * Component buffer.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    public let byteBuffer: Array<UInt8>
}

/**
 * Describes the option for image packing.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Multimedia.Image.ImagePacker"
]
public class PackingOption {
    /**
     * Multipurpose Internet Mail Extensions (MIME) format of the target image, for example, image/jpeg.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Image.ImagePacker"
    ]
    public var format: String

    /**
     * Quality of the target image. The value is an integer ranging from 0 to 100. A larger value indicates better.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Image.ImagePacker"
    ]
    public var quality: UInt8

    /**
     * BufferSize of the target image.
     * If this bufferSize is less than or equal to 0, it will be converted to 10MB.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Image.ImagePacker"
    ]
    public var bufferSize: UInt64

    /**
     * The desired dynamic range of the target image.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Image.ImagePacker"
    ]
    public var desiredDynamicRange: PackingDynamicRange

    /**
     * Whether the image properties can be saved, like Exif.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Image.ImagePacker"
    ]
    public var needsPackProperties: Bool

    /**
     * PackingOption constructor.
     *
     * @param { String } format - Multipurpose Internet Mail Extensions (MIME) format of the target image,
     * for example, image/jpeg.
     * @param { UInt8 } quality - Quality of the target image. The value is an integer ranging from 0 to 100.
     * A larger value indicates better.
     * @param { UInt64 } [bufferSize] - BufferSize of the target image.
     * If bufferSize is equal to 0, then a suitable value is used instead of 0.
     * @param { PackingDynamicRange } [desiredDynamicRange] - The desired dynamic range of the target image.
     * @param { Bool } [needsPackProperties] - Whether the image properties can be saved, like Exif.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Image.ImagePacker"
    ]
    public init(format: String, quality: UInt8, bufferSize!: UInt64 = 0,
        desiredDynamicRange!: PackingDynamicRange = Sdr, needsPackProperties!: Bool = false)
}

/**
 * Describes image properties.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Multimedia.Image.ImageSource"
]
public class ImagePropertyOptions {
    /**
     * Index of an image.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Image.ImageSource"
    ]
    public var index: UInt32

    /**
     * Default property value.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Image.ImageSource"
    ]
    public var defaultValue: String

    /**
     * ImagePropertyOptions constructor.
     *
     * @param { UInt32 } [index] - Index of an image.
     * @param { String } [defaultValue] - Default property value.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Image.ImageSource"
    ]
    public init(index!: UInt32 = 0, defaultValue!: String = "")
}

/**
 * Enumerates pixel map formats.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Multimedia.Image.Core"
]
public enum PixelMapFormat {
    /**
     * Indicates an unknown format.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    Unknown
    |
    /**
     * Indicates that each pixel is stored on 16 bits. Only the R, G, and B components are encoded
     * from the higher-order to the lower-order bits: red is stored with 5 bits of precision,
     * green is stored with 6 bits of precision, and blue is stored with 5 bits of precision.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    Rgb565
    |
    /**
     * Indicates that each pixel is stored on 32 bits. Each pixel contains 4 components：R(8bits), G(8bits), B(8bits), A(8bits)
     * and are stored from the higher-order to the lower-order bits.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    Rgba8888
    |
    /**
     * Indicates that each pixel is stored on 32 bits. Each pixel contains 4 components：B(8bits), G(8bits), R(8bits), A(8bits)
     * and are stored from the higher-order to the lower-order bits.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    Bgra8888
    |
    /**
     * Indicates that each pixel is stored on 24 bits. Each pixel contains 3 components：R(8bits), G(8bits), B(8bits)
     * and are stored from the higher-order to the lower-order bits.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    Rgb888
    |
    /**
     * Indicates that each pixel is stored on 8 bits. Each pixel contains 1 component：ALPHA(8bits)
     * and is stored from the higher-order to the lower-order bits.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    Alpha8
    |
    /**
     * Indicates that each pixel is stored on 32 bits. Each pixel contains 4 components：B(8bits), G(8bits), R(8bits), A(8bits)
     * and are stored from the higher-order to the lower-order bits in F16.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    RgbaF16
    |
    /**
     * Indicates that the storage order is to store Y first and then V U alternately each occupies 8 bits
     * and are stored from the higher-order to the lower-order bits.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    Nv21
    |
    /**
     * Indicates that the storage order is to store Y first and then U V alternately each occupies 8 bits
     * and are stored from the higher-order to the lower-order bits.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    Nv12
    |
    /**
     * Indicates that each pixel is stored on 32 bits. Each pixel contains 4 components：
     * R(10bits), G(10bits), B(10bits), A(2bits) and are stored from the higher-order to the lower-order bits.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    Rgba1010102
    |
    /**
     * Indicates that the storage order is to store Y first and then U V alternately each occupies 10 bits
     * and are stored from the higher-order to the lower-order bits.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    YcbcrP010
    |
    /**
     * Indicates that the storage order is to store Y first and then V U alternately each occupies 10 bits
     * and are stored from the higher-order to the lower-order bits.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    YcrcbP010
    | ...
}

extend PixelMapFormat <: ToString {
    /**
     * Converts the PixelMapFormat to its string representation.
     * @returns { String } A string representation of the PixelMapFormat.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    public func toString(): String
}

extend PixelMapFormat <: Equatable<PixelMapFormat> {
    /**
     * Compares this PixelMapFormat with another for equality.
     * @param { PixelMapFormat } other - The obj to compare with.
     * @returns { Bool } True if both modes are equal, false otherwise.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    public operator func ==(other: PixelMapFormat): Bool

    /**
     * Compares this PixelMapFormat with another for inequality.
     * @param { PixelMapFormat } other - The obj to compare with.
     * @returns { Bool } True if both modes are not equal, false otherwise.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    public operator func !=(other: PixelMapFormat): Bool
}

/**
 * Enumerates alpha types.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Multimedia.Image.Core"
]
public enum AlphaType {
    /**
     * Indicates an unknown alpha type.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    Unknown
    |
    /**
     * Indicates that the image has no alpha channel, or all pixels in the image are fully opaque.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    Opaque
    |
    /**
     * Indicates that RGB components of each pixel in the image are premultiplied by alpha.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    Premul
    |
    /**
     * Indicates that RGB components of each pixel in the image are independent of alpha and
     * are not premultiplied by alpha.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    UnPremul
    | ...
}

extend AlphaType <: ToString {
    /**
     * Converts the AlphaType to its string representation.
     * @returns { String } A string representation of the AlphaType.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    public func toString(): String
}

extend AlphaType <: Equatable<AlphaType> {
    /**
     * Compares this AlphaType with another for equality.
     * @param { AlphaType } other - The obj to compare with.
     * @returns { Bool } True if both modes are equal, false otherwise.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    public operator func ==(other: AlphaType): Bool

    /**
     * Compares this AlphaType with another for inequality.
     * @param { AlphaType } other - The obj to compare with.
     * @returns { Bool } True if both modes are not equal, false otherwise.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    public operator func !=(other: AlphaType): Bool
}

/**
 * Enum for image scale mode.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Multimedia.Image.Core"
]
public enum ScaleMode {
    /**
     * Indicates the effect that fits the image into the target size.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    FitTargetSize
    |
    /**
     * Indicates the effect that scales an image to fill the target image area and
     * center-crops the part outside the area.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    CenterCrop
    | ...
}

extend ScaleMode <: ToString {
    /**
     * Converts the ScaleMode to its string representation.
     * @returns { String } A string representation of the ScaleMode.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    public func toString(): String
}

extend ScaleMode <: Equatable<ScaleMode> {
    /**
     * Compares this ScaleMode with another for equality.
     * @param { ScaleMode } other - The obj to compare with.
     * @returns { Bool } True if both modes are equal, false otherwise.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    public operator func ==(other: ScaleMode): Bool

    /**
     * Compares this ScaleMode with another for inequality.
     * @param { ScaleMode } other - The obj to compare with.
     * @returns { Bool } True if both modes are not equal, false otherwise.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    public operator func !=(other: ScaleMode): Bool
}

/**
 * Enum for image formats.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Multimedia.Image.Core"
]
public enum ImageFormat {
    /**
     * YCBCR422 semi-planar format.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    Ycbcr422Sp
    |
    /**
     * JPEG encoding format.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    Jpeg
    | ...
}

extend ImageFormat <: ToString {
    
    /**
     * Converts the ImageFormat to its string representation.
     * @returns { String } A string representation of the ImageFormat.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    public func toString(): String
}

extend ImageFormat <: Equatable<ImageFormat> {
    /**
     * Compares this ImageFormat with another for equality.
     * @param { ImageFormat } other - The obj to compare with.
     * @returns { Bool } True if both modes are equal, false otherwise.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    public operator func ==(other: ImageFormat): Bool

    /**
     * Compares this ImageFormat with another for inequality.
     * @param { ImageFormat } other - The obj to compare with.
     * @returns { Bool } True if both modes are not equal, false otherwise.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    public operator func !=(other: ImageFormat): Bool
}

/**
 * The component type of image.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Multimedia.Image.ImageReceiver"
]
public enum ComponentType {
    /**
     * Luma info.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Image.ImageReceiver"
    ]
    YuvY
    |
    /**
     * Chrominance info.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Image.ImageReceiver"
    ]
    YuvU
    |
    /**
     * Chroma info.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Image.ImageReceiver"
    ]
    YuvV
    |
    /**
     * Jpeg type.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Image.ImageReceiver"
    ]
    Jpeg
    | ...
}

extend ComponentType <: ToString {
    /**
     * Converts the ComponentType to its string representation.
     * @returns { String } A string representation of the ComponentType.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    public func toString(): String
}

extend ComponentType <: Equatable<ComponentType> {
    /**
     * Compares this ComponentType with another for equality.
     * @param { ComponentType } other - The obj to compare with.
     * @returns { Bool } True if both modes are equal, false otherwise.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    public operator func ==(other: ComponentType): Bool

    /**
     * Compares this ComponentType with another for inequality.
     * @param { ComponentType } other - The obj to compare with.
     * @returns { Bool } True if both modes are not equal, false otherwise.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    public operator func !=(other: ComponentType): Bool
}

/**
 * Enumerates exchangeable image file format (Exif) information types of an image. This enumeration follows the EXIF
 * standard. Please refer to the EXIF specification for more details.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Multimedia.Image.Core"
]
public enum PropertyKey <: ToString {
    /**
     * The number of bits per image component. In this standard each component of the image is 8 bits, so the value for 
     * this tag is 8. In JPEG compressed data a JPEG marker is used instead of this tag.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    BitsPerSample
    |
    /**
     * Image orientation.
     * 1. "Top-left"       - The image is not rotated.
     * 2. "Top-right"      - The image is mirrored horizontally.
     * 3. "Bottom-right"   - The image is rotated 180 degrees.
     * 4. "Bottom-left"    - The image is mirrored vertically.
     * 5. "Left-top"       - The image is mirrored horizontally, then rotated 270 degrees clockwise.
     * 6. "Right-top"      - The image is rotated 90 degrees clockwise.
     * 7. "Right-bottom"   - The image is mirrored horizontally, then rotated 90 degrees clockwise.
     * 8. "Left-bottom"    - The image is rotated 270 degrees clockwise.
     * If an undefined value is read, the result will be "Unknown Value <number>".
     * When retrieving the Orientation property, the value is returned as a string.
     * When setting the Orientation property, both numeric values (1–8) and string labels are supported.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    Orientation
    |
    /**
     * Image length.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    ImageLength
    |
    /**
     * Image width.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    ImageWidth
    |
    /**
     * GPS latitude. The latitude is expressed as three RATIONAL values giving the degrees, minutes, and
     * seconds, respectively. If latitude is expressed as degrees, minutes and seconds, a typical format 
     * would be dd/1,mm/1,ss/1. When degrees and minutes are used and, for example, fractions of minutes
     * are given up to two decimal places, the format would be dd/1,mmmm/100,0/1.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    GpsLatitude
    |
    /**
     * GPS longitude. The longitude is expressed as three RATIONAL values giving the degrees, minutes, and
     * seconds, respectively. If longitude is expressed as degrees, minutes and seconds, a typical format 
     * would be dd/1,mm/1,ss/1. When degrees and minutes are used and, for example, fractions of minutes
     * are given up to two decimal places, the format would be dd/1,mmmm/100,0/1.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    GpsLongitude
    |
    /**
     * GPS latitude reference. For example, N indicates north latitude and S indicates south latitude.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    GpsLatitudeRef
    |
    /**
     * GPS longitude reference. For example, E indicates east longitude and W indicates west longitude.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    GpsLongitudeRef
    |
    /**
     * The date and time when the original image data was generated. For a DSC the date and time the picture was taken
     * are recorded. The format is "YYYY:MM:DD HH:MM:SS" with time shown in 24-hour format.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    DateTimeOriginal
    |
    /**
     * Exposure time
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    ExposureTime
    |
    /**
     * Scene type
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    SceneType
    |
    /**
     * Indicates the ISO Speed and ISO Latitude of the camera or input device as specified in ISO 12232.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    IsoSpeedRatings
    |
    /**
     * Aperture value, such as f/1.8.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    FNumber
    |
    /**
     * The date and time of image creation. In this standard it is the date and time the file was changed. The format
     * is "YYYY:MM:DD HH:MM:SS" with time shown in 24-hour format.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    DateTime
    |
    /**
     * GPS time stamp
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    GpsTimestamp
    |
    /**
     * GPS date stamp
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    GpsDateStamp
    |
    /**
     * Image description
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    ImageDescription
    |
    /**
     * Make
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    Make
    |
    /**
     * Model
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    Model
    |
    /**
     * Photo mode
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    PhotoMode
    |
    /**
     * Sensitivity type
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    SensitivityType
    |
    /**
     * Standard output sensitivity
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    StandardOutputSensitivity
    |
    /**
     * Recommended exposure index
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    RecommendedExposureIndex
    |
    /**
     * Indicates the ISO Speed and ISO Latitude of the camera or input device as specified in ISO 12232.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    IsoSpeed
    |
    /**
     * The lens aperture. The unit is the APEX(Additive System of Photographic Exposure) value.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    ApertureValue
    |
    /**
     * Exposure bias value
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    ExposureBiasValue
    |
    /**
     * Metering mode
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    MeteringMode
    |
    /**
     * Light source
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    LightSource
    |
    /**
     * Flash
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    Flash
    |
    /**
     * Focal length
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    FocalLength
    |
    /**
     * User comment
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    UserComment
    |
    /**
     * Pixel x dimension
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    PixelXDimension
    |
    /**
     * Pixel y dimension
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    PixelYDimension
    |
    /**
     * White balance
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    WhiteBalance
    |
    /**
     * Focal length in 35mm film
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    FocalLengthIn35mmFilm
    |
    /**
     * Capture mode
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    CaptureMode
    |
    /**
     * Physical aperture
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    PhysicalAperture
    |
    /**
     * Roll Angle
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    RollAngle
    |
    /**
     * Pitch Angle
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    PitchAngle
    |
    /**
     * Capture Scene: Food
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    SceneFoodConf
    |
    /**
     * Capture Scene: Stage
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    SceneStageConf
    |
    /**
     * Capture Scene: Blue Sky
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    SceneBlueSkyConf
    |
    /**
     * Capture Scene: Green Plant
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    SceneGreenPlantConf
    |
    /**
     * Capture Scene: Beach
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    SceneBeachConf
    |
    /**
     * Capture Scene: Snow
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    SceneSnowConf
    |
    /**
     * Capture Scene: Sunset
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    SceneSunsetConf
    |
    /**
     * Capture Scene: Flowers
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    SceneFlowersConf
    |
    /**
     * Capture Scene: Night
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    SceneNightConf
    |
    /**
     * Capture Scene: Text
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    SceneTextConf
    |
    /**
     * Face Count
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    FaceCount
    |
    /**
     * Focus Mode
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    FocusMode
    | ...

    /**
     * Converts the PropertyKey to its string representation.
     * @returns A string representation of the PropertyKey.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    public func toString(): String
}

extend PropertyKey <: Equatable<PropertyKey> {
    /**
     * Compares this PropertyKey with another for equality.
     * @param { PropertyKey } other - The obj to compare with.
     * @returns True if both modes are equal, false otherwise.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    public operator func ==(other: PropertyKey): Bool

    /**
     * Compares this PropertyKey with another for inequality.
     * @param { PropertyKey } other - The obj to compare with.
     * @returns True if both modes are not equal, false otherwise.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    public operator func !=(other: PropertyKey): Bool
}

/**
 * Enumerates decoding dynamic range.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Multimedia.Image.Core"
]
public enum DecodingDynamicRange {
    /**
     * Decoding according to the content of the image. If the image is an HDR image, it will be decoded as HDR content;
     * otherwise, it will be decoded as SDR content.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    Auto
    |
    /**
     * Decoding to standard dynamic range.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    Sdr
    |
    /**
     * Decoding to high dynamic range.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    Hdr
    | ...
}

extend DecodingDynamicRange <: ToString {
    /**
     * Converts the DecodingDynamicRange to its string representation.
     * @returns { String } A string representation of the DecodingDynamicRange.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    public func toString(): String
}

extend DecodingDynamicRange <: Equatable<DecodingDynamicRange> {
    /**
     * Compares this DecodingDynamicRange with another for equality.
     * @param { DecodingDynamicRange } other - The obj to compare with.
     * @returns { Bool } True if both modes are equal, false otherwise.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    public operator func ==(other: DecodingDynamicRange): Bool

    /**
     * Compares this DecodingDynamicRange with another for inequality.
     * @param { DecodingDynamicRange } other - The obj to compare with.
     * @returns { Bool } True if both modes are not equal, false otherwise.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    public operator func !=(other: DecodingDynamicRange): Bool
}

/**
 * Enumerates packing dynamic range.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Multimedia.Image.Core"
]
public enum PackingDynamicRange {
    /**
     * Packing according to the content of the image. If the image is an HDR image, it will be encoded as HDR content;
     * otherwise, it will be encoded as SDR content.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    Auto
    |
    /**
     * Packing to standard dynamic range.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    Sdr
    | ...
}

extend PackingDynamicRange <: ToString {
    /**
     * Converts the PackingDynamicRange to its string representation.
     * @returns { String } A string representation of the PackingDynamicRange.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    public func toString(): String
}

extend PackingDynamicRange <: Equatable<PackingDynamicRange> {
    /**
     * Compares this PackingDynamicRange with another for equality.
     * @param { PackingDynamicRange } other - The obj to compare with.
     * @returns { Bool } True if both modes are equal, false otherwise.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    public operator func ==(other: PackingDynamicRange): Bool

    /**
     * Compares this PackingDynamicRange with another for inequality.
     * @param { PackingDynamicRange } other - The obj to compare with.
     * @returns { Bool } True if both modes are not equal, false otherwise.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Image.Core"
    ]
    public operator func !=(other: PackingDynamicRange): Bool
}

/**
 * Provides basic image operations, including obtaining image information, and reading and writing image data.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Multimedia.Image.Core"
]
public class Image {
    /**
     * Gets the image area to crop, default is size.
     *
     * @throws { BusinessException } 62980104 - Failed to initialize the internal object.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Image.Core",
        throwexception: true
    ]
    public prop clipRect: Region

    /**
     * Image size.
     *
     * @throws { BusinessException } 62980104 - Failed to initialize the internal object.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Image.Core",
        throwexception: true
    ]
    public prop size: Size

    /**
     * Image format.
     *
     * @throws { BusinessException } 62980104 - Failed to initialize the internal object.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Image.Core",
        throwexception: true
    ]
    public prop format: Int32

    /**
     * Get component buffer from image.
     *
     * @param { ComponentType } componentType - The component type of image.
     * @returns { Component } Return the component buffer.
     * @throws { BusinessException } 62980104 - Failed to initialize the internal object.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Image.Core",
        throwexception: true,
        workerthread: true
    ]
    public func getComponent(componentType: ComponentType): Component

    /**
     * Release current image to receive another.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Image.Core",
        workerthread: true
    ]
    public func release(): Unit
}

/**
 * ImagePacker instance.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Multimedia.Image.ImagePacker"
]
public class ImagePacker {
    /**
     * Supported image formats.
     *
     * @throws { BusinessException } 62980098 - Failed to malloc memory.
     * @throws { BusinessException } 62980104 - Failed to initialize the internal object.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Image.ImagePacker",
        throwexception: true
    ]
    public prop supportedFormats: Array<String>

    /**
     * Compresses or packs an image.
     *
     * @param { ImageSource } source - Image to be processed.
     * @param { PackingOption } options - Option for image packing.
     * @returns { Array<UInt8> } Used to return the compressed or packed data.
     * @throws { BusinessException } 62980096 - The operation failed. Possible cause: 1.Image upload exception.
     * 2. Decoding process exception. 3. Insufficient memory.
     * @throws { BusinessException } 62980101 - The image data is abnormal.
     * @throws { BusinessException } 62980104 - Failed to initialize the internal object.
     * @throws { BusinessException } 62980106 - The image data is too large. This status code is thrown when an error
     * occurs during the process of checking size.
     * @throws { BusinessException } 62980113 - Unknown image format. The image data provided is not in a recognized or
     * supported format, or it may be occorrupted.
     * @throws { BusinessException } 62980115 - If the parameter is invalid.
     * @throws { BusinessException } 62980119 - Failed to encode the image.
     * @throws { BusinessException } 62980120 - Add pixelmap out of range.
     * @throws { BusinessException } 62980172 - Failed to encode icc.
     * @throws { BusinessException } 62980252 - Failed to create surface.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Image.ImagePacker",
        throwexception: true,
        workerthread: true
    ]
    public func packToData(source: ImageSource, options: PackingOption): Array<UInt8>

    /**
     * Compresses or packs an image.
     *
     * @param { PixelMap } source - PixelMap to be processed.
     * @param { PackingOption } options - Option for image packing.
     * @returns { Array<UInt8> } Used to return the compressed or packed data.
     * @throws { BusinessException } 62980096 - The operation failed. Possible cause: 1.Image upload exception.
     * 2. Decoding process exception. 3. Insufficient memory.
     * @throws { BusinessException } 62980101 - The image data is abnormal.
     * @throws { BusinessException } 62980104 - Failed to initialize the internal object.
     * @throws { BusinessException } 62980106 - The image data is too large. This status code is thrown when an error
     * occurs during the process of checking size.
     * @throws { BusinessException } 62980113 - Unknown image format. The image data provided is not in a recognized or
     * supported format, or it may be occorrupted.
     * @throws { BusinessException } 62980115 - If the parameter is invalid.
     * @throws { BusinessException } 62980119 - Failed to encode the image.
     * @throws { BusinessException } 62980120 - Add pixelmap out of range.
     * @throws { BusinessException } 62980172 - Failed to encode icc.
     * @throws { BusinessException } 62980252 - Failed to create surface.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Image.ImagePacker",
        throwexception: true,
        workerthread: true
    ]
    public func packToData(source: PixelMap, options: PackingOption): Array<UInt8>

    /**
     * Compresses or packs an image into a file.
     *
     * @param { ImageSource } source - Image to be processed.
     * @param { Int32 } fd - ID of a file descriptor.
     * @param { PackingOption } options - Options for image packing.
     * @throws { BusinessException } 62980096 - The operation failed. Possible cause: 1.Image upload exception.
     * 2. Decoding process exception. 3. Insufficient memory.
     * @throws { BusinessException } 62980101 - The image data is abnormal.
     * @throws { BusinessException } 62980104 - Failed to initialize the internal object.
     * @throws { BusinessException } 62980106 - The image data is too large. This status code is thrown when an error
     * occurs during the process of checking size.
     * @throws { BusinessException } 62980113 - Unknown image format.
     * The image data provided is not in a recognized or supported format, or it may be occorrupted.
     * @throws { BusinessException } 62980115 - Invalid input parameter.
     * @throws { BusinessException } 62980119 - Failed to encode the image.
     * @throws { BusinessException } 62980120 - Add pixelmap out of range.
     * @throws { BusinessException } 62980172 - Failed to encode icc.
     * @throws { BusinessException } 62980252 - Failed to create surface.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Image.ImagePacker",
        throwexception: true,
        workerthread: true
    ]
    public func packToFile(source: ImageSource, fd: Int32, options: PackingOption): Unit

    /**
     * Compresses or packs an image into a file.
     *
     * @param { PixelMap } source - PixelMap to be processed.
     * @param { Int32 } fd - ID of a file descriptor.
     * @param { PackingOption } options - Options for image packing.
     * @throws { BusinessException } 62980096 - The operation failed. Possible cause: 1.Image upload exception.
     * 2. Decoding process exception. 3. Insufficient memory.
     * @throws { BusinessException } 62980101 - The image data is abnormal.
     * @throws { BusinessException } 62980104 - Failed to initialize the internal object.
     * @throws { BusinessException } 62980106 - The image data is too large. This status code is thrown when an error
     * occurs during the process of checking size.
     * @throws { BusinessException } 62980113 - Unknown image format.
     * The image data provided is not in a recognized or supported format, or it may be occorrupted.
     * @throws { BusinessException } 62980115 - Invalid input parameter.
     * @throws { BusinessException } 62980119 - Failed to encode the image.
     * @throws { BusinessException } 62980120 - Add pixelmap out of range.
     * @throws { BusinessException } 62980172 - Failed to encode icc.
     * @throws { BusinessException } 62980252 - Failed to create surface.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Image.ImagePacker",
        throwexception: true,
        workerthread: true
    ]
    public func packToFile(source: PixelMap, fd: Int32, options: PackingOption): Unit

    /**
     * Releases an ImagePacker instance
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Image.ImagePacker",
        workerthread: true
    ]
    public func release(): Unit
}

/**
 * Creates an ImagePacker instance.
 *
 * @returns { ImagePacker } Returns the ImagePacker instance.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Multimedia.Image.ImagePacker"
]
public func createImagePacker(): ImagePacker

/**
 * Creates an ImageReceiver instance.
 *
 * @param { Size } size - The default Size in pixels of the Images that this receiver will produce.
 * @param { ImageFormat } format - The format of the Image that this receiver will produce. This must be one of the
 * ImageFormat constants.
 * @param { Int32 } capacity - The maximum number of images the user will want to access simultaneously.
 * @returns { ImageReceiver } Returns the ImageReceiver instance.
 * @throws { BusinessException } 62980104 - Failed to initialize the internal object.
 * @throws { BusinessException } 62980115 - Parameter error.Possible causes: 1.Mandatory parameters are left
 * unspecified; 2.Incorrect parameter types.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Multimedia.Image.ImageReceiver",
    throwexception: true
]
public func createImageReceiver(size: Size, format: ImageFormat, capacity: Int32): ImageReceiver

/**
 * Image receiver object.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Multimedia.Image.ImageReceiver"
]
public class ImageReceiver {
    /**
     * Image size.
     *
     * @throws { BusinessException } 62980104 - Failed to initialize the internal object.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Image.ImageReceiver",
        throwexception: true
    ]
    public prop size: Size

    /**
     * Image capacity.
     *
     * @throws { BusinessException } 62980104 - Failed to initialize the internal object.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Image.ImageReceiver",
        throwexception: true
    ]
    public prop capacity: Int32

    /**
     * Image format.
     *
     * @throws { BusinessException } 62980104 - Failed to initialize the internal object.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Image.ImageReceiver",
        throwexception: true
    ]
    public prop format: ImageFormat

    /**
     * Get an id which indicates a surface and can be used to set to Camera or other component can receive a surface.
     *
     * @returns { String } Returns the surface id.
     * @throws { BusinessException } 62980104 - Failed to initialize the internal object.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Image.ImageReceiver",
        throwexception: true,
        workerthread: true
    ]
    public func getReceivingSurfaceId(): String

    /**
     * Get lasted image from receiver.
     *
     * @returns { Image } Returns the latest image.
     * @throws { BusinessException } 62980104 - Failed to initialize the internal object.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Image.ImageReceiver",
        throwexception: true,
        workerthread: true
    ]
    public func readLatestImage(): Image

    /**
     * Get next image from receiver.
     *
     * @returns { Image } Returns the next image.
     * @throws { BusinessException } 62980104 - Failed to initialize the internal object.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Image.ImageReceiver",
        throwexception: true,
        workerthread: true
    ]
    public func readNextImage(): Image

    /**
     * Subscribe callback when receiving an image.
     *
     * @param { ReceiveType } eventType - Type of the event to listen for.
     * @param { Callback0Argument } callback - Callback used to return image.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Image.ImageReceiver"
    ]
    public func on(eventType: ReceiveType, callback: Callback0Argument): Unit

    /**
     * Remove callback subscriptions when releasing buffer.
     *
     * @param { ReceiveType } eventType - Type of the event to unlisten for.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Image.ImageReceiver",
        workerthread: true
    ]
    public func off(eventType: ReceiveType): Unit

    /**
     * Release image receiver instance.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Image.ImageReceiver",
        workerthread: true
    ]
    public func release(): Unit
}

/**
 * Enum of callback.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Multimedia.Image.ImageReceiver"
]
public enum ReceiveType {
    /**
     * imageArrival.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Image.ImageReceiver"
    ]
    ImageArrival | ...
}

/**
 * Creates an ImageSource instance based on the URI.
 *
 * @param { String } uri - Image source URI.
 * @returns { ImageSource } Returns the ImageSource instance.
 * @throws { BusinessException } 62980104 - Failed to initialize the internal object.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Multimedia.Image.ImageSource",
    throwexception: true
]
public func createImageSource(uri: String): ImageSource

/**
 * Creates an ImageSource instance based on the URI.
 *
 * @param { String } uri - Image source URI.
 * @param { SourceOptions } options - The config of Image source.
 * @returns { ImageSource } Returns the ImageSource instance.
 * @throws { BusinessException } 62980104 - Failed to initialize the internal object.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Multimedia.Image.ImageSource",
    throwexception: true
]
public func createImageSource(uri: String, options: SourceOptions): ImageSource

/**
 * Creates an ImageSource instance based on the file descriptor.
 *
 * @param { Int32 } fd - ID of a file descriptor.
 * @returns { ImageSource } Returns the ImageSource instance.
 * @throws { BusinessException } 62980104 - Failed to initialize the internal object.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Multimedia.Image.ImageSource",
    throwexception: true
]
public func createImageSource(fd: Int32): ImageSource

/**
 * Creates an ImageSource instance based on the file descriptor.
 *
 * @param { Int32 } fd - ID of a file descriptor.
 * @param { SourceOptions } options - The config of Image source.
 * @returns { ImageSource } Returns the ImageSource instance.
 * @throws { BusinessException } 62980104 - Failed to initialize the internal object.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Multimedia.Image.ImageSource",
    throwexception: true
]
public func createImageSource(fd: Int32, options: SourceOptions): ImageSource

/**
 * Creates an ImageSource instance based on the buffer.
 *
 * @param { Array<UInt8> } buf - The buffer of the image.
 * @returns { ImageSource } Returns the ImageSource instance.
 * @throws { BusinessException } 62980104 - Failed to initialize the internal object.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Multimedia.Image.ImageSource",
    throwexception: true
]
public func createImageSource(buf: Array<UInt8>): ImageSource

/**
 * Creates an ImageSource instance based on the buffer.
 *
 * @param { Array<UInt8> } buf - The buffer of the image.
 * @param { SourceOptions } options - The config of Image source.
 * @returns { ImageSource } Returns the ImageSource instance.
 * @throws { BusinessException } 62980104 - Failed to initialize the internal object.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Multimedia.Image.ImageSource",
    throwexception: true
]
public func createImageSource(buf: Array<UInt8>, options: SourceOptions): ImageSource

/**
 * Creates an ImageSource instance based on the raw file descriptor.
 *
 * @param { RawFileDescriptor } rawfile - The raw file descriptor of the image.
 * @param { SourceOptions } [options] - The config of Image source.
 * @returns { ImageSource } Returns the ImageSource instance.
 * @throws { BusinessException } 62980104 - Failed to initialize the internal object.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Multimedia.Image.ImageSource",
    throwexception: true
]
public func createImageSource(rawfile: RawFileDescriptor, options!: SourceOptions = SourceOptions(0)): ImageSource

/**
 * ImageSource instance.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Multimedia.Image.ImageSource"
]
public class ImageSource {
    /**
     * Supported image formats.
     *
     * @throws { BusinessException } 62980102 - Failed to malloc memory.
     * @throws { BusinessException } 62980104 - Failed to initialize the internal object.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Image.ImageSource",
        throwexception: true
    ]
    public prop supportedFormats: Array<String>

    /**
     * Get image information from image source.
     *
     * @param { UInt32 } [index] - Sequence number of an image. If this parameter is not specified,
     * the default value 0 is used.
     * @returns { ImageInfo } Return the image information.
     * @throws { BusinessException } 62980104 - Failed to initialize the internal object.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Image.ImageSource",
        throwexception: true,
        workerthread: true
    ]
    public func getImageInfo(index!: UInt32 = 0): ImageInfo

    /**
     * Create a PixelMap object based on image decoding parameters.
     *
     * @param { DecodingOptions } [options] - Image decoding parameters.
     * @returns { PixelMap } Return the PixelMap object.
     * @throws { BusinessException } 62980104 - Failed to initialize the internal object.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Image.ImageSource",
        throwexception: true
    ]
    public func createPixelMap(options!: DecodingOptions = DecodingOptions()): PixelMap

    /**
     * Creates a PixelMap array based on image decoding parameters.
     * For animated images such as GIF and WebP, this interface returns the image data of each frame.
     * For static images, it returns a single frame of image data.
     *
     * @param { DecodingOptions } [options] - Image decoding parameters.
     * @returns { Array<PixelMap> } Return the PixelMap array.
     * @throws { BusinessException } 62980096 - The operation failed. Possible cause: 1.Image upload exception.
     * 2. Decoding process exception. 3. Insufficient memory.
     * @throws { BusinessException } 62980099 - The shared memory data is abnormal.
     * @throws { BusinessException } 62980101 - The image data is abnormal.
     * @throws { BusinessException } 62980102 - Failed to malloc memory.
     * @throws { BusinessException } 62980103 - The image data is not supported.
     * @throws { BusinessException } 62980104 - Failed to initialize the internal object.
     * @throws { BusinessException } 62980106 - The image data is too large. This status code is thrown when an error
     * occurs during the process of checking size.
     * @throws { BusinessException } 62980109 - Failed to crop the image.
     * @throws { BusinessException } 62980111 - The image source data is incomplete.
     * @throws { BusinessException } 62980115 - Invalid image parameter.
     * @throws { BusinessException } 62980116 - Failed to decode the image.
     * @throws { BusinessException } 62980118 - Failed to create the image plugin.
     * @throws { BusinessException } 62980137 - Invalid media operation.
     * @throws { BusinessException } 62980173 - The DMA memory does not exist.
     * @throws { BusinessException } 62980174 - The DMA memory data is abnormal.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Image.ImageSource",
        throwexception: true,
        workerthread: true
    ]
    public func createPixelMapList(options!: DecodingOptions = DecodingOptions()): Array<PixelMap>

    /**
     * Obtains the array of delay time in an image. 
     *
     * @returns { Array<Int32> } Return the array.
     * @throws { BusinessException } 62980096 - The operation failed. Possible cause: 1.Image upload exception.
     * 2. Decoding process exception. 3. Insufficient memory.
     * @throws { BusinessException } 62980102 - Failed to malloc memory.
     * @throws { BusinessException } 62980104 - Failed to initialize the internal object.
     * @throws { BusinessException } 62980110 - The image source data is incorrect.
     * @throws { BusinessException } 62980111 - The image source data is incomplete.
     * @throws { BusinessException } 62980115 - Invalid image parameter.
     * @throws { BusinessException } 62980116 - Failed to decode the image.
     * @throws { BusinessException } 62980118 - Failed to create the image plugin.
     * @throws { BusinessException } 62980122 - Failed to decode the image header.
     * @throws { BusinessException } 62980149 - Invalid MIME type for the image source.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Image.ImageSource",
        throwexception: true,
        workerthread: true
    ]
    public func getDelayTimeList(): Array<Int32>

    /**
     * Obtains the count of frame in an image.
     *
     * @returns { UInt32 } Used to return the number.
     * @throws { BusinessException } 62980096 - The operation failed. Possible cause: 1.Image upload exception.
     * 2. Decoding process exception. 3. Insufficient memory.
     * @throws { BusinessException } 62980104 - Failed to initialize the internal object.
     * @throws { BusinessException } 62980111 - The image source data is incomplete.
     * @throws { BusinessException } 62980112 - The image format does not match.
     * @throws { BusinessException } 62980113 - Unknown image format.
     * The image data provided is not in a recognized or supported format, or it may be occorrupted.
     * @throws { BusinessException } 62980115 - Invalid image parameter.
     * @throws { BusinessException } 62980116 - Failed to decode the image.
     * @throws { BusinessException } 62980118 - Failed to create the image plugin.
     * @throws { BusinessException } 62980122 - Failed to decode the image header.
     * @throws { BusinessException } 62980137 - Invalid media operation.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Image.ImageSource",
        throwexception: true,
        workerthread: true
    ]
    public func getFrameCount(): UInt32

    /**
     * Obtains the value of a property in an image with the specified index. This method return the property value in a
     * string.
     *
     * @param { PropertyKey } key - Name of the property whose value is to be obtained.
     * @param { ImagePropertyOptions } [options] - Index of the image.
     * @returns { String } Return the property value.
     * @throws { BusinessException } 62980096 - The operation failed. Possible cause: 1.Image upload exception.
     * 2. Decoding process exception. 3. Insufficient memory.
     * @throws { BusinessException } 62980103 - The image data is not supported.
     * @throws { BusinessException } 62980104 - Failed to initialize the internal object.
     * @throws { BusinessException } 62980110 - The image source data is incorrect.
     * @throws { BusinessException } 62980111 - The image source data is incomplete.
     * @throws { BusinessException } 62980112 - The image format does not match.
     * @throws { BusinessException } 62980113 - Unknown image format.
     * The image data provided is not in a recognized or supported format, or it may be occorrupted.
     * @throws { BusinessException } 62980115 - Invalid image parameter.
     * @throws { BusinessException } 62980118 - Failed to create the image plugin.
     * @throws { BusinessException } 62980122 - Failed to decode the image header.
     * @throws { BusinessException } 62980123 - The image does not support EXIF decoding.
     * @throws { BusinessException } 62980135 - The EXIF value is invalid.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Image.ImageSource",
        throwexception: true,
        workerthread: true
    ]
    public func getImageProperty(key: PropertyKey, options!: ImagePropertyOptions = ImagePropertyOptions()): String

    /**
     * Modify the value of a property in an image with the specified key.
     *
     * @param { PropertyKey } key - Name of the property whose value is to be modified.
     * @param { String } value - The value to be set to property.
     * @throws { BusinessException } 62980104 - Failed to initialize the internal object.
     * @throws { BusinessException } 62980115 - Parameter error.Possible causes: 1.Mandatory parameters are left
     * unspecified; 2.Incorrect parameter types.
     * @throws { BusinessException } 62980123 - The image does not support EXIF decoding.
     * @throws { BusinessException } 62980133 - The EXIF data is out of range.
     * @throws { BusinessException } 62980135 - The EXIF value is invalid.
     * @throws { BusinessException } 62980146 - The EXIF data failed to be written to the file.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Image.ImageSource",
        throwexception: true,
        workerthread: true
    ]
    public func modifyImageProperty(key: PropertyKey, value: String): Unit

    /**
     * Update the data in the incremental ImageSource.
     *
     * @param { Array<UInt8> } buf - The data to be updated.
     * @param { Bool } isFinished - If is it finished.
     * @param { UInt32 } offset - The offset of data.
     * @param { UInt32 } length - The length fo buf.
     * @throws { BusinessException } 62980104 - Failed to initialize the internal object.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Image.ImageSource",
        throwexception: true,
        workerthread: true
    ]
    public func updateData(buf: Array<UInt8>, isFinished: Bool, offset: UInt32, length: UInt32): Unit

    /**
     * Releases an ImageSource instance.
     *
     * @throws { BusinessException } 62980104 - Failed to initialize the internal object.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Image.ImageSource",
        throwexception: true,
        workerthread: true
    ]
    public func release(): Unit
}

/**
 * Create pixelmap by data buffer.
 *
 * @param { Array<UInt8> } colors - The image color buffer.
 * @param { InitializationOptions } options - Initialization options for pixelmap.
 * @returns { PixelMap } Return the PixelMap object.
 * @throws { BusinessException } 62980104 - Failed to initialize the internal object.
 * @throws { BusinessException } 62980115 - Parameter error. Possible causes: 1.Mandatory parameters are left
 * unspecified.
 * 2.Incorrect parameter types. 3.Parameter verification failed.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Multimedia.Image.Core",
    throwexception: true,
    workerthread: true
]
public func createPixelMap(colors: Array<UInt8>, options: InitializationOptions): PixelMap

/**
 * PixelMap instance.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Multimedia.Image.Core"
]
public class PixelMap {
    /**
     * Whether the image pixel map can be edited.
     *
     * @throws { BusinessException } 62980104 - Failed to initialize the internal object.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Image.Core",
        throwexception: true
    ]
    public prop isEditable: Bool

    /**
     * Is it stride Alignment.
     *
     * @throws { BusinessException } 62980104 - Failed to initialize the internal object.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Image.Core",
        throwexception: true
    ]
    public prop isStrideAlignment: Bool

    /**
     * Reads image pixel map data and writes the data to an Array.
     *
     * @param { Array<UInt8> } dst - A buffer to which the image pixel map data will be written.
     * @throws { BusinessException } 62980104 - Failed to initialize the internal object.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Image.Core",
        throwexception: true,
        workerthread: true
    ]
    public func readPixelsToBuffer(dst: Array<UInt8>): Unit

    /**
     * Reads image pixel map data in an area. This method return the data read.
     *
     * @param { PositionArea } area - Area from which the image pixel map data will be read.
     * @throws { BusinessException } 62980104 - Failed to initialize the internal object.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Image.Core",
        throwexception: true,
        workerthread: true
    ]
    public func readPixels(area: PositionArea): Unit

    /**
     * Writes image pixel map data to the specified area.
     *
     * @param { PositionArea } area - Area to which the image pixel map data will be written.
     * @throws { BusinessException } 62980104 - Failed to initialize the internal object.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Image.Core",
        throwexception: true,
        workerthread: true
    ]
    public func writePixels(area: PositionArea): Unit

    /**
     * Reads image data in an Array and writes the data to a PixelMap object. 
     *
     * @param { Array<UInt8> } src - A buffer from which the image data will be read.
     * @throws { BusinessException } 62980104 - Failed to initialize the internal object.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Image.Core",
        throwexception: true,
        workerthread: true
    ]
    public func writeBufferToPixels(src: Array<UInt8>): Unit

    /**
     * Obtains pixel map information about this image. 
     *
     * @returns { ImageInfo } Return the image pixel map information.
     * @throws { BusinessException } 62980104 - Failed to initialize the internal object.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Image.Core",
        throwexception: true,
        workerthread: true
    ]
    public func getImageInfo(): ImageInfo

    /**
     * Obtains the number of bytes in each line of the image pixel map.
     *
     * @returns { UInt32 } Number of bytes in each line.
     * @throws { BusinessException } 62980104 - Failed to initialize the internal object.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Image.Core",
        throwexception: true
    ]
    public func getBytesNumberPerRow(): UInt32

    /**
     * Obtains the total number of bytes of the image pixel map.
     *
     * @returns { UInt32 } Total number of bytes.
     * @throws { BusinessException } 62980104 - Failed to initialize the internal object.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Image.Core",
        throwexception: true
    ]
    public func getPixelBytesNumber(): UInt32

    /**
     * Obtains the density of the image pixel map.
     *
     * @returns { Int32 } The number of density.
     * @throws { BusinessException } 62980104 - Failed to initialize the internal object.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Image.Core",
        throwexception: true
    ]
    public func getDensity(): Int32

    /**
     * Set the transparent rate of pixel map.
     *
     * @param { Float32 } rate - The value of transparent rate.
     * @throws { BusinessException } 62980104 - Failed to initialize the internal object.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Image.Core",
        throwexception: true,
        workerthread: true
    ]
    public func opacity(rate: Float32): Unit

    /**
     * Obtains new pixel map with alpha information. 
     *
     * @returns { PixelMap } Return the new image pixel map.
     * @throws { BusinessException } 62980104 - Failed to initialize the internal object.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Image.Core",
        throwexception: true
    ]
    public func createAlphaPixelMap(): PixelMap

    /**
     * Image zoom in width and height.
     *
     * @param { Float32 } x - The zoom value of width.
     * @param { Float32 } y - The zoom value of height.
     * @throws { BusinessException } 62980104 - Failed to initialize the internal object.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Image.Core",
        throwexception: true,
        workerthread: true
    ]
    public func scale(x: Float32, y: Float32): Unit

    /**
     * Image position transformation.
     *
     * @param { Float32 } x - The position value of width.
     * @param { Float32 } y - The position value of height.
     * @throws { BusinessException } 62980104 - Failed to initialize the internal object.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Image.Core",
        throwexception: true,
        workerthread: true
    ]
    public func translate(x: Float32, y: Float32): Unit

    /**
     * Image rotation.
     *
     * @param { Float32 } angle - The rotation angle.
     * @throws { BusinessException } 62980104 - Failed to initialize the internal object.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Image.Core",
        throwexception: true,
        workerthread: true
    ]
    public func rotate(angle: Float32): Unit

    /**
     * Image flipping. 
     *
     * @param { Bool } horizontal - Is flip in horizontal.
     * @param { Bool } vertical - Is flip in vertical.
     * @throws { BusinessException } 62980104 - Failed to initialize the internal object.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Image.Core",
        throwexception: true,
        workerthread: true
    ]
    public func flip(horizontal: Bool, vertical: Bool): Unit

    /**
     * Crop the image.
     *
     * @param { Region } region - The region to crop.
     * @throws { BusinessException } 62980104 - Failed to initialize the internal object.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Image.Core",
        throwexception: true,
        workerthread: true
    ]
    public func crop(region: Region): Unit

    /**
     * Get color space of pixel map.
     *
     * @returns { ColorSpaceManager } Return the ColorSpaceManager.
     * @throws { BusinessException } 62980101 - If the image data abnormal.
     * @throws { BusinessException } 62980103 - If the image data unsupport.
     * @throws { BusinessException } 62980104 - Failed to initialize the internal object.
     * @throws { BusinessException } 62980115 - If the image parameter invalid.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Image.Core",
        throwexception: true
    ]
    public func getColorSpace(): ColorSpaceManager

    /**
     * Set color space of pixel map.
     * This method is only used to set the colorspace property of pixelmap,
     * while all pixel data remains the same after calling this method.
     * If you want to change colorspace for all pixels, use method applyColorSpace.
     *
     * @param { ColorSpaceManager } colorSpace - The color space for pixel map.
     * @throws { BusinessException } 62980104 - Failed to initialize the internal object.
     * @throws { BusinessException } 62980111 - The image source data is incomplete.
     * @throws { BusinessException } 62980115 - If the image parameter invalid.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Image.Core",
        throwexception: true
    ]
    public func setColorSpace(colorSpace: ColorSpaceManager): Unit

    /**
     * Apply color space of pixel map, the pixels will be changed by input color space.
     * This method is used to change color space of pixelmap. Pixel data will be changed by calling this method.
     * If you want to set the colorspace property of pixelmap only, use method setColorSpace.
     *
     * @param { ColorSpaceManager } targetColorSpace - The color space for pixel map.
     * @throws { BusinessException } 62980104 - Failed to initialize the internal object.
     * @throws { BusinessException } 62980108 - Failed to convert the color space.
     * @throws { BusinessException } 62980115 - Invalid image parameter.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Image.Core",
        throwexception: true,
        workerthread: true
    ]
    public func applyColorSpace(targetColorSpace: ColorSpaceManager): Unit

    /**
     * Releases this PixelMap object.
     *
     * @throws { BusinessException } 62980104 - Failed to initialize the internal object.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Multimedia.Image.Core",
        throwexception: true,
        workerthread: true
    ]
    public func release(): Unit
}
