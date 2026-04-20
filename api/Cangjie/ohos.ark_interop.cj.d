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

package ohos.ark_interop
internal import ohos.labels.APILevel

internal import std.math.numeric.BigInt
import ohos.business_exception.BusinessException
import std.collection.{HashMap, EquatableCollection}
import std.collection.HashMap
import std.collection.{HashMap, ArrayList}
import std.convert.Parsable
import std.sync.{Mutex, AtomicInt8}
import std.collection.ArrayList
import std.sync.Mutex
import std.sync.AtomicInt64

/**
 * Alias for function which is `(CPointer<Byte>) -> Unit`.
 */
public type JSBufferFinalizer = (CPointer<Byte>) -> Unit

/**
 * ArrayBuffer relative operation class, interop ArrayBuffer, DataView and TypedArrays.
 */
@!APILevel[
    since: "22"
]
public class JSArrayBuffer <: JSHeapObject {
    /**
     * Binding memory's size in byte.
     *
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public prop byteLength: Int32

    /**
     * Read binding memory to Array<Byte>.
     *
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { Array<Byte> } Cangjie array.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func readBytes(): Array<Byte>

    /**
     * Read binding memory to Array<UInt8>.
     *
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { Array<UInt8> } Cangjie array.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func toUInt8Array(): Array<UInt8>

    /**
     * Read binding memory to Array<Int8>.
     *
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { Array<Int8> } Cangjie array.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func toInt8Array(): Array<Int8>

    /**
     * Read binding memory to Array<UInt16>.
     *
     * @throws { BusinessException } 34300002 - Outside error occurred.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { Array<UInt16> } Cangjie array.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func toUInt16Array(): Array<UInt16>

    /**
     * Read binding memory to Array<Int16>.
     *
     * @throws { BusinessException } 34300002 - Outside error occurred.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { Array<Int16> } Cangjie array.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func toInt16Array(): Array<Int16>

    /**
     * Read binding memory to Array<Int32>.
     *
     * @throws { BusinessException } 34300002 - Outside error occurred.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { Array<Int32> } Cangjie array.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func toInt32Array(): Array<Int32>

    /**
     * Read binding memory to Array<UInt32>.
     *
     * @throws { BusinessException } 34300002 - Outside error occurred.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { Array<UInt32> } Cangjie array.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func toUInt32Array(): Array<UInt32>

    /**
     * Read binding memory to Array<Float32>.
     *
     * @throws { BusinessException } 34300002 - Outside error occurred.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { Array<Float32> } Cangjie array.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func toFloat32Array(): Array<Float32>

    /**
     * Read binding memory to Array<UInt64>.
     *
     * @throws { BusinessException } 34300002 - Outside error occurred.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { Array<UInt64> } Cangjie array.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func toUInt64Array(): Array<UInt64>

    /**
     * Read binding memory to Array<Int64>.
     *
     * @throws { BusinessException } 34300002 - Outside error occurred.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { Array<Int64> } Cangjie array.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func toInt64Array(): Array<Int64>

    /**
     * Read binding memory to Array<Float64>.
     *
     * @throws { BusinessException } 34300002 - Outside error occurred.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { Array<Float64> } Cangjie array.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func toFloat64Array(): Array<Float64>

    /**
     * Return the JSValue of arrayBuffer in ArkTS.
     *
     * @throws { BusinessException } 34300002 - Outside error occurred.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { JSValue } ArkTS unified type.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func toArrayBufferJSValue(): JSValue

    /**
     * Return the JSValue of uint8Array in ArkTS.
     *
     * @throws { BusinessException } 34300002 - Outside error occurred.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { JSValue } ArkTS unified type.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func toUInt8ArrayJSValue(): JSValue

    /**
     * Return the JSValue of uint8ClampedArray in ArkTS.
     *
     * @throws { BusinessException } 34300002 - Outside error occurred.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { JSValue } ArkTS unified type.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func toUInt8ClampedArrayJSValue(): JSValue

    /**
     * Return the JSValue of int8Array in ArkTS.
     *
     * @throws { BusinessException } 34300002 - Outside error occurred.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { JSValue } ArkTS unified type.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func toInt8ArrayJSValue(): JSValue

    /**
     * Return the JSValue of uint16Array in ArkTS.
     *
     * @throws { BusinessException } 34300002 - Outside error occurred.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { JSValue } ArkTS unified type.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func toUInt16ArrayJSValue(): JSValue

    /**
     * Return the JSValue of int16Array in ArkTS.
     *
     * @throws { BusinessException } 34300002 - Outside error occurred.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { JSValue } ArkTS unified type.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func toInt16ArrayJSValue(): JSValue

    /**
     * Return the JSValue of uint32Array in ArkTS.
     *
     * @throws { BusinessException } 34300002 - Outside error occurred.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { JSValue } ArkTS unified type.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func toUInt32ArrayJSValue(): JSValue

    /**
     * Return the JSValue of int32Array in ArkTS.
     *
     * @throws { BusinessException } 34300002 - Outside error occurred.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { JSValue } ArkTS unified type.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func toInt32ArrayJSValue(): JSValue

    /**
     * Return the JSValue of uint64Array in ArkTS.
     *
     * @throws { BusinessException } 34300002 - Outside error occurred.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { JSValue } ArkTS unified type.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func toUInt64ArrayJSValue(): JSValue

    /**
     * Return the JSValue of int64Array in ArkTS.
     *
     * @throws { BusinessException } 34300002 - Outside error occurred.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { JSValue } ArkTS unified type.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func toInt64ArrayJSValue(): JSValue

    /**
     * Return the JSValue of float32Array in ArkTS.
     *
     * @throws { BusinessException } 34300002 - Outside error occurred.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { JSValue } ArkTS unified type.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func toFloat32ArrayJSValue(): JSValue

    /**
     * Return the JSValue of float64Array in ArkTS.
     *
     * @throws { BusinessException } 34300002 - Outside error occurred.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { JSValue } ArkTS unified type.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func toFloat64ArrayJSValue(): JSValue
}

/**
 * The JSBigInt object is used to represent a safe reference to the ArkTS bigint type.
 * It can be converted to Cangjie BigInt.
 */
@!APILevel[
    since: "22"
]
public class JSBigInt <: JSHeapObject {
    /**
     * Convert JSBigInt to Cangjie BigInt.
     *
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { BigInt } Cangjie BigInt.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func toBigInt(): BigInt
}

/**
 * The JSClass object is used to represent a safe reference to the ArkTS class (constructor).
 * Method and accessors can be added to this class, and instances of this class can be created.
 */
@!APILevel[
    since: "22"
]
public class JSClass <: JSHeapObject {
    /**
     * Prototype object of class.
     *
     * @throws { BusinessException } 34300002 - Outside error occurred.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public prop prototype: JSObject

    /**
     * Instantiate a new object through the ArkTS class.
     *
     * @throws { BusinessException } 34300002 - Outside error occurred.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { JSValue } Newly instantiated object.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func new(): JSValue

    /**
     * Instantiate a new object through the ArkTS class.
     *
     * @param { JSValue } arg - Constructor argument.
     * @throws { BusinessException } 34300002 - Outside error occurred.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { JSValue } Newly instantiated object.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func new(arg: JSValue): JSValue

    /**
     * Instantiate a new object through the ArkTS class.
     *
     * @param { Array<JSValue> } args - Constructor argument list.
     * @throws { BusinessException } 34300002 - Outside error occurred.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { JSValue } Newly instantiated object.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func new(args: Array<JSValue>): JSValue

    /**
     * Add a data member to the ArkTS class, typically used to define immutable property.
     *
     * @param { JSKeyable } key - Property key.
     * @param { JSValue } value - Property value.
     * @throws { BusinessException } 34300002 - Outside error occurred.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func addProperty(key: JSKeyable, value: JSValue): Unit

    /**
     * Define a pair of getter and setter for the ArkTS class.
     *
     * @param { JSKeyable } key - Property key.
     * @param { ?JSFunction } [ getter ] - Getter implementation. The default value is None.
     * @param { ?JSFunction } [ setter ] - Setter implementation. The default value is None.
     * @throws { BusinessException } 34300002 - Outside error occurred.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func addAccessor(key: JSKeyable, getter!: ?JSFunction = None, setter!: ?JSFunction = None): Unit

    /**
     * Define a pair of getter and setter for the ArkTS class.
     *
     * @param { JSKeyable } key - Property key.
     * @param { ?JSLambda } [ getter ] - Getter implementation. The default value is None.
     * @param { ?JSLambda } [ setter ] - Setter implementation. The default value is None.
     * @throws { BusinessException } 34300002 - Outside error occurred.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func addAccessor(key: JSKeyable, getter!: ?JSLambda = None, setter!: ?JSLambda = None): Unit

    /**
     * Define a method for the ArkTS class.
     *
     * @param { JSKeyable } key - Property key.
     * @param { JSFunction } method - Method implementation.
     * @throws { BusinessException } 34300002 - Outside error occurred.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func addMethod(key: JSKeyable, method: JSFunction): Unit

    /**
     * Define a method for the ArkTS class.
     *
     * @param { JSKeyable } key - Property key.
     * @param { JSLambda } method - Method implementation.
     * @throws { BusinessException } 34300002 - Outside error occurred.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func addMethod(key: JSKeyable, method: JSLambda): Unit
}

/**
 * Base class of objects shared with arkts. It has an unique id. When shared to arkts, the object would be kept to
 *  a global table. The id used to index the object.
 */
@!APILevel[
    since: "22"
]
public open class SharedObject {
    /**
     * Init SharedObject.
     */
    @!APILevel[
        since: "22"
    ]
    public init()

