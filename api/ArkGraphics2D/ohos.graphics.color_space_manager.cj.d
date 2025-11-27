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

package ohos.graphics.color_space_manager

import ohos.labels.APILevel

/**
 * Create a color space manager by provided color space type.
 *
 * @param { ColorSpace } colorSpaceType - Indicates the type of color space.
 * @returns { ColorSpaceManager } Returns a color space manager object created by provided type.
 * @throws { BusinessException } 18600001 - The parameter value is abnormal.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Graphic.Graphic2D.ColorManager.Core",
    throwexception: true
]
public func create(colorSpaceType: ColorSpace): ColorSpaceManager

/**
 * Create a customized color space manager by its color primaries and gamma value.
 *
 * @param { ColorSpacePrimaries } primaries - Indicates the customized color primaries.
 * @param { Float32 } gamma - Indicates display gamma value
 * @returns { ColorSpaceManager } Returns a color space manager object created by provided type.
 * @throws { BusinessException } 18600001 - The parameter value is abnormal.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Graphic.Graphic2D.ColorManager.Core",
    throwexception: true
]
public func create(primaries: ColorSpacePrimaries, gamma: Float32): ColorSpaceManager

/**
 * Defines a color space object and manages its key information.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Graphic.Graphic2D.ColorManager.Core"
]
public class ColorSpaceManager {
    /**
     * Get the name of color space type.
     *
     * @returns { ColorSpace } Returns the name of color space type.
     * @throws { BusinessException } 18600001 - The parameter value is abnormal.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Graphic.Graphic2D.ColorManager.Core",
        throwexception: true
    ]
    public func getColorSpaceType(): ColorSpace

    /**
     * Get white point(x, y) of color space.
     *
     * @returns { Array<Float32> } Returns the white point value of color space.
     * @throws { BusinessException } 18600001 - The parameter value is abnormal.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Graphic.Graphic2D.ColorManager.Core",
        throwexception: true
    ]
    public func getWhitePoint(): Array<Float32>

    /**
     * Get gamma value of color space.
     *
     * @returns { Float32 } Returns the gamma value of color space.
     * @throws { BusinessException } 18600001 - The parameter value is abnormal.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Graphic.Graphic2D.ColorManager.Core",
        throwexception: true
    ]
    public func getGamma(): Float32
}

/**
 * Enumerates color space types.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Graphic.Graphic2D.ColorManager.Core"
]
public enum ColorSpace {
    
    /**
     * Indicates an unknown color space.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Graphic.Graphic2D.ColorManager.Core"
    ]
    Unknown
    | 
    
    /**
     * Indicates the color space based on Adobe RGB (1998).
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Graphic.Graphic2D.ColorManager.Core"
    ]
    AdobeRgb1998
    | 
    
    /**
     * Indicates the color space based on SMPTE RP 431-2-2007 and IEC 61966-2.1:1999.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Graphic.Graphic2D.ColorManager.Core"
    ]
    DciP3
    | 
    
    /**
     * Indicates the color space based on SMPTE RP 431-2-2007 and IEC 61966-2.1:1999.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Graphic.Graphic2D.ColorManager.Core"
    ]
    DisplayP3
    | 
    
    /**
     * Indicates the standard red green blue (SRGB) color space based on IEC 61966-2.1:1999.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Graphic.Graphic2D.ColorManager.Core"
    ]
    Srgb
    | 
    
    /**
     * Indicates the color space based on ITU-R BT.709.
     * PRIMARIES_BT709 | TRANSFUNC_BT709 | RANGE_FULL
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Graphic.Graphic2D.ColorManager.Core"
    ]
    Bt709
    | 
    
    /**
     * Indicates the color space based on ITU-R BT.601.
     * PRIMARIES_BT601_P | TRANSFUNC_BT709 | RANGE_FULL
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Graphic.Graphic2D.ColorManager.Core"
    ]
    Bt601Ebu
    | 
    
    /**
     * Indicates the color space based on ITU-R BT.601.
     * PRIMARIES_BT601_N | TRANSFUNC_BT709 | RANGE_FULL
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Graphic.Graphic2D.ColorManager.Core"
    ]
    Bt601SmpteC
    | 
    
    /**
     * Indicates the color space based on ITU-R BT.2020.
     * PRIMARIES_BT2020 | TRANSFUNC_HLG | RANGE_FULL
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Graphic.Graphic2D.ColorManager.Core"
    ]
    Bt2020Hlg
    | 
    
    /**
     * Indicates the color space based on ITU-R BT.2020.
     * PRIMARIES_BT2020 | TRANSFUNC_PQ | RANGE_FULL
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Graphic.Graphic2D.ColorManager.Core"
    ]
    Bt2020Pq
    | 
    
    /**
     * PRIMARIES_P3_D65 | TRANSFUNC_HLG | RANGE_FULL
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Graphic.Graphic2D.ColorManager.Core"
    ]
    P3Hlg
    | 
    
    /**
     * PRIMARIES_P3_D65 | TRANSFUNC_PQ | RANGE_FULL
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Graphic.Graphic2D.ColorManager.Core"
    ]
    P3Pq
    | 
    
    /**
     * PRIMARIES_ADOBE_RGB | TRANSFUNC_ADOBE_RGB | RANGE_LIMIT
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Graphic.Graphic2D.ColorManager.Core"
    ]
    AdobeRgb1998Limit
    | 
    
    /**
     * PRIMARIES_P3_D65 | TRANSFUNC_SRGB | RANGE_LIMIT
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Graphic.Graphic2D.ColorManager.Core"
    ]
    DisplayP3Limit
    | 
    
    /**
     * PRIMARIES_SRGB | TRANSFUNC_SRGB | RANGE_LIMIT
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Graphic.Graphic2D.ColorManager.Core"
    ]
    SrgbLimit
    | 
    
    /**
     * PRIMARIES_BT709 | TRANSFUNC_BT709 | RANGE_LIMIT
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Graphic.Graphic2D.ColorManager.Core"
    ]
    Bt709Limit
    | 
    
    /**
     * PRIMARIES_BT601_P | TRANSFUNC_BT709 | RANGE_LIMIT
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Graphic.Graphic2D.ColorManager.Core"
    ]
    Bt601EbuLimit
    | 
    
    /**
     * PRIMARIES_BT601_N | TRANSFUNC_BT709 | RANGE_LIMIT
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Graphic.Graphic2D.ColorManager.Core"
    ]
    Bt601SmpteCLimit
    | 
    
    /**
     * PRIMARIES_BT2020 | TRANSFUNC_HLG | RANGE_LIMIT
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Graphic.Graphic2D.ColorManager.Core"
    ]
    Bt2020HlgLimit
    | 
    
    /**
     * PRIMARIES_BT2020 | TRANSFUNC_PQ | RANGE_LIMIT
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Graphic.Graphic2D.ColorManager.Core"
    ]
    Bt2020PqLimit
    | 
    
    /**
     * PRIMARIES_P3_D65 | TRANSFUNC_HLG | RANGE_LIMIT
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Graphic.Graphic2D.ColorManager.Core"
    ]
    P3HlgLimit
    | 
    
    /**
     * PRIMARIES_P3_D65 | TRANSFUNC_PQ | RANGE_LIMIT
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Graphic.Graphic2D.ColorManager.Core"
    ]
    P3PqLimit
    | 
    
    /**
     * PRIMARIES_P3_D65 | TRANSFUNC_LINEAR
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Graphic.Graphic2D.ColorManager.Core"
    ]
    LinearP3
    | 
    
    /**
     * PRIMARIES_SRGB | TRANSFUNC_LINEAR
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Graphic.Graphic2D.ColorManager.Core"
    ]
    LinearSrgb
    | 
    
    /**
     * PRIMARIES_BT709 | TRANSFUNC_LINEAR
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Graphic.Graphic2D.ColorManager.Core"
    ]
    LinearBt709
    | 
    
    /**
     * PRIMARIES_BT2020 | TRANSFUNC_LINEAR
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Graphic.Graphic2D.ColorManager.Core"
    ]
    LinearBt2020
    | 
    
    /**
     * PRIMARIES_SRGB | TRANSFUNC_SRGB | RANGE_FULL
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Graphic.Graphic2D.ColorManager.Core"
    ]
    DisplaySrgb
    | 
    
    /**
     * PRIMARIES_P3_D65 | TRANSFUNC_SRGB | RANGE_FULL
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Graphic.Graphic2D.ColorManager.Core"
    ]
    DisplayP3Srgb
    | 
    
    /**
     * PRIMARIES_P3_D65 | TRANSFUNC_HLG | RANGE_FULL
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Graphic.Graphic2D.ColorManager.Core"
    ]
    DisplayP3Hlg
    | 

    /**
     * PRIMARIES_DISPLAY_P3 | TRANSFUNC_PQ | RANGE_FULL
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Graphic.Graphic2D.ColorManager.Core"
    ]
    DisplayP3Pq
    |

    /**
     * Indicates a customized color space.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Graphic.Graphic2D.ColorManager.Core"
    ]
    Custom
    | ...
}


extend ColorSpace <: ToString {
    
    /**
     * Converts the ColorSpace to its string representation.
     * @returns { String } A string representation of the ColorSpace.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Graphic.Graphic2D.ColorManager.Core"
    ]
    public func toString(): String
}


extend ColorSpace <: Equatable<ColorSpace> {
    
    /**
     * Compares this ColorSpace with another for equality.
     * @param { ColorSpace } other - The obj to compare with.
     * @returns { Bool } True if both modes are equal, false otherwise.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Graphic.Graphic2D.ColorManager.Core"
    ]
    public operator func ==(other: ColorSpace): Bool
    
    /**
     * Compares this ColorSpace with another for inequality.
     * @param { ColorSpace } other - The obj to compare with.
     * @returns { Bool } True if both modes are not equal, false otherwise.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Graphic.Graphic2D.ColorManager.Core"
    ]
    public operator func !=(other: ColorSpace): Bool
}

/**
 * Describes the primary colors red, green, blue and white point coordinated as (x, y)
 * in color space, in terms of real world chromaticities.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Graphic.Graphic2D.ColorManager.Core"
]
public class ColorSpacePrimaries {
    /**
     * Coordinate value x of red color.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Graphic.Graphic2D.ColorManager.Core"
    ]
    public var redX: Float32

    /**
     * Coordinate value y of red color.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Graphic.Graphic2D.ColorManager.Core"
    ]
    public var redY: Float32

    /**
     * Coordinate value x of green color.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Graphic.Graphic2D.ColorManager.Core"
    ]
    public var greenX: Float32

    /**
     * Coordinate value y of green color.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Graphic.Graphic2D.ColorManager.Core"
    ]
    public var greenY: Float32

    /**
     * Coordinate value x of blue color.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Graphic.Graphic2D.ColorManager.Core"
    ]
    public var blueX: Float32

    /**
     * Coordinate value y of blue color.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Graphic.Graphic2D.ColorManager.Core"
    ]
    public var blueY: Float32

    /**
     * Coordinate value x of white point.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Graphic.Graphic2D.ColorManager.Core"
    ]
    public var whitePointX: Float32

    /**
     * Coordinate value y of white point.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Graphic.Graphic2D.ColorManager.Core"
    ]
    public var whitePointY: Float32

    /**
     * ColorSpacePrimaries constructor.
     *
     * @param {Float32} redX - Coordinate value x of red color
     * @param {Float32} redY - Coordinate value y of red color
     * @param {Float32} greenX - Coordinate value x of green color
     * @param {Float32} greenY - Coordinate value y of green color
     * @param {Float32} blueX - Coordinate value x of blue color
     * @param {Float32} blueY - Coordinate value y of blue color
     * @param {Float32} whitePointX - Coordinate value x of white point
     * @param {Float32} whitePointY - Coordinate value y of white point.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Graphic.Graphic2D.ColorManager.Core"
    ]
    public init(redX: Float32, redY: Float32, greenX: Float32, greenY: Float32, blueX: Float32, blueY: Float32,
        whitePointX: Float32, whitePointY: Float32)
}
