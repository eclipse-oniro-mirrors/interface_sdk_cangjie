package ohos.base

import ohos.business_exception.*
import ohos.ffi.*
import ohos.hilog.HilogChannel
import ohos.labels.APILevel
import std.collection.*
import std.collection.HashMap
import std.deriving.Derive

/**
 * Defines VoidCallback.
 */
public type VoidCallback = () -> Unit

/**
 * Defines the callback.
 *
 * @param { T } data - The input data
 * @returns { V } The result of the callback.
 */
public type Callback<T, V> = (T) -> V

/**
 * Submit the task to the main thread for execution.
 *
 * @param { () -> Unit } task - The task to be executed on the main thread
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public func launch(task: () -> Unit): Unit

/**
 * Defines interface CollectionEx.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public interface CollectionEx<T> {
    /**
     * The size of the collection.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    prop size: Int64

    /**
     * Sets the element at the specified index with a new element.
     *
     * @param { Int64 } idx - The index of the element to set
     * @param { T } value - The new element
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    operator func [](idx: Int64, value!: T): Unit

    /**
     * Gets the element at the specified index.
     *
     * @param { Int64 } idx - The index of the element to get
     * @returns { T } The element at the specified index.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    operator func [](idx: Int64): T
}

extend<T> Array<T> <: CollectionEx<T> {}

extend<T> ArrayList<T> <: CollectionEx<T> {}

/**
 * Instantiate the ColorMetrics class using ResourceColor
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public interface ResourceColor {
    /**
     * The value type of ResourceColor.
     * @returns { UInt32 } Color value in rgba.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    func toUInt32(): UInt32
}

extend Int64 <: ResourceColor {
    /**
     * The hexadecimal value of the color.
     *
     * @returns { UInt32 } The rgba value of color.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    @OverflowWrapping
    public func toUInt32(): UInt32
}

extend UInt32 <: ResourceColor {
    /**
     * The hexadecimal value of the color.
     *
     * @returns { UInt32 } The rgba value of color.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func toUInt32(): UInt32
}

/**
 * Common class of color.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class Color <: ResourceColor {
    /**
     * Black.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public static let Black: Color = Color(0xff000000)

    /**
     * Blue.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public static let Blue: Color = Color(0xff0000ff)

    /**
     * Gray.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public static let Gray: Color = Color(0xff808080)

    /**
     * Green.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public static let Green: Color = Color(0xff008000)

    /**
     * Red.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public static let Red: Color = Color(0xffff0000)

    /**
     * White.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public static let White: Color = Color(0xffffffff)

    /**
     * Transparent.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public static let Transparent: Color = Color(0, 0, 0, alpha: 0.0)

    /**
     * Constructor of Color.
     *
     * @param { UInt8 } red - Red component of color
     * @param { UInt8 } green - Green component of color
     * @param { UInt8 } blue - Blue component of color
     * @param { ?Float32 } [alpha] - Alpha component of color. The default value is 1.0.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(red: UInt8, green: UInt8, blue: UInt8, alpha!: ?Float32 = None)

    /**
     * Constructor of Color.
     *
     * @param { UInt32 } value - The rgba value of color
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(value: UInt32)

    /**
     * The hexadecimal value of the color.
     *
     * @returns { UInt32 } The rgba value of color.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func toUInt32(): UInt32
}

/**
 * Defines the length property.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public interface Length {
    /**
     * The value of the Length type.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    prop value: Float64

    /**
     * The unit of the Length type. The default value is Vp.
     *
     * @default Vp
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    prop unitType: LengthUnit
}

/**
 * Defines the length property.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public interface LengthProp {
    /**
     * Define the length property in units of px.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    prop px: Length

    /**
     * Define the length property in units of vp.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    prop vp: Length

    /**
     * Define the length property in units of fp.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    prop fp: Length

    /**
     * Define the length property in units of percent.
     * The value 1 indicates 100%.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    prop percent: Length

    /**
     * Define the length property in units of lpx.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    prop lpx: Length
}

/**
 * Defines the Length Metrics.
 * When the length unit is percent, the value 1 indicates 100%.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class LengthMetrics <: Length {
    /**
     * Density independent pixels, one vp is one pixel on a 160 dpi screen.
     *
     * @param { Float64 } value - The value of length
     * @param { LengthUnit } [unit] - The unit of length. the default unit is LengthUnit.Vp.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(value: Float64, unit!: LengthUnit = LengthUnit.Vp)

    /**
     * The value of the LengthMetrics.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public prop value: Float64

    /**
     * The unit of the LengthMetrics. The default value is Vp.
     *
     * @default Vp
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public prop unitType: LengthUnit
}

/**
 * Defines the Length Unit.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum LengthUnit {
    /**
     * The pixel length metrics unit.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Px
    | 
    /**
     * Density independent pixels, one vp is one pixel on a 160 dpi screen
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Vp
    | 
    /**
     * Scale independent pixels. This is like Vp but will be scaled by
     * user's font size preference.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Fp
    | 
    /**
     * The percentage of either a value from the element's parent or from
     * another property of the element itself.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Percent
    | 
    /**
     * Logic pixels used in ACE2.0 instead of PX, and PX is the physical pixels in ACE2.0.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    Lpx
    | ...

    /**
     * Get the length property of number value.
     *
     * @returns { Int32 } The integer value of the length unit.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func getValue(): Int32

    /**
     * Parse the length number value to LengthUnit type.
     *
     * @param { Int32 } value - The integer value to parse
     * @returns { LengthUnit } The corresponding LengthUnit.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public static func parse(value: Int32): LengthUnit
}

extend LengthUnit <: Equatable<LengthUnit> {
    /**
     * Compares this LengthUnit with another for equality.
     * @param { LengthUnit } other - The LengthUnit to compare with
     * @returns { Bool } True if both modes are equal, false otherwise.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public operator func ==(other: LengthUnit): Bool
    /**
     * Compares this LengthUnit with another for equality.
     * @param { LengthUnit } other - The LengthUnit to compare with
     * @returns { Bool } True if both modes are not equal, false otherwise.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public operator func !=(other: LengthUnit): Bool
}

extend Float64 <: LengthProp & Length {
    /**
     * Defines the length property in units of px.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public prop px: Length

    /**
     * Defines the length property in units of vp.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public prop vp: Length

    /**
     * Defines the length property in units of fp.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public prop fp: Length

    /**
     * Defines the length property in units of percent.
     * The value 1 indicates 100%.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public prop percent: Length

    /**
     * Defines the length property in units of lpx.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public prop lpx: Length

    /**
     * The value of the current type.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public prop value: Float64

    /**
     * The unit of the current type. The default value is Vp.
     *
     * @default Vp
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public prop unitType: LengthUnit
}

extend Int64 <: LengthProp & Length {
    /**
     * Defines the length property in units of px.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public prop px: Length

    /**
     * Defines the length property in units of vp.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public prop vp: Length

    /**
     * Defines the length property in units of fp.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public prop fp: Length

    /**
     * Defines the length property in units of percent. The value 1 indicates 100%
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public prop percent: Length

    /**
     * Defines the length property in units of lpx.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public prop lpx: Length

    /**
     * The value of the current type.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public prop value: Float64

    /**
     * The unit of the current type. The default value is Vp.
     *
     * @default Vp
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public prop unitType: LengthUnit
}

/**
 * Defines class MainThreadContext.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class MainThreadContext <: ThreadContext

/**
 * UIThread get MainThreadContext instance.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public let UIThread: MainThreadContext = MainThreadContext.instance_

/**
 * Defines interface ResourceStr.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public interface ResourceStr {}

extend String <: ResourceStr {}

/**
 * Defines class ReuseParams.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class ReuseParams {
    /**
     * ReuseParams constructor.
     *
     * @param { Array<(String, Any)> } arr - The params array
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public init(arr: Array<(String, Any)>)

    /**
     * Gets the value of the specified key.
     *
     * @param { String } key - The key to get value
     * @returns { ?T } The value associated with the key, or null if not found.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.ArkUI.ArkUI.Full"
    ]
    public func get<T>(key: String): ?T
}

/**
 * Define syscap function.
 *
 * @param { String } syscap - System Capability to be determined
 * @returns { Bool } True if the system capability is available, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public func canIUse(syscap: String): Bool