    /**
     * Id of the SharedObject in global table.
     */
    @!APILevel[
        since: "22"
    ]
    public prop nativeId: Int64
}

/**
 * The js presentation of a cj object. It holds the id of cj object, and affects the lifecycle of the cj object.
 */
@!APILevel[
    since: "22"
]
public class JSExternal <: JSHeapObject {
    /**
     * Get sharedObject by id.
     *
     * @throws { BusinessException } 34300002 - Outside error occurred.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { SharedObject } The bound Cangjie object.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func getData(): SharedObject

    /**
     * Cast sharedObject to Option<T>.
     *
     * @throws { BusinessException } 34300002 - Outside error occurred.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { Option<T> } The bound Cangjie object.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func cast<T>(): Option<T> where T <: SharedObject
}

/**
 * Information related to an ArkTS function call. It can obtain the `this` pointer, retrieve the number of
 * arguments, and get argument by index. Each ArkTS function call saves the argument list and other related
 * information on the ArkTS stack. JSCallInfo is a pointer to this information.
 */
@!APILevel[
    since: "22"
]
public class JSCallInfo {
    /**
     * Number of input arguments.
     *
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public prop count: Int64

    /**
     * `this` pointer.
     *
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public prop thisArg: JSValue

    /**
     * Get argument at index.
     *
     * @param { Int64 } index - Index.
     * @throws { BusinessException } 34300001 - The accessing index is out of range.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { JSValue } The JSValue at the Index.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public operator func [](index: Int64): JSValue
}

/**
 * Alias for function which is `(JSContext, JSCallInfo) -> JSValue`.
 */
public type JSLambda = (JSContext, JSCallInfo) -> JSValue

/**
 * A safe reference to the ArkTS function.
 */
@!APILevel[
    since: "22"
]
public class JSFunction <: JSHeapObject {
    /**
     * An ArkTS function call with None argument.
     *
     * @param { JSValue } [ thisArg ] - The `this` pointer. The default value is Undefined.
     * @throws { BusinessException } 34300002 - Outside error occurred.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { JSValue } Function call return value.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func call(thisArg!: JSValue = context.undefined().toJSValue()): JSValue

    /**
     * An ArkTS function call with one argument.
     *
     * @param { JSValue } arg - ArkTS function call parameter.
     * @param { JSValue } [ thisArg ] - ArkTS function call `this` pointer. The default value is Undefined.
     * @throws { BusinessException } 34300002 - Outside error occurred.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { JSValue } Function call return value.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func call(arg: JSValue, thisArg!: JSValue = context.undefined().toJSValue()): JSValue

    /**
     * An ArkTS function call with multiple arguments.
     *
     * @param { Array<JSValue> } args - Parameter list.
     * @param { JSValue } [ thisArg ] - The `this` pointer. The default value is Undefined.
     * @throws { BusinessException } 34300002 - Outside error occurred.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { JSValue } Function call return value.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func call(args: Array<JSValue>, thisArg!: JSValue = context.undefined().toJSValue()): JSValue
}

/**
 * JSObjects into cj are references, JSHeapObject is the base class of all JSObject references.
 *  JSHeapObject keeps the JSObject alive by create global handle, and dispose global handle after cj object are
 *  destructed(Note: the finalizer is called in final derived class [cj spec rule]).
 */
@!APILevel[
    since: "22"
]
abstract sealed class JSHeapObject {
    /**
     * Convert JSHeapObject to JSValue.
     *
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { JSValue } ArkTS unified type.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func toJSValue(): JSValue
}

/**
 * Function and performance expansion of JSString.
 */
@!APILevel[
    since: "22"
]
public class JSStringEx <: JSInteropType<JSStringEx> & Equatable<JSStringEx> & ToString {
    /**
     * Init JSStringEx.
     *
     * @param { String } str - Initial string.
     */
    @!APILevel[
        since: "22"
    ]
    public init(str: String)

    /**
     * Return true if and only if the two string are identical.
     *
     * @param { JSStringEx } str - String to compare.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { Bool } Returns true if equal, false if not equal.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public operator func ==(str: JSStringEx): Bool

    /**
     * Return true if and only if the two string are not identical.
     *
     * @param { JSStringEx } str - String to compare.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { Bool } Returns true if not equal, false if equal.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public operator func !=(str: JSStringEx): Bool

    /**
     * Convert JSStringEx to String.
     *
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { String } Converted string.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func toString(): String

    /**
     * Convert JSStringEx to JSValue.
     *
     * @param { JSContext } context - ArkTS interoperation context.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { JSValue } ArkTS unified type.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func toJSValue(context: JSContext): JSValue

    /**
     * Init JSStringEx from JSValue.
     *
     * @param { JSContext } context - ArkTS interoperation context.
     * @param { JSValue } input - ArkTS unified type.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @throws { BusinessException } 34300005 - The ArkTS data types do not match.
     * @returns { JSStringEx } Declarative interoperation macro type JSStringEx.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public static func fromJSValue(context: JSContext, input: JSValue): JSStringEx

    /**
     * Get ArkTS type name of JSStringEx.
     *
     * @returns { String } Converted ArkTS type name.
     */
    @!APILevel[
        since: "22"
    ]
    public static func toArktsType(): String
}

/**
 * Function and performance expansion of JSArray.
 */
@!APILevel[
    since: "22"
]
public class JSArrayEx<T> <: JSInteropType<JSArrayEx<T>> where T <: JSInteropType<T> {
    /**
     * Init JSArrayEx<T>.
     *
     * @param { Array<T> } arr - Created based on this Array instance.
     */
    @!APILevel[
        since: "22"
    ]
    public init(arr: Array<T>)

    /**
     * Clone JSArrayEx<T>. A deep copy of JSArrayEx<T> data will be performed.
     *
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { JSArrayEx<T> } New JSArrayEx obtained from cloning.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func clone(): JSArrayEx<T>

    /**
     * Create a new JSArrayEx, with content being the concatenation of the current JSArrayEx follow by other JSArrayEx.
     *
     * @param { JSArrayEx<T> } other - JSArrayEx to concatenate at the end.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { JSArrayEx<T> } New JSArrayEx obtained from concatenation.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func concat(other: JSArrayEx<T>): JSArrayEx<T>

    /**
     * The size of JSArrayEx.
     *
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public prop size: Int64

    /**
     * Get the element at index.
     *
     * @param { Int64 } index - Index of the value to retrieve.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { Option<T> } Value at the specified index in the current array.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func get(index: Int64): Option<T>

    /**
     * Set the element at index.
     *
     * @param { Int64 } index - Index of the value to modify, range [0..this.size].
     * @param { T } element - Target value to modify.
     * @throws { BusinessException } 34300001 - The accessing index is out of range.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func set(index: Int64, element: T): Unit

    /**
     * Check whether the size is empty. If yes, true is returned. Otherwise, false is returned.
     *
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { Bool } Returns true if the array is empty; otherwise, returns false.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func isEmpty(): Bool

    /**
     * Get the element at index.
     *
     * @param { Int64 } index - Index of the value to retrieve.
     * @throws { BusinessException } 34300001 - The accessing index is out of range.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { T } Value at the specified index in the current array.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public operator func [](index: Int64): T

    /**
     * Set the element at index.
     *
     * @param { Int64 } index - Index of the value to modify, range [0..this.size].
     * @param { T } value - Target value to modify.
     * @throws { BusinessException } 34300001 - The accessing index is out of range.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public operator func [](index: Int64, value!: T): Unit

    /**
     * Convert JSArrayEx<T> to Array<T>.
     *
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { Array<T> } Converted Cangjie array.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func toArray(): Array<T>

    /**
     * Convert JSArrayEx<T> to JSValue.
     *
     * @param { JSContext } context - ArkTS interop context.
     * @throws { BusinessException } 34300002 - Outside error occurred.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { JSValue } ArkTS unified type.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func toJSValue(context: JSContext): JSValue

    /**
     * Init JSArrayEx<T> from JSValue.
     *
     * @param { JSContext } context - ArkTS interop context.
     * @param { JSValue } input - ArkTS unified type.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @throws { BusinessException } 34300005 - The ArkTS data types do not match.
     * @returns { JSArrayEx<T> } Declarative interop macro type JSArrayEx.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public static func fromJSValue(context: JSContext, input: JSValue): JSArrayEx<T>

    /**
     * Get ArkTS type name of JSArrayEx<T>.
     *
     * @returns { String } Converted ArkTS type name.
     */
    @!APILevel[
        since: "22"
    ]
    public static func toArktsType(): String
}

/**
 * Function and performance expansion of JSMap.
 */
@!APILevel[
    since: "22"
]
public class JSHashMapEx<K, V> <: JSInteropType<JSHashMapEx<K, V>> where K <: JSKeyable & Hashable & Equatable<K> &
    JSInteropType<K>, V <: JSInteropType<V> {
    /**
     * Init JSHashMapEx<K, V>.
     *
     * @param { HashMap<K, V> } map - Creates based on this HashMap instance.
     */
    @!APILevel[
        since: "22"
    ]
    public init(map: HashMap<K, V>)

    /**
     * Init JSHashMapEx<K, V>.
     */
    @!APILevel[
        since: "22"
    ]
    public init()

    /**
     * Get the value corresponding to the key.
     *
     * @param { K } key - Input key.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { Option<V> } Value corresponding to the key. Wrapped in Option.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func get(key: K): Option<V>

    /**
     * Clear JSHashMapEx.
     *
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func clear(): Unit

    /**
     * Clone JSHashMapEx<K, V>. A deep copy of JSHashMapEx<K, V> data will be peformed.
     *
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { JSHashMapEx<K, V> } The newly cloned JSHashMapEx.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func clone(): JSHashMapEx<K, V>

    /**
     * Checks whether the mapping relationship corresponding to the collection key exists in this JSHashMapEx<K, V>.
     *
     * @param { Collection<K> } keys - Keys to be checked.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { Bool } Returns true if all are contained; otherwise, false.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func containsAll(keys: Collection<K>): Bool

    /**
     * Check whether the size is empty. If yes, true is returned. Otherwise, false is returned.
     *
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { Bool } Whether JSHashMapEx is empty.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func isEmpty(): Bool

    /**
     * Set value corresponding to the key.
     *
     * @param { K } key - Key to be inserted.
     * @param { V } value - Value to be assigned.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func set(key: K, value: V): Unit

    /**
     * Set value corresponding to the key in collection.
     *
     * @param { Collection<(K, V)> } elements - Collection of key-value pairs to be added to JSHashMapEx.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func setAll(elements: Collection<(K, V)>): Unit

    /**
     * Set value corresponding to the key if key does not exists in this JSHashMapEx<K, V>.
     *
     * @param { K } key - Key to be inserted.
     * @param { V } value - Value to be assigned.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { Bool } Returns false if the key existed before assignment; otherwise, true.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func setIfAbsent(key: K, value: V): Bool

    /**
     * Delete key in this JSHashMapEx<K, V>.
     *
     * @param { K } key - Key to be deleted.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { Bool } Returns true if the key existed and was successfully deleted; otherwise, false.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func delete(key: K): Bool

    /**
     * Delete keys in this JSHashMapEx<K, V>.
     *
     * @param { Collection<K> } keys - Collection of keys to be deleted.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func deleteAll(keys: Collection<K>): Unit

    /**
     * Delete keys that do not meet the predicate condition.
     *
     * @param { (K, V) -> Bool } predicate - Lambda expression for evaluation.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func deleteIf(predicate: (K, V) -> Bool): Unit

    /**
     * Return keys.
     *
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { EquatableCollection<K> } Container holding all returned keys.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func keys(): EquatableCollection<K>

    /**
     * Return values.
     *
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { Collection<V> } Container holding all returned values.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func values(): Collection<V>

    /**
     * The size of JSHashMapEx<K, V>.
     *
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public prop size: Int64

    /**
     * Checks whether the mapping relationship corresponding to the key exists in this JSHashMapEx<K, V>.
     *
     * @param { K } key - Key to be checked.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { Bool } Returns true if present; otherwise, false.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func has(key: K): Bool

    /**
     * Convert JSHashMapEx<K, V> to HashMap<K, V>.
     *
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { HashMap<K, V> } Converted HashMap.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func toHashMap(): HashMap<K, V>

    /**
     * Get the value corresponding to the key.
     *
     * @param { K } key - Key to be inserted.
     * @throws { BusinessException } 34300002 - Outside error occurred.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { V } Value corresponding to the key.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public operator func [](key: K): V

    /**
     * Set value corresponding to the key.
     *
     * @param { K } key - Key to be inserted.
     * @param { V } value - Value to be assigned.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public operator func [](key: K, value!: V): Unit

    /**
     * Convert JSHashMapEx<K, V> to JSValue.
     *
     * @param { JSContext } c - ArkTS interoperability context.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { JSValue } ArkTS unified type.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func toJSValue(c: JSContext): JSValue

    /**
     * Init JSHashMapEx<K, V> from JSValue.
     *
     * @param { JSContext } context - ArkTS interoperability context.
     * @param { JSValue } input - ArkTS unified type.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { JSHashMapEx<K, V> } Declarative interoperability macro type JSHashMapEx.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public static func fromJSValue(context: JSContext, input: JSValue): JSHashMapEx<K, V>

    /**
     * Get ArkTS type name of JSHashMapEx<K, V>.
     *
     * @returns { String } Converted ArkTS type name.
     */
    @!APILevel[
        since: "22"
    ]
    public static func toArktsType(): String
}

@!APILevel[
    since: "22"
]
sealed interface JSInteropByte {}

/**
 * Byte extended JSInteropByte interface.
 */
@!APILevel[
    since: "22"
]
extend Byte <: JSInteropByte {}

/**
 * The interface is used to implement extension methods for types that can be utilized in declarative interop macros.
 */
@!APILevel[
    since: "22"
]
public interface JSInteropType<T> {
    /**
     * Init from JSValue.
     *
     * @param { JSContext } context - ArkTS interoperability context.
     * @param { JSValue } input - ArkTS unified type.
     * @returns { T } Cangjie type.
     */
    @!APILevel[
        since: "22"
    ]
    static func fromJSValue(context: JSContext, input: JSValue): T

    /**
     * Convert to JSValue.
     *
     * @param { JSContext } context - ArkTS interoperability context.
     * @returns { JSValue } ArkTS unified type.
     */
    @!APILevel[
        since: "22"
    ]
    func toJSValue(context: JSContext): JSValue

    /**
     * Get ArkTS type name corresponding to the Cangjie type.
     *
     * @returns { String } Converted ArkTS type name.
     */
    @!APILevel[
        since: "22"
    ]
    static func toArktsType(): String
}

/**
 * Int8 extended JSInteropType interface.
 */
@!APILevel[
    since: "22"
]
extend Int8 <: JSInteropType<Int8> {
    /**
     * Convert JSValue to Int8.
     *
     * @param { JSContext } _ - ArkTS interoperability context.
     * @param { JSValue } input - The ArkTS unified type.
     * @throws { BusinessException } 34300002 - Outside error occurred.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @throws { BusinessException } 34300005 - The ArkTS data types do not match.
     * @returns { Int8 } Cangjie type.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public static func fromJSValue(_: JSContext, input: JSValue): Int8

    /**
     * Convert Int8 to JSValue.
     *
     * @param { JSContext } context - ArkTS interoperability context.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { JSValue } ArkTS unified type.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func toJSValue(context: JSContext): JSValue

    /**
     * Get ArkTS type name of Int8.
     *
     * @returns { String } Converted ArkTS type name.
     */
    @!APILevel[
        since: "22"
    ]
    public static func toArktsType(): String
}

/**
 * Int16 extended JSInteropType interface.
 */
@!APILevel[
    since: "22"
]
extend Int16 <: JSInteropType<Int16> {
    /**
     * Convert JSValue to Int16.
     *
     * @param { JSContext } _ - ArkTS interoperability context.
     * @param { JSValue } input - The ArkTS unified type.
     * @throws { BusinessException } 34300002 - Outside error occurred.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @throws { BusinessException } 34300005 - The ArkTS data types do not match.
     * @returns { Int16 } Cangjie type.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public static func fromJSValue(_: JSContext, input: JSValue): Int16

    /**
     * Convert Int16 to JSValue.
     *
     * @param { JSContext } context - ArkTS interoperability context.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { JSValue } ArkTS unified type.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func toJSValue(context: JSContext): JSValue

    /**
     * Get ArkTS type name of Int16.
     *
     * @returns { String } Converted ArkTS type name.
     */
    @!APILevel[
        since: "22"
    ]
    public static func toArktsType(): String
}

/**
 * Int32 extended JSInteropType interface.
 */
@!APILevel[
    since: "22"
]
extend Int32 <: JSInteropType<Int32> {
    /**
     * Convert JSValue to Int32.
     *
     * @param { JSContext } _ - ArkTS interoperability context.
     * @param { JSValue } input - The ArkTS unified type.
     * @throws { BusinessException } 34300002 - Outside error occurred.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @throws { BusinessException } 34300005 - The ArkTS data types do not match.
     * @returns { Int32 } Cangjie type.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public static func fromJSValue(_: JSContext, input: JSValue): Int32

    /**
     * Convert Int32 to JSValue.
     *
     * @param { JSContext } context - ArkTS interoperability context.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { JSValue } ArkTS unified type.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func toJSValue(context: JSContext): JSValue

    /**
     * Get ArkTS type name of Int32.
     *
     * @returns { String } Converted ArkTS type name.
     */
    @!APILevel[
        since: "22"
    ]
    public static func toArktsType(): String
}

/**
 * Int64 extended JSInteropType interface.
 */
@!APILevel[
    since: "22"
]
extend Int64 <: JSInteropType<Int64> {
    /**
     * Convert JSValue to Int64.
     *
     * @param { JSContext } _ - ArkTS interoperability context.
     * @param { JSValue } input - The ArkTS unified type.
     * @throws { BusinessException } 34300002 - Outside error occurred.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @throws { BusinessException } 34300005 - The ArkTS data types do not match.
     * @returns { Int64 } Cangjie type.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public static func fromJSValue(_: JSContext, input: JSValue): Int64

    /**
     * Convert Int64 to JSValue.
     *
     * @param { JSContext } context - ArkTS interoperability context.
     * @throws { BusinessException } 34300002 - Outside error occurred.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { JSValue } ArkTS unified type.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func toJSValue(context: JSContext): JSValue

    /**
     * Get ArkTS type name of Int64.
     *
     * @returns { String } Converted ArkTS type name.
     */
    @!APILevel[
        since: "22"
    ]
    public static func toArktsType(): String
}

/**
 * UInt8 extended JSInteropType interface.
 */
@!APILevel[
    since: "22"
]
extend UInt8 <: JSInteropType<UInt8> {
    /**
     * Convert JSValue to UInt8.
     *
     * @param { JSContext } _ - ArkTS interoperability context.
     * @param { JSValue } input - The ArkTS unified type.
     * @throws { BusinessException } 34300002 - Outside error occurred.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @throws { BusinessException } 34300005 - The ArkTS data types do not match.
     * @returns { UInt8 } Cangjie type.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public static func fromJSValue(_: JSContext, input: JSValue): UInt8

    /**
     * Convert UInt8 to JSValue.
     *
     * @param { JSContext } context - ArkTS interoperability context.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { JSValue } ArkTS unified type.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func toJSValue(context: JSContext): JSValue

    /**
     * Get ArkTS type name of UInt8.
     *
     * @returns { String } Converted ArkTS type name.
     */
    @!APILevel[
        since: "22"
    ]
    public static func toArktsType(): String
}

/**
 * UInt16 extended JSInteropType interface.
 */
@!APILevel[
    since: "22"
]
extend UInt16 <: JSInteropType<UInt16> {
    /**
     * Convert JSValue to UInt16.
     *
     * @param { JSContext } _ - ArkTS interoperability context.
     * @param { JSValue } input - The ArkTS unified type.
     * @throws { BusinessException } 34300002 - Outside error occurred.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @throws { BusinessException } 34300005 - The ArkTS data types do not match.
     * @returns { UInt16 } Cangjie type.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public static func fromJSValue(_: JSContext, input: JSValue): UInt16

    /**
     * Convert UInt16 to JSValue.
     *
     * @param { JSContext } context - ArkTS interoperability context.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { JSValue } ArkTS unified type.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func toJSValue(context: JSContext): JSValue

    /**
     * Get ArkTS type name of UInt16.
     *
     * @returns { String } Converted ArkTS type name.
     */
    @!APILevel[
        since: "22"
    ]
    public static func toArktsType(): String
}

/**
 * UInt32 extended JSInteropType interface.
 */
@!APILevel[
    since: "22"
]
extend UInt32 <: JSInteropType<UInt32> {
    /**
     * Convert JSValue to UInt32.
     *
     * @param { JSContext } _ - ArkTS interoperability context.
     * @param { JSValue } input - The ArkTS unified type.
     * @throws { BusinessException } 34300002 - Outside error occurred.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @throws { BusinessException } 34300005 - The ArkTS data types do not match.
     * @returns { UInt32 } Cangjie type.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    @OverflowWrapping
    public static func fromJSValue(_: JSContext, input: JSValue): UInt32

    /**
     * Convert UInt32 to JSValue.
     *
     * @param { JSContext } context - ArkTS interoperability context.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { JSValue } ArkTS unified type.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    @OverflowWrapping
    public func toJSValue(context: JSContext): JSValue

    /**
     * Get ArkTS type name of UInt32.
     *
     * @returns { String } Converted ArkTS type name.
     */
    @!APILevel[
        since: "22"
    ]
    public static func toArktsType(): String
}

/**
 * UInt64 extended JSInteropType interface.
 */
@!APILevel[
    since: "22"
]
extend UInt64 <: JSInteropType<UInt64> {
    /**
     * Convert JSValue to UInt64.
     *
     * @param { JSContext } _ - ArkTS interoperability context.
     * @param { JSValue } input - The ArkTS unified type.
     * @throws { BusinessException } 34300002 - Outside error occurred.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @throws { BusinessException } 34300005 - The ArkTS data types do not match.
     * @returns { UInt64 } Cangjie type.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public static func fromJSValue(_: JSContext, input: JSValue): UInt64

    /**
     * Convert UInt64 to JSValue.
     *
     * @param { JSContext } context - ArkTS interoperability context.
     * @throws { BusinessException } 34300002 - Outside error occurred.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { JSValue } ArkTS unified type.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func toJSValue(context: JSContext): JSValue

    /**
     * Get ArkTS type name of UInt64.
     *
     * @returns { String } Converted ArkTS type name.
     */
    @!APILevel[
        since: "22"
    ]
    public static func toArktsType(): String
}

/**
 * Float16 extended JSInteropType interface.
 */
@!APILevel[
    since: "22"
]
extend Float16 <: JSInteropType<Float16> {
    /**
     * Convert JSValue to Float16.
     *
     * @param { JSContext } _ - ArkTS interoperability context.
     * @param { JSValue } input - The ArkTS unified type.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @throws { BusinessException } 34300005 - The ArkTS data types do not match.
     * @returns { Float16 } Cangjie type.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public static func fromJSValue(_: JSContext, input: JSValue): Float16

    /**
     * Convert Float16 to JSValue.
     *
     * @param { JSContext } context - ArkTS interoperability context.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { JSValue } ArkTS unified type.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func toJSValue(context: JSContext): JSValue

    /**
     * Get ArkTS type name of Float16.
     *
     * @returns { String } Converted ArkTS type name.
     */
    @!APILevel[
        since: "22"
    ]
    public static func toArktsType(): String
}

/**
 * Float32 extended JSInteropType interface.
 */
@!APILevel[
    since: "22"
]
extend Float32 <: JSInteropType<Float32> {
    /**
     * Convert JSValue to Float32.
     *
     * @param { JSContext } _ - ArkTS interoperability context.
     * @param { JSValue } input - The ArkTS unified type.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @throws { BusinessException } 34300005 - The ArkTS data types do not match.
     * @returns { Float32 } Cangjie type.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public static func fromJSValue(_: JSContext, input: JSValue): Float32

    /**
     * Convert Float32 to JSValue.
     *
     * @param { JSContext } context - ArkTS interoperability context.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { JSValue } ArkTS unified type.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func toJSValue(context: JSContext): JSValue

    /**
     * Get ArkTS type name of Float32.
     *
     * @returns { String } Converted ArkTS type name.
     */
    @!APILevel[
        since: "22"
    ]
    public static func toArktsType(): String
}

/**
 * Float64 extended JSInteropType interface.
 */
@!APILevel[
    since: "22"
]
extend Float64 <: JSInteropType<Float64> & JSKeyable {
    /**
     * Convert JSValue to Float64.
     *
     * @param { JSContext } _ - ArkTS interoperability context.
     * @param { JSValue } input - The ArkTS unified type.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @throws { BusinessException } 34300005 - The ArkTS data types do not match.
     * @returns { Float64 } Cangjie type.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public static func fromJSValue(_: JSContext, input: JSValue): Float64

    /**
     * Convert Float64 to JSValue.
     *
     * @param { JSContext } context - ArkTS interoperability context.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { JSValue } ArkTS unified type.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func toJSValue(context: JSContext): JSValue

    /**
     * Get ArkTS type name of Float64.
     *
     * @returns { String } Converted ArkTS type name.
     */
    @!APILevel[
        since: "22"
    ]
    public static func toArktsType(): String
}

/**
 * Bool extended JSInteropType interface.
 */
@!APILevel[
    since: "22"
]
extend Bool <: JSInteropType<Bool> {
    /**
     * Convert JSValue to Bool.
     *
     * @param { JSContext } _ - ArkTS interoperability context.
     * @param { JSValue } input - The ArkTS unified type.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @throws { BusinessException } 34300005 - The ArkTS data types do not match.
     * @returns { Bool } Cangjie type.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public static func fromJSValue(_: JSContext, input: JSValue): Bool

    /**
     * Convert Bool to JSValue.
     *
     * @param { JSContext } context - ArkTS interoperability context.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { JSValue } ArkTS unified type.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func toJSValue(context: JSContext): JSValue

    /**
     * Get ArkTS type name of Bool.
     *
     * @returns { String } Converted ArkTS type name.
     */
    @!APILevel[
        since: "22"
    ]
    public static func toArktsType(): String
}

/**
 * String extended JSInteropType interface.
 */
@!APILevel[
    since: "22"
]
extend String <: JSInteropType<String> {
    /**
     * Convert JSValue to String.
     *
     * @param { JSContext } _ - ArkTS interoperability context.
     * @param { JSValue } input - The ArkTS unified type.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @throws { BusinessException } 34300005 - The ArkTS data types do not match.
     * @returns { String } Cangjie type.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public static func fromJSValue(_: JSContext, input: JSValue): String

    /**
     * Get ArkTS type name of String.
     *
     * @returns { String } Converted ArkTS type name.
     */
    @!APILevel[
        since: "22"
    ]
    public static func toArktsType(): String
}

/**
 * JSString extended JSInteropType interface.
 */
@!APILevel[
    since: "22"
]
extend JSString <: JSInteropType<JSString> {
    /**
     * Convert JSValue to JSString.
     *
     * @param { JSContext } _ - ArkTS interoperability context.
     * @param { JSValue } input - The ArkTS unified type.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @throws { BusinessException } 34300005 - The ArkTS data types do not match.
     * @returns { JSString } Cangjie type.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public static func fromJSValue(_: JSContext, input: JSValue): JSString

    /**
     * Get ArkTS type name of JSString.
     *
     * @returns { String } Converted ArkTS type name.
     */
    @!APILevel[
        since: "22"
    ]
    public static func toArktsType(): String
}

/**
 * Unit extended JSInteropType interface.
 */
@!APILevel[
    since: "22"
]
extend Unit <: JSInteropType<Unit> {
    /**
     * Convert JSValue to Unit.
     *
     * @param { JSContext } _ - ArkTS interoperability context.
     * @param { JSValue } _ - The ArkTS unified type.
     * @returns { Unit } Cangjie type.
     */
    @!APILevel[
        since: "22"
    ]
    public static func fromJSValue(_: JSContext, _: JSValue): Unit

    /**
     * Convert Unit to JSValue.
     *
     * @param { JSContext } context - ArkTS interoperability context.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { JSValue } ArkTS unified type.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func toJSValue(context: JSContext): JSValue

    /**
     * Get ArkTS type name of Unit.
     *
     * @returns { String } Converted ArkTS type name.
     */
    @!APILevel[
        since: "22"
    ]
    public static func toArktsType(): String
}

/**
 * Option<T> extended JSInteropType interface.
 */
@!APILevel[
    since: "22"
]
extend<T> Option<T> <: JSInteropType<Option<T>> where T <: JSInteropType<T> {
    /**
     * Convert JSValue to Option<T>.
     *
     * @param { JSContext } context - ArkTS interoperability context.
     * @param { JSValue } input - The ArkTS unified type.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { Option<T> } Cangjie type.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public static func fromJSValue(context: JSContext, input: JSValue): Option<T>

    /**
     * Convert Option<T> to JSValue.
     *
     * @param { JSContext } context - ArkTS interoperability context.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { JSValue } ArkTS unified type.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func toJSValue(context: JSContext): JSValue

    /**
     * Get ArkTS type name of Option<T>.
     *
     * @returns { String } Converted ArkTS type name.
     */
    @!APILevel[
        since: "22"
    ]
    public static func toArktsType(): String
}

/**
 * Array<T> extended JSInteropType interface.
 */
@!APILevel[
    since: "22"
]
extend<T> Array<T> <: JSInteropType<Array<T>> where T <: JSInteropByte {
    /**
     * Convert JSValue to Array<T>.
     *
     * @param { JSContext } _ - ArkTS interoperability context.
     * @param { JSValue } input - The ArkTS unified type.
     * @throws { BusinessException } 34300002 - Outside error occurred.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @throws { BusinessException } 34300005 - The ArkTS data types do not match.
     * @returns { Array<T> } Cangjie type.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public static func fromJSValue(_: JSContext, input: JSValue): Array<T>

    /**
     * Convert Array to JSValue.
     *
     * @param { JSContext } context - ArkTS interoperability context.
     * @throws { BusinessException } 34300002 - Outside error occurred.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { JSValue } ArkTS unified type.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func toJSValue(context: JSContext): JSValue

    /**
     * Get ArkTS type name of Array.
     *
     * @returns { String } Converted ArkTS type name.
     */
    @!APILevel[
        since: "22"
    ]
    public static func toArktsType(): String
}

/**
 * Alias for function which is `(JSContext, JSObject) -> Unit`.
 */
public type ModuleRegister = (JSContext, JSObject) -> Unit

/**
 * Alias for function which is `(JSContext) -> JSClass`.
 */
public type ClassRegister = (JSContext) -> JSClass

/**
 * Alias for function which is `(JSContext) -> JSFunction`.
 */
public type FuncRegister = (JSContext) -> JSFunction

/**
 * A static class that provides interface for exporting symbol registration.
 */
@!APILevel[
    since: "22"
]
public class JSModule {
    /**
     * Register the interface to be exported to ArkTS.
     *
     * @param { ModuleRegister } register - A function that can return an ArkTS class (constructor).
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public static func registerModule(register: ModuleRegister): Unit

    /**
     * Register the API to be exported to ArkTS.
     *
     * @param { String } name - The corresponding Cangjie module name.
     * @param { ModuleRegister } register - A function that can return an ArkTS class (constructor).
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     */
    @!APILevel[
        since: "26.0.0",
        throwexception: true
    ]
    public static func registerModule(name: String, register: ModuleRegister): Unit

    /**
     * Register a class to be exported to ArkTS.
     *
     * @param { String } name - Export name.
     * @param { ClassRegister } register - A function that returns an ArkTS class.
     */
    @!APILevel[
        since: "22"
    ]
    public static func registerClass(name: String, register: ClassRegister): Unit

    /**
     * Register a function to be exported to ArkTS.
     *
     * @param { String } name - Exported function name.
     * @param { FuncRegister } register - A function that returns JSFunction.
     */
    @!APILevel[
        since: "22"
    ]
    public static func registerFunc(name: String, register: FuncRegister): Unit

    /**
     * Register a function to be exported to ArkTS.
     *
     * @param { String } name - Exported function name.
     * @param { JSLambda } lambda - The function to export.
     */
    @!APILevel[
        since: "22"
    ]
    public static func registerFunc(name: String, lambda: JSLambda): Unit
}

/**
 * A callback encapsulation object. JSPromise aims to provide consistent encapsulation for callbacks, significantly
 * enhancing its usability by combining the syntactic sugar of async and await. The lifecycle of JSPromise exceeds the
 * referenced ArkTS object.
 */
@!APILevel[
    since: "22"
]
public class JSPromise <: JSHeapObject {
    /**
     * Register result processing callback function.
     *
     * @param { JSFunction } onFulfilled - Result handling callback.
     * @param { ?JSFunction } [ onRejected ] - Exception handling callback. The default value is None.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func then(onFulfilled: JSFunction, onRejected!: ?JSFunction = None): Unit

    /**
     * Register exception processing callback function.
     *
     * @param { JSFunction } callback - Exception handling callback.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func catchError(callback: JSFunction): Unit
}

/**
 * JSPromiseCapability is not a JSValue but a JSVM internal type,
 * the main purpose is to enhance performance.
 */
@!APILevel[
    since: "22"
]
public class JSPromiseCapability {
    /**
     * Notify promise of normal completion and commits the return value.
     *
     * @param { JSValue } value - Processing result.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func resolve(value: JSValue): Unit

    /**
     * Submit an exception to promise.
     *
     * @param { JSValue } value - Exception data, typically an Error object or string.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func reject(value: JSValue): Unit

    /**
     * Convert JSPromiseCapability to JSValue.
     *
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { JSValue } ArkTS unified type.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func toJSValue(): JSValue
}

/**
 * ArkTs null.
 */
@!APILevel[
    since: "22"
]
public class JSNull {
    /**
     * Convert JSNull to JSValue.
     *
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { JSValue } ArkTS unified type.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func toJSValue(): JSValue
}

/**
 * ArkTs undefined.
 */
@!APILevel[
    since: "22"
]
public class JSUndefined {
    /**
     * Convert JSUndefined to JSValue.
     *
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { JSValue } ArkTS unified type.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func toJSValue(): JSValue
}

/**
 * ArkTs boolean.
 */
@!APILevel[
    since: "22"
]
public class JSBoolean {
    /**
     * Convert JSBoolean to JSValue.
     *
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { JSValue } ArkTS unified type.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func toJSValue(): JSValue

    /**
     * Convert JSBoolean to Cangjie Bool.
     *
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { Bool } Cangjie Bool value.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func toBool(): Bool
}

/**
 * ArkTs number.
 */
@!APILevel[
    since: "22"
]
public class JSNumber {
    /**
     * Convert JSNumber to JSValue.
     *
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { JSValue } ArkTS unified type.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func toJSValue(): JSValue

    /**
     * Convert JSNumber to Cangjie Float64.
     *
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { Float64 } Cangjie floating-point number.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func toFloat64(): Float64
}

/**
 * JSValue is unified type in the ArkTS runtime and alse the data type that directly interacts with the ArkTS runtime.
 */
@!APILevel[
    since: "22"
]
public class JSValue {
    /**
     * Get the type of JSValue.
     *
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { JSType } ArkTS type.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func typeof(): JSType

    /**
     * Perform a strict equality check (type consistency and value equality) on two JSValues.
     *
     * @param { JSValue } target - Target value for comparison
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { Bool } Returns true if the two values are identical.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func strictEqual(target: JSValue): Bool

    /**
     * Check whether JSValue is null.
     *
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { Bool } Returns true if the type is null.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func isNull(): Bool

    /**
     * Check whether JSValue is undefined.
     *
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { Bool } Returns true if the type is undefined.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func isUndefined(): Bool

    /**
     * Check whether JSValue is boolean.
     *
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { Bool } Returns true if the type is Boolean.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func isBoolean(): Bool

    /**
     * Check whether JSValue is Number.
     *
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { Bool } Returns true if the type is number.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func isNumber(): Bool

    /**
     * Check whether JSValue is string.
     *
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { Bool } Returns true if the type is String.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func isString(): Bool

    /**
     * Check whether JSValue is function.
     *
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { Bool } Returns true if the type is Function.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func isFunction(): Bool

    /**
     * Check whether JSValue is object.
     *
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { Bool } Returns true if the type is Object.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func isObject(): Bool

    /**
     * Check whether JSValue is array.
     *
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { Bool } Returns true if the type is Array.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func isArray(): Bool

    /**
     * Check whether JSValue is Promise.
     *
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { Bool } Returns true if the type is Promise.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func isPromise(): Bool

    /**
     * Check whether JSValue is ArkTS class.
     *
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { Bool } Returns true if the type is Class.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func isClass(): Bool

    /**
     * Check whether JSValue is an external object (ArkTS reference of a Cangjie object).
     *
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { Bool } Returns true if the type is External.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func isExternal(): Bool

    /**
     * Check whether JSValue is symbol.
     *
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { Bool } Returns true if the type is Symbol.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func isSymbol(): Bool

    /**
     * Check whether JSValue is ArrayBuffer.
     *
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { Bool } Returns true if the type is ArrayBuffer.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func isArrayBuffer(): Bool

    /**
     * Convert JSValue to JSNull. If the failure occurs, Exception will be throwed.
     *
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @throws { BusinessException } 34300005 - The ArkTS data types do not match.
     * @returns { JSNull } Returns An ArkTS null.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func asNull(): JSNull

    /**
     * Convert JSValue to JSUndefined. If the failure occurs, Exception will be throwed.
     *
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @throws { BusinessException } 34300005 - The ArkTS data types do not match.
     * @returns { JSUndefined } Returns An ArkTS undefined.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func asUndefined(): JSUndefined

    /**
     * Convert JSValue to JSBoolean. If the failure occurs, Exception will be throwed.
     *
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @throws { BusinessException } 34300005 - The ArkTS data types do not match.
     * @returns { JSBoolean } Returns An ArkTS Boolean.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func asBoolean(): JSBoolean

    /**
     * Convert JSValue to JSNumber. If the failure occurs, Exception will be throwed.
     *
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @throws { BusinessException } 34300005 - The ArkTS data types do not match.
     * @returns { JSNumber } Returns An ArkTS number.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func asNumber(): JSNumber

    /**
     * Convert JSValue to Bool. If the failure occurs, Exception will be throwed.
     *
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @throws { BusinessException } 34300005 - The ArkTS data types do not match.
     * @returns { Bool } Returns An Cangjie Bool value.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func toBoolean(): Bool

    /**
     * Convert JSValue to Float64. If the failure occurs, Exception will be throwed.
     *
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @throws { BusinessException } 34300005 - The ArkTS data types do not match.
     * @returns { Float64 } Returns An Cangjie Float64 value.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func toNumber(): Float64

    /**
     * Convert JSValue to String. If the failure occurs, Exception will be throwed.
     *
     * @throws { BusinessException } 34300002 - Outside error occurred.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @throws { BusinessException } 34300005 - The ArkTS data types do not match.
     * @returns { String } Returns An Cangjie String.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func toString(): String

    /**
     * Convert JSValue to Utf16String.
     *
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @throws { BusinessException } 34300005 - The ArkTS data types do not match.
     * @returns { Utf16String } Returns An Cangjie Utf16String.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func toUtf16String(): Utf16String

    /**
     * Convert JSValue to JSString. If the failure occurs, Exception will be throwed.
     *
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @throws { BusinessException } 34300005 - The ArkTS data types do not match.
     * @returns { JSString } Returns An Reference to an ArkTS string.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func asString(): JSString

    /**
     * Convert JSValue to JSObject. If the failure occurs, Exception will be throwed.
     *
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @throws { BusinessException } 34300005 - The ArkTS data types do not match.
     * @returns { JSObject } Returns An Reference to an ArkTS object.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func asObject(): JSObject

    /**
     * Convert JSValue to JSFunction. If the failure occurs, Exception will be throwed.
     *
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @throws { BusinessException } 34300005 - The ArkTS data types do not match.
     * @returns { JSFunction } Returns An Reference to an ArkTS function.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func asFunction(): JSFunction

    /**
     * Convert JSValue to JSArray. If the failure occurs, Exception will be throwed.
     *
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @throws { BusinessException } 34300005 - The ArkTS data types do not match.
     * @returns { JSArray } Returns An Reference to an ArkTS array.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func asArray(): JSArray

    /**
     * Convert JSValue to JSClass. If the failure occurs, Exception will be throwed.
     *
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @throws { BusinessException } 34300005 - The ArkTS data types do not match.
     * @returns { JSClass } Returns An Reference to an ArkTS class.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func asClass(): JSClass

    /**
     * Convert JSValue to JSExternal. If the failure occurs, Exception will be throwed.
     *
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @throws { BusinessException } 34300005 - The ArkTS data types do not match.
     * @returns { JSExternal } Returns An Reference to an ArkTS reference of a Cangjie object.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func asExternal(): JSExternal

    /**
     * Convert JSValue to JSPromise. If the failure occurs, Exception will be throwed.
     *
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @throws { BusinessException } 34300005 - The ArkTS data types do not match.
     * @returns { JSPromise } Returns An Reference to an ArkTS promise.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func asPromise(): JSPromise

    /**
     * Convert JSValue to JSSymbol. If the failure occurs, Exception will be throwed.
     *
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @throws { BusinessException } 34300005 - The ArkTS data types do not match.
     * @returns { JSSymbol } Returns An Reference to an ArkTS symbol.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func asSymbol(): JSSymbol

    /**
     * Convert JSValue to JSArrayBuffer. If the failure occurs, Exception will be throwed.
     *
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @throws { BusinessException } 34300005 - The ArkTS data types do not match.
     * @returns { JSArrayBuffer } Returns An Reference to an ArkTS ArrayBuffer.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func asArrayBuffer(): JSArrayBuffer

    /**
     * Check whether JSValue is BigInt.
     *
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { Bool } Returns true if the type is bigint.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func isBigInt(): Bool

    /**
     * Convert JSValue to JSBigInt. If the failure occurs, Exception will be throwed.
     *
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @throws { BusinessException } 34300005 - The ArkTS data types do not match.
     * @returns { JSBigInt } Reference to an ArkTS bigint.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func asBigInt(): JSBigInt

    /**
     * Convert JSValue to BigInt. If the failure occurs, Exception will be throwed.
     *
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @throws { BusinessException } 34300005 - The ArkTS data types do not match.
     * @returns { BigInt } Cangjie BigInt.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func toBigInt(): BigInt

    /**
     * Get the element at index.
     *
     * @param { Int64 } index - Array element index.
     * @throws { BusinessException } 34300001 - The accessing index is out of range.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @throws { BusinessException } 34300005 - The ArkTS data types do not match.
     * @returns { JSValue } An ArkTS value.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func getElement(index: Int64): JSValue

    /**
     * Set the element at index.
     *
     * @param { Int64 } index - Array write index.
     * @param { JSValue } value - Value to write to the array.
     * @throws { BusinessException } 34300001 - The accessing index is out of range.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @throws { BusinessException } 34300005 - The ArkTS data types do not match.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func setElement(index: Int64, value: JSValue): Unit

    /**
     * Get the property corresponding to the key.
     *
     * @param { JSKeyable } key - Target key.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @throws { BusinessException } 34300005 - The ArkTS data types do not match.
     * @returns { JSValue } An ArkTS value.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func getProperty(key: JSKeyable): JSValue

    /**
     * Set the property corresponding to the key.
     *
     * @param { JSKeyable } key - Target key.
     * @param { JSValue } setValue - An ArkTS value.
     * @throws { BusinessException } 34300002 - Outside error occurred.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @throws { BusinessException } 34300005 - The ArkTS data types do not match.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func setProperty(key: JSKeyable, setValue: JSValue): Unit

    /**
     * Bind JSValue to an ArkTs external object.
     *
     * @param { JSValue } external - An ArkTS value.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @throws { BusinessException } 34300005 - The ArkTS data types do not match.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func bindObject(external: JSValue): Unit

    /**
     * Bind JSValue to an ArkTs external object.
     *
     * @param { SharedObject } data - Cangjie object.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @throws { BusinessException } 34300005 - The ArkTS data types do not match.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func bindObject(data: SharedObject): Unit

    /**
     * Get the Cangjie object bound to the ArkTs object.
     *
     * @throws { BusinessException } 34300002 - Outside error occurred.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @throws { BusinessException } 34300005 - The ArkTS data types do not match.
     * @returns { ?SharedObject } Bound Cangjie object.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func getBindingObject(): ?SharedObject
}

/**
 * The ArkTS runtime created by Cangjie.
 */
@!APILevel[
    since: "22"
]
public class JSRuntime {
    /**
     * Init JSRuntime.
     *
     * @throws { BusinessException } 34300002 - Outside error occurred.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public init()

    /**
     * ArkTS interop context.
     */
    @!APILevel[
        since: "22"
    ]
    public prop mainContext: JSContext

    /**
     * Get napi environment pointer.
     * @returns { CPointer<Unit> } Pointer to the global environment.
     */
    @!APILevel[
        since: "22"
    ]
    public func getNapiEnv(): CPointer<Unit>
}

/**
 * The JSSymbol object is used to represent a safe reference to the ArkTS symbol type.
 */
@!APILevel[
    since: "22"
]
public class JSSymbol <: JSHeapObject & JSKeyable {
    /**
     * Convert JSSymbol to JSValue.
     *
     * @param { JSContext } _ - ArkTS interoperation context.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { JSValue } ArkTS Val.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func toJSValue(_: JSContext): JSValue

    /**
     * The description of symbol.
     *
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public prop description: String

    /**
     * Return a String that represents the JSSymbol.
     *
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { String } Cangjie string.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func toString(): String
}

/**
 * The ArkTS data type enumeration.
 */
@!APILevel[
    since: "22"
]
@C
public struct JSType {
    /**
     * ArkTS undefined type.
     */
    @!APILevel[
        since: "22"
    ]
    public static let UNDEFINED: JSType = JSType(0)

    /**
     * ArkTS null type.
     */
    @!APILevel[
        since: "22"
    ]
    public static let NULL: JSType = JSType(1)

    /**
     * ArkTS number type.
     */
    @!APILevel[
        since: "22"
    ]
    public static let NUMBER: JSType = JSType(2)

    /**
     * ArkTS boolean type.
     */
    @!APILevel[
        since: "22"
    ]
    public static let BOOLEAN: JSType = JSType(3)

    /**
     * ArkTS bigint type.
     */
    @!APILevel[
        since: "22"
    ]
    public static let BIGINT: JSType = JSType(4)

    /**
     * ArkTS string type.
     */
    @!APILevel[
        since: "22"
    ]
    public static let STRING: JSType = JSType(5)

    /**
     * ArkTS symbol type.
     */
    @!APILevel[
        since: "22"
    ]
    public static let SYMBOL: JSType = JSType(6)

    /**
     * ArkTS object type.
     */
    @!APILevel[
        since: "22"
    ]
    public static let OBJECT: JSType = JSType(7)

    /**
     * ArkTS function type.
     */
    @!APILevel[
        since: "22"
    ]
    public static let FUNCTION: JSType = JSType(8)

    /**
     * ArkTS external type.
     */
    @!APILevel[
        since: "22"
    ]
    public static let EXTERNAL: JSType = JSType(9)

    /**
     * Return true if and only if the two JSType are identical.
     *
     * @param { JSType } target - Target type for comparison.
     * @returns { Bool } Returns true when the two types are equal.
     */
    @!APILevel[
        since: "22"
    ]
    public operator func ==(target: JSType): Bool

    /**
     * Return true if and only if the two JSType are not identical.
     *
     * @param { JSType } target - Target type for comparison.
     * @returns { Bool } Returns true when the two types are not equal.
     */
    @!APILevel[
        since: "22"
    ]
    public operator func !=(target: JSType): Bool

    /**
     * Get string description of JSType.
     * @returns { String } Cangjie string.
     */
    @!APILevel[
        since: "22"
    ]
    public func toString(): String
}

/**
 * The JSArray object is used to represent a safe reference to the ArkTS array.
 * It supports getting length, reading and writing elements.
 */
@!APILevel[
    since: "22"
]
public class JSArray <: JSHeapObject {
    /**
     * Array length.
     *
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public prop size: Int64

    /**
     * Get the element at index.
     *
     * @param { Int64 } index - Input index, safe range: [0, input count).
     * @throws { BusinessException } 34300001 - The accessing index is out of range.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { JSValue } - ArkTS unified type.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public operator func [](index: Int64): JSValue

    /**
     * Set the element at index.
     *
     * @param { Int64 } index - Write index.
     * @param { JSValue } value - Value to write.
     * @throws { BusinessException } 34300001 - The accessing index is out of range.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public operator func [](index: Int64, value!: JSValue): Unit

    /**
     * Set the element at index.
     *
     * @param { Int64 } index - Write index.
     * @param { JSHeapObject } [value] - Value to write.
     * @throws { BusinessException } 34300001 - The accessing index is out of range.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public operator func [](index: Int64, value!: JSHeapObject): Unit
}

/**
 * Alias for type which is `CPointer<Unit>`.
 */
public type napi_env = CPointer<Unit>

/**
 * Alias for type which is `CPointer<Unit>`.
 */
public type napi_value = CPointer<Unit>

/**
 * A single-thread ArkTS interop context. JSContext has a one-to-one correspondence with the ArkTS runtime.
 * Its main purpose is to create JSValues and safe references and manage the lifecycle of Cangjie objects
 * referenced by ArkTS.
 */
@!APILevel[
    since: "22"
]
public class JSContext {
    /**
     * Check whether the current thread can execute interop interface.
     * @returns { Bool } Returns true if the current thread can call interoperation interfaces.
     */
    @!APILevel[
        since: "22"
    ]
    public func isInBindThread(): Bool

    /**
     * ArkTS global environment variable.
     *
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public prop global: JSObject

    /**
     * ArkTS interop context.
     *
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public prop env: JSEnv

    /**
     * Get napi environment pointer.
     *
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { napi_env } The env for napi interfaces.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func getNapiEnv(): napi_env

    /**
     * Create a new handle scope, ensuring that no js memory leaks occur when the callback function is executed in the scope.
     *
     * @param { () -> T } callback - The task to to be executed in the scope.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { T } The result of the callback.
     */
    @!APILevel[
        since: "24",
        throwexception: true
    ]
    public func newScope<T>(callback: () -> T): T

    /**
     * Create an ArkTS undefined.
     *
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { JSUndefined } Returns ArkTS undefined.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func undefined(): JSUndefined

    /**
     * Create an ArkTS null.
     *
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { JSNull } Returns ArkTS null.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func null(): JSNull

    /**
     * Create an ArkTS boolean.
     *
     * @param { Bool } value - Cangjie bool.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { JSBoolean } Returns ArkTS bool.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func boolean(value: Bool): JSBoolean

    /**
     * Create an ArkTS number.
     *
     * @param { Float64 } value - Cangjie Float64.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { JSNumber } Returns ArkTS number.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func number(value: Float64): JSNumber

    /**
     * Create an ArkTS number.
     *
     * @param { Int32 } value - Cangjie Int32.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { JSNumber } Returns ArkTS number.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func number(value: Int32): JSNumber

    /**
     * Create an ArkTS string.
     *
     * @param { String } value - Cangjie string.
     * @throws { BusinessException } 34300002 - Outside error occurred.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { JSString } Returns ArkTS string.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func string(value: String): JSString

    /**
     * Create an ArkTS string.
     *
     * @param { Utf16String } value - Cangjie UTF16 string.
     * @throws { BusinessException } 34300002 - Outside error occurred.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { JSString } Returns ArkTS string.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func string(value: Utf16String): JSString

    /**
     * Create an empty ArkTS object reference.
     *
     * @throws { BusinessException } 34300002 - Outside error occurred.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { JSObject } Returns ArkTS object reference.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func object(): JSObject

    /**
     * Create an ArkTS function.
     *
     * @param { JSLambda } lambda - Cangjie function.
     * @throws { BusinessException } 34300002 - Outside error occurred.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { JSFunction } Returns ArkTS function reference.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func function(lambda: JSLambda): JSFunction

    /**
     * Create an ArkTS array.
     *
     * @param { Array<JSValue> } arr - Array of Reference to an ArkTS array.
     * @throws { BusinessException } 34300002 - Outside error occurred.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { JSArray } Returns Reference to an ArkTS array.

     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func array(arr: Array<JSValue>): JSArray

    /**
     * Create an ArkTS class.
     *
     * @param { JSLambda } ctor - Cangjie function serving as the class constructor.
     * @param { ?JSClass } [ superClass ] - Named parameter. Parent class of the ArkTS class. The default value is None.
     * @throws { BusinessException } 34300002 - Outside error occurred.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { JSClass } Returns Reference to the ArkTS class.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func clazz(ctor: JSLambda, superClass!: ?JSClass = None): JSClass

    /**
     * Create an ArkTS reference to Cangjie object.
     *
     * @param { SharedObject } data - Original Cangjie object.
     * @throws { BusinessException } 34300002 - Outside error occurred.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { JSExternal } Returns ArkTS reference to the Cangjie object.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func external(data: SharedObject): JSExternal

    /**
     * Create an ArkTS Promise.
     *
     * @throws { BusinessException } 34300002 - Outside error occurred.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { JSPromiseCapability } Returns Native reference to the ArkTS promise.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func promiseCapability(): JSPromiseCapability

    /**
     * Create an ArkTS ArrayBuffer.
     *
     * @param { Int32 } length - Size of the memory block.
     * @throws { BusinessException } 34300001 - The arrayBuffer length is invalid.
     * @throws { BusinessException } 34300002 - Outside error occurred.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { JSArrayBuffer } Returns Reference to an ArkTS ArrayBuffer object.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func arrayBuffer(length: Int32): JSArrayBuffer

    /**
     * Create an ArkTS ArrayBuffer.
     *
     * @param { Array<Byte> } data - Cangjie array.
     * @throws { BusinessException } 34300002 - Outside error occurred.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { JSArrayBuffer } Returns Reference to an ArkTS ArrayBuffer object.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func arrayBuffer(data: Array<Byte>): JSArrayBuffer

    /**
     * Create an ArkTS ArrayBuffer.
     *
     * @param { Array<Int8> } data - Cangjie array.
     * @throws { BusinessException } 34300002 - Outside error occurred.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { JSArrayBuffer } Returns Reference to an ArkTS ArrayBuffer object.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func arrayBuffer(data: Array<Int8>): JSArrayBuffer

    /**
     * Create an ArkTS ArrayBuffer.
     *
     * @param { Array<Int16> } data - Cangjie array.
     * @throws { BusinessException } 34300002 - Outside error occurred.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { JSArrayBuffer } Returns Reference to an ArkTS ArrayBuffer object.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func arrayBuffer(data: Array<Int16>): JSArrayBuffer

    /**
     * Create an ArkTS ArrayBuffer.
     *
     * @param { Array<UInt16> } data - Cangjie array.
     * @throws { BusinessException } 34300002 - Outside error occurred.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { JSArrayBuffer } Returns Reference to an ArkTS ArrayBuffer object.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func arrayBuffer(data: Array<UInt16>): JSArrayBuffer

    /**
     * Create an ArkTS ArrayBuffer.
     *
     * @param { Array<UInt32> } data - Cangjie array.
     * @throws { BusinessException } 34300002 - Outside error occurred.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { JSArrayBuffer } Returns Reference to an ArkTS ArrayBuffer object.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func arrayBuffer(data: Array<UInt32>): JSArrayBuffer

    /**
     * Create an ArkTS ArrayBuffer.
     *
     * @param { Array<Int32> } data - Cangjie array.
     * @throws { BusinessException } 34300002 - Outside error occurred.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { JSArrayBuffer } Returns Reference to an ArkTS ArrayBuffer object.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func arrayBuffer(data: Array<Int32>): JSArrayBuffer

    /**
     * Create an ArkTS ArrayBuffer.
     *
     * @param { Array<Float32> } data - Cangjie array.
     * @throws { BusinessException } 34300002 - Outside error occurred.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { JSArrayBuffer } Returns Reference to an ArkTS ArrayBuffer object.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func arrayBuffer(data: Array<Float32>): JSArrayBuffer

    /**
     * Create an ArkTS ArrayBuffer.
     *
     * @param { Array<Int64> } data - Cangjie array.
     * @throws { BusinessException } 34300002 - Outside error occurred.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { JSArrayBuffer } Returns Reference to an ArkTS ArrayBuffer object.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func arrayBuffer(data: Array<Int64>): JSArrayBuffer

    /**
     * Create an ArkTS ArrayBuffer.
     *
     * @param { Array<UInt64> } data - Cangjie array.
     * @throws { BusinessException } 34300002 - Outside error occurred.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { JSArrayBuffer } Returns Reference to an ArkTS ArrayBuffer object.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func arrayBuffer(data: Array<UInt64>): JSArrayBuffer

    /**
     * Create an ArkTS ArrayBuffer.
     *
     * @param { Array<Float64> } data - Cangjie array.
     * @throws { BusinessException } 34300002 - Outside error occurred.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { JSArrayBuffer } Returns Reference to an ArkTS ArrayBuffer object.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func arrayBuffer(data: Array<Float64>): JSArrayBuffer

    /**
     * Create an ArkTS ArrayBuffer.
     *
     * @param { CPointer<Byte> } rawData - Memory block address.
     * @param { Int32 } length - Size of the memory block.
     * @param { JSBufferFinalizer } finalizer - Memory block cleanup function.
     * @throws { BusinessException } 34300001 - The arrayBuffer length is invalid.
     * @throws { BusinessException } 34300002 - Outside error occurred.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { JSArrayBuffer } Returns Reference to an ArkTS ArrayBuffer object.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public unsafe func arrayBuffer(rawData: CPointer<Byte>, length: Int32, finalizer: JSBufferFinalizer): JSArrayBuffer

    /**
     * Create an ArkTS symbol.
     *
     * @param { String } [ description ] - Named parameter. Description of the symbol. The default value is "".
     * @throws { BusinessException } 34300002 - Outside error occurred.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { JSSymbol } Reference to the ArkTS symbol object.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func symbol(description!: String = ""): JSSymbol

    /**
     * Create an ArkTS bigint.
     *
     * @param { Int64 } value - Cangjie Int64.
     * @throws { BusinessException } 34300002 - Outside error occurred.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { JSBigInt } Reference to an ArkTS bigint object.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func bigint(value: Int64): JSBigInt

    /**
     * Create an ArkTS bigint.
     *
     * @param { BigInt } value - Cangjie BigInt.
     * @throws { BusinessException } 34300002 - Outside error occurred.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { JSBigInt } Reference to an ArkTS bigint object.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func bigint(value: BigInt): JSBigInt

    /**
     * Create a task to be executed in ArkTS thread.
     * @param { () -> Unit } callback - Task to be executed on the ArkTS thread.
     */
    @!APILevel[
        since: "22"
    ]
    public func postJSTask(callback: () -> Unit): Unit

    /**
     * Load the built-in ArkTS napi module of the system.
     *
     * @param { String } moduleName - Registered name of the ArkTS napi module.
     * @param { ?String } [ prefix ] - Named parameter. Archive directory of the ArkTS napi module. Can be omitted if under /system/lib64/module; otherwise, specify the subdirectory name. The default value is None.
     * @throws { BusinessException } 34300002 - Outside error occurred.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { JSValue } Module return value, typically an object. Returns undefined if loading fails.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func requireSystemNativeModule(moduleName: String, prefix!: ?String = None): JSValue

    /**
     * Load an ArkTS module, which means ArkTS source file in hap\har\hsp or napi module or system api module. The returns is a module's JSValue, returns undefined if module not exist.
     *
     * @param { String } path - ArkTS module specifier, which is relative path of ArkTS source file in hap\har\hsp, or shared library name of napi module or system library name of system api module.
     * @throws { BusinessException } 34300002 - Outside error occurred.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @throws { BusinessException } 34300006 - The module not exist.
     * @throws { BusinessException } 34300007 - Can not requireArkModule during initializing cangjie module.
     * @throws { BusinessException } 34300008 - Current application have not support requireArkModule of the url.
     * @returns { JSValue } Module return value, typically an object. Returns undefined if loading fails.
     */
    @!APILevel[
        since: "23",
        throwexception: true
    ]
    public func requireArkModule(path: String): JSValue
}

/**
 * Base class of a safe reference to ArkTS object.
 */
@!APILevel[
    since: "22"
]
abstract sealed class JSObjectBase <: JSHeapObject {
    /**
     * Check whether the current object is an instance of the target ArkTS class.
     *
     * @param { JSClass } clazz - Target ArkTS class.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { Bool } True indicates the object is an instance of the target ArkTS class.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func instanceOf(clazz: JSClass): Bool

    /**
     * Check whether the current object has the target property.
     *
     * @param { JSKeyable } key - Target key.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { Bool } True indicates the current object has the target property.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func hasProperty(key: JSKeyable): Bool

    /**
     * Get the property value of the current object.
     *
     * @param { JSKeyable } key - The property key, which can be a String, JSString, or JSSymbol.
     * @throws { BusinessException } 34300002 - Outside error occurred.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { JSValue } The retrieved value.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func getProperty(key: JSKeyable): JSValue

    /**
     * Get the property value of the current object.
     *
     * @param { JSKeyable } key - Target key.
     * @throws { BusinessException } 34300002 - Outside error occurred.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { JSValue } Retrieved value.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public operator func [](key: JSKeyable): JSValue

    /**
     * Call method corressponding to the key of the JSObject.
     *
     * @param { JSKeyable } key - Target method name.
     * @param { Array<JSValue> } args - Argument list for the call.
     * @throws { BusinessException } 34300002 - Outside error occurred.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { JSValue } Method call return value.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func callMethod(key: JSKeyable, args: Array<JSValue>): JSValue

    /**
     * Set property to the current object.
     *
     * @param { JSKeyable } key - Target key.
     * @param { JSValue } setValue - Target value.
     * @throws { BusinessException } 34300002 - Outside error occurred.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func setProperty(key: JSKeyable, setValue: JSValue): Unit

    /**
     * Set property to the current object.
     *
     * @param { JSKeyable } key - Target key.
     * @param { JSValue } value - Target value.
     * @throws { BusinessException } 34300002 - Outside error occurred.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public operator func [](key: JSKeyable, value!: JSValue): Unit

    /**
     * Define property on the current object.
     *
     * @param { JSKeyable } key - Target key.
     * @param { JSValue } setValue - Target value.
     * @param { Bool } [ isWritable ] - Named parameter. Whether writable. The default value is True.
     * @param { Bool } [ isEnumerable ] - Named parameter. Whether enumerable. The default value is True.
     * @param { Bool } [ isConfigurable ] - Named parameter. Whether redefinable. The default value is True.
     * @throws { BusinessException } 34300002 - Outside error occurred.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { Bool } Whether successful.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func defineOwnProperty(key: JSKeyable, setValue: JSValue, isWritable!: Bool = true,
        isEnumerable!: Bool = true, isConfigurable!: Bool = true): Bool

    /**
     * Define accessor on the current object.
     *
     * @param { JSKeyable } key - Target key.
     * @param { ?JSFunction } [ getter ] - Named parameter. Getter implementation.  The default value is None.
     * @param { ?JSFunction } [ setter ] - Named parameter. Setter implementation. The default value is None.
     * @param { Bool } [ isEnumerable ] - Named parameter. Whether enumerable. The default value is False.
     * @param { Bool } [ isConfigurable ] - Named parameter. Whether redefinable. The default value is False.
     * @throws { BusinessException } 34300002 - Outside error occurred.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { Bool } Whether successful.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func defineOwnAccessor(key: JSKeyable, getter!: ?JSFunction = None, setter!: ?JSFunction = None,
        isEnumerable!: Bool = false, isConfigurable!: Bool = false): Bool

    /**
     * Define accessor on the current object.
     *
     * @param { JSKeyable } key - Target key.
     * @param { ?JSLambda } [ getter ] - Named parameter. Getter implementation. The default value is None.
     * @param { ?JSLambda } [ setter ] - Named parameter. Setter implementation. The default value is None.
     * @param { Bool } [ isEnumerable ] - Named parameter. Whether enumerable. The default value is False.
     * @param { Bool } [ isConfigurable ] - Named parameter. Whether redefinable. The default value is False.
     * @throws { BusinessException } 34300002 - Outside error occurred.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { Bool } Whether successful.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func defineOwnAccessor(key: JSKeyable, getter!: ?JSLambda = None, setter!: ?JSLambda = None,
        isEnumerable!: Bool = false, isConfigurable!: Bool = false): Bool

    /**
     * Get all property names of the current object.
     *
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { Array<String> } List of keys.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func keys(): Array<String>

    /**
     * Attach target JSExternal to the current object.
     *
     * @param { JSExternal } target - ArkTS reference to the Cangjie object.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func attachCJObject(target: JSExternal): Unit

    /**
     * Get the target JSExternal attached to the current object.
     *
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { ?JSExternal } ArkTS reference to the Cangjie object or None.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func getAttachInfo(): ?JSExternal
}

/**
 * A secure reference to ArkTS object.
 */
@!APILevel[
    since: "22"
]
public class JSObject <: JSObjectBase {}

/**
 * An interface that implements extension method to convert value to JSValue.
 */
@!APILevel[
    since: "22"
]
public interface ToJSValue {
    /**
     * Converts Cangjie type data to JSValue.
     *
     * @param { JSContext } context - ArkTS interoperation context.
     * @returns { JSValue } ArkTS unified type.
     */
    @!APILevel[
        since: "22"
    ]
    func toJSValue(context: JSContext): JSValue
}

/**
 * An interface that can be used as a JSObejct key. It implements extension methods for String type.
 */
@!APILevel[
    since: "22"
]
sealed interface JSKeyable <: ToString & ToJSValue {}

/**
 * String class that extends the JSKeyable interface.
 */
@!APILevel[
    since: "22"
]
extend String <: JSKeyable {
    /**
     * Convert String to JSValue.
     *
     * @param { JSContext } context - ArkTS interoperation context.
     * @throws { BusinessException } 34300002 - Outside error occurred.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { JSValue } ArkTS unified type.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func toJSValue(context: JSContext): JSValue
}

/**
 * The JSString object is used to represent a secure reference to the ArkTS string.
 * It can be converted to Cangjie String and Utf16String.
 */
@!APILevel[
    since: "22"
]
public class JSString <: JSHeapObject & ToString & JSKeyable {
    /**
     * Convert JSString to JSValue.
     *
     * @param { JSContext } _ - ArkTS interoperation context.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { JSValue } ArkTS unified type.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func toJSValue(_: JSContext): JSValue

    /**
     * Convert JSString to String.
     *
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { String } Cangjie String.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func toString(): String

    /**
     * Convert JSString to Utf16String.
     *
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { Utf16String } Cangjie UTF16 String.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func toUtf16String(): Utf16String
}

/**
 * String stored in UTF-16 encoding format which has better performance than String when converting to and from ArkTS string.
 */
@!APILevel[
    since: "22"
]
public class Utf16String <: ToString & Equatable<Utf16String> & Hashable & JSKeyable & JSInteropType<Utf16String> {
    /**
     * Empty String.
     */
    @!APILevel[
        since: "22"
    ]
    public static let EMPTY: Utf16String = Utf16String(unsafe { CJUtf16StringCreateEmpty() })

    /**
     * Init Utf16String.
     *
     * @param { String } src - Cangjie String.
     * @throws { BusinessException } 34300002 - Outside error occurred.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public init(src: String)

    /**
     * Release the memory that stores the string content. Accessing the string content after the first dispose will
     * result in an exception.
     */
    @!APILevel[
        since: "22"
    ]
    public func dispose(): Unit

    /**
     * Check whether ths string content is accessible. The string content can be manually released using
     * dispose method. Continuing to access it after release will throw an exception.
     */
    @!APILevel[
        since: "22"
    ]
    public prop accessible: Bool

    /**
     * Convert Utf16String to String.
     *
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @returns { String } Cangjie String.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func toString(): String

    /**
     * Compare the relationship between this Utf16String and another Utf16String.
     *
     * @param { Utf16String } target - The Utf16String object to compare.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @returns { Ordering } The comparison result.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func compare(target: Utf16String): Ordering

    /**
     * Check whether the current Utf16String is euqal to `target`.
     *
     * @param { Utf16String } target - Target string to compare.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @returns { Bool } Returns true if the strings are equal, otherwise false.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public operator func ==(target: Utf16String): Bool

    /**
     * Get the hash value of the current Utf16String.
     *
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @returns { Int64 } Hash Code.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func hashCode(): Int64

    /**
     * The total length of the code units in the string (UTF-16 encoding format).
     *
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public prop size: Int64

    /**
     * The number of the total chars.
     *
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public prop totalChars: Int64

    /**
     * Check whether the size is empty. If yes, true is returned. Otherwise, false is returned.
     *
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @returns { Bool } Check if is Empty.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func isEmpty(): Bool

    /**
     * Check whether the content of string has been compressed.
     * @returns { Bool } Check if is Compressed.
     */
    @!APILevel[
        since: "22"
    ]
    public func isCompressed(): Bool

    /**
     * Return true if and only if the two string are not identical.
     *
     * @param { Utf16String } target - Target string to compare.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @returns { Bool } Returns true if the strings are not equal, otherwise false.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public operator func !=(target: Utf16String): Bool

    /**
     * Return true if and only if the current string is greater than the target string.
     *
     * @param { Utf16String } target - Target string to compare.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @returns { Bool } Returns true if the string is greater than the target string, otherwise false.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public operator func >(target: Utf16String): Bool

    /**
     * Return true if and only if the current string is greater than or equal to the target string.
     *
     * @param { Utf16String } target - Target string to compare.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @returns { Bool } Returns true if the string is greater than or equal to the target string, otherwise false.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public operator func >=(target: Utf16String): Bool

    /**
     * Return true if and only if the current string is less than the target string.
     *
     * @param { Utf16String } target - Target string to compare.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @returns { Bool } Returns true if the string is less than the target string, otherwise false.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public operator func <(target: Utf16String): Bool

    /**
     * Return true if and only if the current string is less than or equal to the target string.
     *
     * @param { Utf16String } target - Target string to compare.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @returns { Bool } Returns true if the string is less than or equal to the target string, otherwise false.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public operator func <=(target: Utf16String): Bool

    /**
     * Get the element at index.
     *
     * @param { Int64 } index - Index.
     * @throws { BusinessException } 34300001 - The accessing index is out of range.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @returns { UInt16 } Retrieved character.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public operator func [](index: Int64): UInt16

    /**
     * Get the string at the specified range.
     *
     * @param { Range<Int64> } range - Range to extract.
     * @throws { BusinessException } 34300001 - The accessing index is out of range.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @returns { Utf16String } Extracted Utf16String substring.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public operator func [](range: Range<Int64>): Utf16String

    /**
     * Return rune iterator of the string.
     *
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @returns { Iterator<Rune> } Character iterator.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func runes(): Iterator<Rune>

    /**
     * Return line Iterator of the string.
     *
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @returns { Iterator<Utf16String> } An iterator of lines.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func lines(): Iterator<Utf16String>

    /**
     * Search backward for the position of the target string.
     *
     * @param { Utf16String } target - The target string.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @returns { ?Int64 } Returns the index of the first occurrence of the target string, or None if not found.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func indexOf(target: Utf16String): ?Int64

    /**
     * Search backward from the index for the position of the target string.
     *
     * @param { Utf16String } target - The target string.
     * @param { Int64 } fromIndex - The starting position for the search in the current string. Default is 0.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @returns { ?Int64 } Returns the index of the first occurrence of the target string, or None if not found.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func indexOf(target: Utf16String, fromIndex: Int64): ?Int64

    /**
     * Search forward for the position of the target string.
     *
     * @param { Utf16String } target - The target string.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @returns { ?Int64 } Returns the index of the first occurrence of the target string, or None if not found.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func lastIndexOf(target: Utf16String): ?Int64

    /**
     * Search forward from the index for the position of the target string.
     *
     * @param { Utf16String } target - The target string.
     * @param { Int64 } fromIndex - The starting position for the search in the current string. Default is the string size.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @returns { ?Int64 } Returns the index of the first occurrence of the target string, or None if not found.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func lastIndexOf(target: Utf16String, fromIndex: Int64): ?Int64

    /**
     * Return the number of occurrences of the given substring `src` in the string.
     *
     * @param { Utf16String } src - The target string.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @returns { Int64 } The number of occurrences of the target string.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func count(src: Utf16String): Int64

    /**
     * Split the string.
     *
     * @param { Utf16String } separator - Separator. When the separator is an empty string, each character is treated as a separate element.
     * @param { Bool } [ removeEmpty ] - Whether to remove empty elements. The default value is false.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @returns { Array<Utf16String> } Array of split elements.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func split(separator: Utf16String, removeEmpty!: Bool = false): Array<Utf16String>

    /**
     * Split the string.
     *
     * @param { Utf16String } separator - Separator. When the separator is an empty string, each character is treated as a separate element.
     * @param { Int64 } maxSplit - Maximum number of splits.
     * @param { Bool } [removeEmpty] - Whether to remove empty elements. The default value is false.
     * @throws { BusinessException } 34300001 - The accessing index is out of range.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @returns { Array<Utf16String> } Array of split elements.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func split(separator: Utf16String, maxSplit: Int64, removeEmpty!: Bool = false): Array<Utf16String>

    /**
     * Lazy split the string.
     *
     * @param { Utf16String } separator - The separator. If the separator is an empty string, each character is treated as a separate element.
     * @param { Bool } [ removeEmpty ] - Whether to remove empty elements. The default value is false.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @returns { Iterator<Utf16String> } An iterator of the split elements.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func lazySplit(separator: Utf16String, removeEmpty!: Bool = false): Iterator<Utf16String>

    /**
     * Lazy split the string.
     *
     * @param { Utf16String } separator - The separator. If the separator is an empty string, each character is treated as a separate element.
     * @param { Int64 } maxSplit - The maximum number of splits.
     * @param { Bool } [ removeEmpty ] - Whether to remove empty elements. The default value is false.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @returns { Iterator<Utf16String> } An iterator of the split elements.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func lazySplit(separator: Utf16String, maxSplit: Int64, removeEmpty!: Bool = false): Iterator<Utf16String>

    /**
     * Return a string which is result of replacing occurrences of `old` in the string with `new`.
     *
     * @param { Utf16String } old - The element to be replaced.
     * @param { Utf16String } new - The replacement element.
     * @param { Int64 } [ count ] - The number of replacements.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @returns { Utf16String } The replaced string.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    @OverflowWrapping
    public func replace(old: Utf16String, new: Utf16String, count!: Int64 = Int64.Max): Utf16String

    /**
     * Return true if and only if the current string contains the target string.
     *
     * @param { Utf16String } target - The target string.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @returns { Bool } Whether the target string is contained.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func contains(target: Utf16String): Bool

    /**
     * Return true if and only if this string starts with the given `target`.
     *
     * @param { Utf16String } target - The target string.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @returns { Bool } Returns true if the string starts with the target string, otherwise false.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func startsWith(target: Utf16String): Bool

    /**
     * Return true if and only if this string ends with the given `target`.
     *
     * @param { Utf16String } target - The target string.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @returns { Bool } Whether the string ends with the target string.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func endsWith(target: Utf16String): Bool

    /**
     * Return s string which is the result of concatenating `left` and `right`.
     *
     * @param { Utf16String } right - Target string to concatenate.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @returns { Utf16String } Concatenated string.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public operator func +(right: Utf16String): Utf16String

    /**
     * Convert Utf16String to JSValue.
     *
     * @param { JSContext } context - ArkTS interoperability context.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { JSValue } ArkTS unified type.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func toJSValue(context: JSContext): JSValue

    /**
     * Create an Utf16String from JSValue.
     *
     * @param { JSContext } _ - ArkTS interop context.
     * @param { JSValue } value - ArkTS unified type.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @throws { BusinessException } 34300005 - The ArkTS data types do not match.
     * @returns { Utf16String } Cangjie Utf16String.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public static func fromJSValue(_: JSContext, value: JSValue): Utf16String

    /**
     * Get ArkTS type name of Utf16String.
     * @returns { String } Cangjie String.
     */
    @!APILevel[
        since: "22"
    ]
    public static func toArktsType(): String
}
