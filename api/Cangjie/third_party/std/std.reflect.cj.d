package std.reflect
import std.collection.*
import std.sync.*

import std.fs.*

/**
 * @description Represents the type information for a class.
 */
@!APILevel[
    since: "22"
]
public class ClassTypeInfo <: TypeInfo {
    /**
     * @description Gets the `ClassTypeInfo` for a class with the specified qualified name.
     * @param qualifiedName The fully qualified name of the class.
     * @returns The `ClassTypeInfo` object for the class.
     * @throws InfoNotFoundException if the class information cannot be found.
     * @throws IllegalTypeException if the type is not a class.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public redef static func get(qualifiedName: String): ClassTypeInfo

    /**
     * @description Gets the `ClassTypeInfo` for the runtime class of the given object.
     * @param a The object to get the class information from.
     * @returns The `ClassTypeInfo` for the object's class.
     * @throws InfoNotFoundException if the class information cannot be found.
     * @throws IllegalTypeException if the type is not a class.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public redef static func of(a: Any): ClassTypeInfo

    /**
     * @description Gets the `ClassTypeInfo` for the runtime class of the given object.
     * @param a The object to get the class information from.
     * @returns The `ClassTypeInfo` for the object's class.
     * @throws InfoNotFoundException if the class information cannot be found.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public static func of(a: Object): ClassTypeInfo

    /**
     * @description Gets the `ClassTypeInfo` for the specified type `T`.
     * @returns The `ClassTypeInfo` for type `T`.
     * @throws InfoNotFoundException if the class information cannot be found.
     * @throws IllegalTypeException if the type is not a class.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public redef static func of<T>(): ClassTypeInfo

    /**
     * @description Gets a collection of `ConstructorInfo` objects for the public constructors of this class.
     * @returns A collection of `ConstructorInfo` objects.
     */
    @!APILevel[
        since: "22"
    ]
    public prop constructors: Collection<ConstructorInfo>

    /**
     * @description Gets a collection of `InstanceVariableInfo` objects for the instance variables of this class.
     * @returns A collection of `InstanceVariableInfo` objects.
     */
    @!APILevel[
        since: "22"
    ]
    public prop instanceVariables: Collection<InstanceVariableInfo>

    /**
     * @description Gets a collection of `StaticVariableInfo` objects for the static variables of this class.
     * @returns A collection of `StaticVariableInfo` objects.
     */
    @!APILevel[
        since: "22"
    ]
    public prop staticVariables: Collection<StaticVariableInfo>

    /**
     * @description Gets the `ClassTypeInfo` for the superclass of this class, if it exists.
     * @returns An `Option` containing the `ClassTypeInfo` of the superclass, or `None` if this class is `std.core.Object`.
     * @throws MisMatchException if there is a type mismatch.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public prop superClass: Option<ClassTypeInfo>

    /**
     * @description Gets a collection of `ClassTypeInfo` objects for the direct sealed subclasses of this class.
     * @returns A collection of `ClassTypeInfo` objects for the sealed subclasses.
     */
    @!APILevel[
        since: "22"
    ]
    public prop sealedSubclasses: Collection<ClassTypeInfo>

    /**
     * @description Creates a new instance of this class by invoking the appropriate constructor with the given arguments.
     * @param args An array of arguments to be passed to the constructor.
     * @returns A new instance of the class.
     * @throws IllegalTypeException if a type is invalid for an operation.
     * @throws InvocationTargetException if the constructor throws an exception.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func construct(args: Array<Any>): Any

    /**
     * @description Determines if the class is declared as `open`.
     * @returns `true` if the class is `open`, `false` otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    public func isOpen(): Bool

    /**
     * @description Determines if the class is declared as `abstract`.
     * @returns `true` if the class is `abstract`, `false` otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    public func isAbstract(): Bool

    /**
     * @description Determines if the class is declared as `sealed`.
     * @returns `true` if the class is `sealed`, `false` otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    public func isSealed(): Bool

    /**
     * @description Gets the `ConstructorInfo` for the constructor with the specified parameter types.
     * @param parameterTypes An array of `TypeInfo` objects representing the parameter types of the constructor.
     * @returns The `ConstructorInfo` for the matching constructor.
     */
    @!APILevel[
        since: "22"
    ]
    public func getConstructor(parameterTypes: Array<TypeInfo>): ConstructorInfo

    /**
     * @description Gets the `InstanceVariableInfo` for the instance variable with the specified name.
     * @param name The name of the instance variable.
     * @returns The `InstanceVariableInfo` for the matching instance variable.
     */
    @!APILevel[
        since: "22"
    ]
    public func getInstanceVariable(name: String): InstanceVariableInfo

    /**
     * @description Gets the `StaticVariableInfo` for the static variable with the specified name.
     * @param name The name of the static variable.
     * @returns The `StaticVariableInfo` for the matching static variable.
     */
    @!APILevel[
        since: "22"
    ]
    public func getStaticVariable(name: String): StaticVariableInfo
}

/**
 * @description The base class for exceptions thrown by the reflection API.
 */
@!APILevel[
    since: "22"
]
public open class ReflectException <: Exception {
    /**
     * @description Constructs a `ReflectException` with no detail message.
     */
    @!APILevel[
        since: "22"
    ]
    public init()

    /**
     * @description Constructs a `ReflectException` with the specified detail message.
     * @param message The detail message.
     */
    @!APILevel[
        since: "22"
    ]
    public init(message: String)
}

/**
 * @description Thrown when a requested reflective element (such as a class, method, or field) cannot be found.
 */
@!APILevel[
    since: "22"
]
public class InfoNotFoundException <: ReflectException {
    /**
     * @description Constructs an `InfoNotFoundException` with no detail message.
     */
    @!APILevel[
        since: "22"
    ]
    public init()

    /**
     * @description Constructs an `InfoNotFoundException` with the specified detail message.
     * @param message The detail message.
     */
    @!APILevel[
        since: "22"
    ]
    public init(message: String)
}

/**
 * @description Thrown to indicate a mismatch between an expected type and an actual type in a reflective operation.
 */
@!APILevel[
    since: "22"
]
public class MisMatchException <: ReflectException {
    /**
     * @description Constructs a `MisMatchException` with no detail message.
     */
    @!APILevel[
        since: "22"
    ]
    public init()

    /**
     * @description Constructs a `MisMatchException` with the specified detail message.
     * @param message The detail message.
     */
    @!APILevel[
        since: "22"
    ]
    public init(message: String)
}

/**
 * @description Thrown when an attempt to set a field's value is denied, for example, when trying to modify a non-mutable property.
 */
@!APILevel[
    since: "22"
]
public class IllegalSetException <: ReflectException {
    /**
     * @description Constructs an `IllegalSetException` with no detail message.
     */
    @!APILevel[
        since: "22"
    ]
    public init()

    /**
     * @description Constructs an `IllegalSetException` with the specified detail message.
     * @param message The detail message.
     */
    @!APILevel[
        since: "22"
    ]
    public init(message: String)
}

/**
 * @description Thrown when a reflective operation encounters an incorrect or inappropriate type.
 */
@!APILevel[
    since: "22"
]
public class IllegalTypeException <: ReflectException {
    /**
     * @description Constructs an `IllegalTypeException` with no detail message.
     */
    @!APILevel[
        since: "22"
    ]
    public init()

    /**
     * @description Constructs an `IllegalTypeException` with the specified detail message.
     * @param message The detail message.
     */
    @!APILevel[
        since: "22"
    ]
    public init(message: String)
}

/**
 * @description A wrapper exception for any exception thrown by an invoked method or constructor.
 */
@!APILevel[
    since: "22"
]
public class InvocationTargetException <: ReflectException {
    /**
     * @description Constructs an `InvocationTargetException` with no detail message.
     */
    @!APILevel[
        since: "22"
    ]
    public init()

    /**
     * @description Constructs an `InvocationTargetException` with the specified detail message.
     * @param message The detail message.
     */
    @!APILevel[
        since: "22"
    ]
    public init(message: String)
}

/**
 * @description Provides reflection information about a generic type parameter.
 */
@!APILevel[
    since: "22"
]
public class GenericTypeInfo <: TypeInfo & Equatable<GenericTypeInfo> {
    /**
     * @description Compares this `GenericTypeInfo` to another object for equality.
     * @param other The object to compare with.
     * @returns `true` if the objects are equal, `false` otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    public operator func ==(other: GenericTypeInfo): Bool
}

/**
 * @description Provides reflection information about an instance function (method).
 */
@!APILevel[
    since: "22"
]
public class InstanceFunctionInfo <: Equatable<InstanceFunctionInfo> & Hashable & ToString {
    /**
     * @description Gets a collection of `GenericTypeInfo` objects for the generic parameters of this function.
     * @returns A collection of `GenericTypeInfo` objects.
     * @throws InfoNotFoundException if generic parameter information cannot be found.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public prop genericParams: Collection<GenericTypeInfo>

    /**
     * @description Gets the name of the function.
     * @returns The function name.
     */
    @!APILevel[
        since: "22"
    ]
    public prop name: String

    /**
     * @description Gets a read-only list of `ParameterInfo` objects for the parameters of this function.
     * @returns A read-only list of `ParameterInfo` objects.
     */
    @!APILevel[
        since: "22"
    ]
    public prop parameters: ReadOnlyList<ParameterInfo>

    /**
     * @description Gets the `TypeInfo` for the return type of this function.
     * @returns The `TypeInfo` for the return type.
     */
    @!APILevel[
        since: "22"
    ]
    public prop returnType: TypeInfo

    /**
     * @description Gets a collection of `ModifierInfo` enums representing the modifiers of this function.
     * @returns A collection of `ModifierInfo` enums.
     */
    @!APILevel[
        since: "22"
    ]
    public prop modifiers: Collection<ModifierInfo>

    /**
     * @description Gets a collection of annotations present on this function.
     * @returns A collection of `Annotation` objects.
     */
    @!APILevel[
        since: "22"
    ]
    public prop annotations: Collection<Annotation>

    /**
     * @description Determines if the function is declared as `open`.
     * @returns `true` if the function is `open`, `false` otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    public func isOpen(): Bool

    /**
     * @description Determines if the function is declared as `abstract`.
     * @returns `true` if the function is `abstract`, `false` otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    public func isAbstract(): Bool

    /**
     * @description Invokes the function on the specified instance with the given arguments.
     * @param instance The object instance on which to invoke the function.
     * @param args An array of arguments to pass to the function.
     * @returns The result of the function invocation.
     * @throws IllegalTypeException if a type is invalid for an operation.
     * @throws IllegalArgumentException if the number of arguments in args is not equal to the number of parameters in
     *         the parameter list of the instance member function corresponding to the instance member function information.
     * @throws InvocationTargetException if the invoked function throws an exception.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func apply(instance: Any, args: Array<Any>): Any

    /**
     * @description Invokes the generic function on the specified instance with the given generic type arguments and arguments.
     * @param instance The object instance on which to invoke the function.
     * @param genericTypeArgs An array of `TypeInfo` objects for the generic type arguments.
     * @param args An array of arguments to pass to the function.
     * @returns The result of the function invocation.
     * @throws InfoNotFoundException if the function information cannot be found.
     * @throws IllegalArgumentException if an argument is invalid.
     * @throws IllegalTypeException if a type is invalid for an operation.
     * @throws InvocationTargetException if the invoked function throws an exception.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func apply(instance: Any, genericTypeArgs: Array<TypeInfo>, args: Array<Any>): Any

    /**
     * @description Finds an annotation of the specified type `T` on this function.
     * @returns An `Option` containing the annotation if present, otherwise `None`.
     */
    @!APILevel[
        since: "22"
    ]
    public func findAnnotation<T>(): ?T where T <: Annotation

    /**
     * @description Finds all annotations of the specified type `T` on this function.
     * @returns An array of all annotations of type `T`.
     * @throws InfoNotFoundException if annotation information cannot be found.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func findAllAnnotations<T>(): Array<T> where T <: Annotation

    /**
     * @description Gets all annotations present on this function.
     * @returns An array containing all annotations.
     * @throws InfoNotFoundException if annotation information cannot be found.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func getAllAnnotations(): Array<Annotation>

    /**
     * @description Compares this `InstanceFunctionInfo` to another for equality.
     * @param other The other `InstanceFunctionInfo` to compare with.
     * @returns `true` if the objects are equal, `false` otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    public operator func ==(other: InstanceFunctionInfo): Bool

    /**
     * @description Compares this `InstanceFunctionInfo` to another for inequality.
     * @param other The other `InstanceFunctionInfo` to compare with.
     * @returns `true` if the objects are not equal, `false` otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    public operator func !=(other: InstanceFunctionInfo): Bool

    /**
     * @description Computes the hash code for this `InstanceFunctionInfo`.
     * @returns The hash code.
     */
    @!APILevel[
        since: "22"
    ]
    public func hashCode(): Int64

    /**
     * @description Returns a string representation of this `InstanceFunctionInfo`.
     * @returns A string representation of the function.
     */
    @!APILevel[
        since: "22"
    ]
    public func toString(): String
}

/**
 * @description Provides reflection information about a static function.
 */
@!APILevel[
    since: "22"
]
public class StaticFunctionInfo <: Equatable<StaticFunctionInfo> & Hashable & ToString {
    /**
     * @description Gets a collection of `GenericTypeInfo` objects for the generic parameters of this function.
     * @returns A collection of `GenericTypeInfo` objects.
     * @throws InfoNotFoundException if generic parameter information cannot be found.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public prop genericParams: Collection<GenericTypeInfo>

    /**
     * @description Gets the name of the function.
     * @returns The function name.
     */
    @!APILevel[
        since: "22"
    ]
    public prop name: String

    /**
     * @description Gets a read-only list of `ParameterInfo` objects for the parameters of this function.
     * @returns A read-only list of `ParameterInfo` objects.
     */
    @!APILevel[
        since: "22"
    ]
    public prop parameters: ReadOnlyList<ParameterInfo>

    /**
     * @description Gets the `TypeInfo` for the return type of this function.
     * @returns The `TypeInfo` for the return type.
     */
    @!APILevel[
        since: "22"
    ]
    public prop returnType: TypeInfo

    /**
     * @description Gets a collection of `ModifierInfo` enums representing the modifiers of this function.
     * @returns A collection of `ModifierInfo` enums.
     */
    @!APILevel[
        since: "22"
    ]
    public prop modifiers: Collection<ModifierInfo>

    /**
     * @description Gets a collection of annotations present on this function.
     * @returns A collection of `Annotation` objects.
     */
    @!APILevel[
        since: "22"
    ]
    public prop annotations: Collection<Annotation>

    /**
     * @description Invokes the static function with the given arguments.
     * @param thisType The type on which the static function is defined.
     * @param args An array of arguments to pass to the function.
     * @returns The result of the function invocation.
     * @throws InfoNotFoundException if the function information cannot be found.
     * @throws IllegalTypeException if a type is invalid for an operation.
     * @throws IllegalArgumentException if thisType is inconsistent with the function signature of this static function.
     * @throws InvocationTargetException if the invoked function throws an exception.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func apply(thisType: TypeInfo, args: Array<Any>): Any

    /**
     * @description Invokes the generic static function with the given generic type arguments and arguments.
     * @param thisType The type on which the static function is defined.
     * @param genericTypeArgs An array of `TypeInfo` objects for the generic type arguments.
     * @param args An array of arguments to pass to the function.
     * @returns The result of the function invocation.
     * @throws IllegalTypeException if a type is invalid for an operation.
     * @throws IllegalArgumentException if thisType is inconsistent with the function signature of this static function.
     * @throws InfoNotFoundException if the function information cannot be found.
     * @throws InvocationTargetException if the invoked function throws an exception.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func apply(thisType: TypeInfo, genericTypeArgs: Array<TypeInfo>, args: Array<Any>): Any

    /**
     * @description Finds an annotation of the specified type `T` on this function.
     * @returns An `Option` containing the annotation if present, otherwise `None`.
     */
    @!APILevel[
        since: "22"
    ]
    public func findAnnotation<T>(): ?T where T <: Annotation

    /**
     * @description Finds all annotations of the specified type `T` on this function.
     * @returns An array of all annotations of type `T`.
     * @throws InfoNotFoundException if annotation information cannot be found.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func findAllAnnotations<T>(): Array<T> where T <: Annotation

    /**
     * @description Gets all annotations present on this function.
     * @returns An array containing all annotations.
     * @throws InfoNotFoundException if annotation information cannot be found.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func getAllAnnotations(): Array<Annotation>

    /**
     * @description Compares this `StaticFunctionInfo` to another for equality.
     * @param other The other `StaticFunctionInfo` to compare with.
     * @returns `true` if the objects are equal, `false` otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    public operator func ==(other: StaticFunctionInfo): Bool

    /**
     * @description Compares this `StaticFunctionInfo` to another for inequality.
     * @param other The other `StaticFunctionInfo` to compare with.
     * @returns `true` if the objects are not equal, `false` otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    public operator func !=(other: StaticFunctionInfo): Bool

    /**
     * @description Computes the hash code for this `StaticFunctionInfo`.
     * @returns The hash code.
     */
    @!APILevel[
        since: "22"
    ]
    public func hashCode(): Int64

    /**
     * @description Returns a string representation of this `StaticFunctionInfo`.
     * @returns A string representation of the function.
     */
    @!APILevel[
        since: "22"
    ]
    public func toString(): String
}

/**
 * @description Provides reflection information about an instance property.
 */
@!APILevel[
    since: "22"
]
public class InstancePropertyInfo <: Equatable<InstancePropertyInfo> & Hashable & ToString {
    /**
     * @description Gets the name of the property.
     * @returns The property name.
     */
    @!APILevel[
        since: "22"
    ]
    public prop name: String

    /**
     * @description Gets the `TypeInfo` for the type of this property.
     * @returns The `TypeInfo` for the property's type.
     * @throws InfoNotFoundException if type information cannot be found.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public prop typeInfo: TypeInfo

    /**
     * @description Gets a collection of `ModifierInfo` enums representing the modifiers of this property.
     * @returns A collection of `ModifierInfo` enums.
     */
    @!APILevel[
        since: "22"
    ]
    public prop modifiers: Collection<ModifierInfo>

    /**
     * @description Gets a collection of annotations present on this property.
     * @returns A collection of `Annotation` objects.
     */
    @!APILevel[
        since: "22"
    ]
    public prop annotations: Collection<Annotation>

    /**
     * @description Determines if the property is declared as `open`.
     * @returns `true` if the property is `open`, `false` otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    public func isOpen(): Bool

    /**
     * @description Determines if the property is declared as `abstract`.
     * @returns `true` if the property is `abstract`, `false` otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    public func isAbstract(): Bool

    /**
     * @description Determines if the property is mutable (declared with `mut`).
     * @returns `true` if the property is mutable, `false` otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    public func isMutable(): Bool

    /**
     * @description Gets the value of this property from the specified instance.
     * @param instance The object instance from which to get the property value.
     * @returns The value of the property.
     * @throws IllegalTypeException if the runtime type of the instance is not strictly the same as the type
     *         that the instance member property corresponding to the instance member property information belongs to.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func getValue(instance: Any): Any

    /**
     * @description Sets the value of this property on the specified instance.
     * @param instance The object instance on which to set the property value.
     * @param newValue The new value for the property.
     * @throws IllegalTypeException if a type is invalid for an operation.
     * @throws IllegalSetException if the property is not mutable.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func setValue(instance: Any, newValue: Any): Unit

    /**
     * @description Finds an annotation of the specified type `T` on this property.
     * @returns An `Option` containing the annotation if present, otherwise `None`.
     */
    @!APILevel[
        since: "22"
    ]
    public func findAnnotation<T>(): ?T where T <: Annotation

    /**
     * @description Finds all annotations of the specified type `T` on this property.
     * @returns An array of all annotations of type `T`.
     * @throws InfoNotFoundException if annotation information cannot be found.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func findAllAnnotations<T>(): Array<T> where T <: Annotation

    /**
     * @description Gets all annotations present on this property.
     * @returns An array containing all annotations.
     * @throws InfoNotFoundException if annotation information cannot be found.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func getAllAnnotations(): Array<Annotation>

    /**
     * @description Compares this `InstancePropertyInfo` to another for equality.
     * @param other The other `InstancePropertyInfo` to compare with.
     * @returns `true` if the objects are equal, `false` otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    public operator func ==(other: InstancePropertyInfo): Bool

    /**
     * @description Compares this `InstancePropertyInfo` to another for inequality.
     * @param other The other `InstancePropertyInfo` to compare with.
     * @returns `true` if the objects are not equal, `false` otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    public operator func !=(other: InstancePropertyInfo): Bool

    /**
     * @description Computes the hash code for this `InstancePropertyInfo`.
     * @returns The hash code.
     */
    @!APILevel[
        since: "22"
    ]
    public func hashCode(): Int64

    /**
     * @description Returns a string representation of this `InstancePropertyInfo`.
     * @returns A string representation of the property.
     */
    @!APILevel[
        since: "22"
    ]
    public func toString(): String
}

/**
 * @description Provides reflection information about a static property.
 */
@!APILevel[
    since: "22"
]
public class StaticPropertyInfo <: Equatable<StaticPropertyInfo> & Hashable & ToString {
    /**
     * @description Gets the name of the property.
     * @returns The property name.
     */
    @!APILevel[
        since: "22"
    ]
    public prop name: String

    /**
     * @description Gets the `TypeInfo` for the type of this property.
     * @returns The `TypeInfo` for the property's type.
     * @throws InfoNotFoundException if type information cannot be found.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public prop typeInfo: TypeInfo

    /**
     * @description Gets a collection of `ModifierInfo` enums representing the modifiers of this property.
     * @returns A collection of `ModifierInfo` enums.
     */
    @!APILevel[
        since: "22"
    ]
    public prop modifiers: Collection<ModifierInfo>

    /**
     * @description Gets a collection of annotations present on this property.
     * @returns A collection of `Annotation` objects.
     */
    @!APILevel[
        since: "22"
    ]
    public prop annotations: Collection<Annotation>

    /**
     * @description Determines if the property is mutable (declared with `mut`).
     * @returns `true` if the property is mutable, `false` otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    public func isMutable(): Bool

    /**
     * @description Gets the value of this static property.
     * @returns The value of the property.
     */
    @!APILevel[
        since: "22"
    ]
    public func getValue(): Any

    /**
     * @description Sets the value of this static property.
     * @param newValue The new value for the property.
     * @throws IllegalTypeException if a type is invalid for an operation.
     * @throws IllegalSetException if the property is not mutable.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func setValue(newValue: Any): Unit

    /**
     * @description Finds an annotation of the specified type `T` on this property.
     * @returns An `Option` containing the annotation if present, otherwise `None`.
     */
    @!APILevel[
        since: "22"
    ]
    public func findAnnotation<T>(): ?T where T <: Annotation

    /**
     * @description Finds all annotations of the specified type `T` on this property.
     * @returns An array of all annotations of type `T`.
     * @throws InfoNotFoundException if annotation information cannot be found.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func findAllAnnotations<T>(): Array<T> where T <: Annotation

    /**
     * @description Gets all annotations present on this property.
     * @returns An array containing all annotations.
     * @throws InfoNotFoundException if annotation information cannot be found.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func getAllAnnotations(): Array<Annotation>

    /**
     * @description Compares this `StaticPropertyInfo` to another for equality.
     * @param other The other `StaticPropertyInfo` to compare with.
     * @returns `true` if the objects are equal, `false` otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    public operator func ==(other: StaticPropertyInfo): Bool

    /**
     * @description Compares this `StaticPropertyInfo` to another for inequality.
     * @param other The other `StaticPropertyInfo` to compare with.
     * @returns `true` if the objects are not equal, `false` otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    public operator func !=(other: StaticPropertyInfo): Bool

    /**
     * @description Computes the hash code for this `StaticPropertyInfo`.
     * @returns The hash code.
     */
    @!APILevel[
        since: "22"
    ]
    public func hashCode(): Int64

    /**
     * @description Returns a string representation of this `StaticPropertyInfo`.
     * @returns A string representation of the property.
     */
    @!APILevel[
        since: "22"
    ]
    public func toString(): String
}

/**
 * @description Provides reflection information about a class constructor.
 */
@!APILevel[
    since: "22"
]
public class ConstructorInfo <: Equatable<ConstructorInfo> & Hashable & ToString {
    /**
     * @description Gets a read-only list of `ParameterInfo` objects for the parameters of this constructor.
     * @returns A read-only list of `ParameterInfo` objects.
     */
    @!APILevel[
        since: "22"
    ]
    public prop parameters: ReadOnlyList<ParameterInfo>

    /**
     * @description Gets a collection of annotations present on this constructor.
     * @returns A collection of `Annotation` objects.
     */
    @!APILevel[
        since: "22"
    ]
    public prop annotations: Collection<Annotation>

    /**
     * @description Creates a new instance by invoking this constructor with the given arguments.
     * @param args An array of arguments to pass to the constructor.
     * @returns A new instance of the class.
     * @throws IllegalTypeException if a type is invalid for an operation.
     * @throws IllegalArgumentException if the number of actual parameters in args is not equal to the number of
     *         formal parameters in the parameter list of the constructor corresponding to this constructor information.
     * @throws InvocationTargetException if the constructor throws an exception.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func apply(args: Array<Any>): Any

    /**
     * @description Finds an annotation of the specified type `T` on this constructor.
     * @returns An `Option` containing the annotation if present, otherwise `None`.
     */
    @!APILevel[
        since: "22"
    ]
    public func findAnnotation<T>(): ?T where T <: Annotation

    /**
     * @description Finds all annotations of the specified type `T` on this constructor.
     * @returns An array of all annotations of type `T`.
     * @throws InfoNotFoundException if annotation information cannot be found.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func findAllAnnotations<T>(): Array<T> where T <: Annotation

    /**
     * @description Gets all annotations present on this constructor.
     * @returns An array containing all annotations.
     * @throws InfoNotFoundException if annotation information cannot be found.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func getAllAnnotations(): Array<Annotation>

    /**
     * @description Compares this `ConstructorInfo` to another for equality.
     * @param other The other `ConstructorInfo` to compare with.
     * @returns `true` if the objects are equal, `false` otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    public operator func ==(other: ConstructorInfo): Bool

    /**
     * @description Compares this `ConstructorInfo` to another for inequality.
     * @param other The other `ConstructorInfo` to compare with.
     * @returns `true` if the objects are not equal, `false` otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    public operator func !=(other: ConstructorInfo): Bool

    /**
     * @description Computes the hash code for this `ConstructorInfo`.
     * @returns The hash code.
     */
    @!APILevel[
        since: "22"
    ]
    public func hashCode(): Int64

    /**
     * @description Returns a string representation of this `ConstructorInfo`.
     * @returns A string representation of the constructor.
     */
    @!APILevel[
        since: "22"
    ]
    public func toString(): String
}

/**
 * @description Provides reflection information about a global function.
 */
@!APILevel[
    since: "22"
]
public class GlobalFunctionInfo <: Equatable<GlobalFunctionInfo> & Hashable & ToString {
    /**
     * @description Gets a collection of `GenericTypeInfo` objects for the generic parameters of this function.
     * @returns A collection of `GenericTypeInfo` objects.
     * @throws InfoNotFoundException if generic parameter information cannot be found.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public prop genericParams: Collection<GenericTypeInfo>

    /**
     * @description Gets the name of the function.
     * @returns The function name.
     */
    @!APILevel[
        since: "22"
    ]
    public prop name: String

    /**
     * @description Gets a read-only list of `ParameterInfo` objects for the parameters of this function.
     * @returns A read-only list of `ParameterInfo` objects.
     */
    @!APILevel[
        since: "22"
    ]
    public prop parameters: ReadOnlyList<ParameterInfo>

    /**
     * @description Gets the `TypeInfo` for the return type of this function.
     * @returns The `TypeInfo` for the return type.
     */
    @!APILevel[
        since: "22"
    ]
    public prop returnType: TypeInfo

    /**
     * @description Gets a collection of annotations present on this function.
     * @returns A collection of `Annotation` objects.
     */
    @!APILevel[
        since: "22"
    ]
    public prop annotations: Collection<Annotation>

    /**
     * @description Invokes the global function with the given arguments.
     * @param args An array of arguments to pass to the function.
     * @returns The result of the function invocation.
     * @throws IllegalTypeException if a type is invalid for an operation.
     * @throws IllegalArgumentException if the number of actual parameters in args is not equal to the number of
     *         formal parameters in the formal parameter list of the global function corresponding to the global function information GlobalFunctionInfo.
     * @throws InvocationTargetException if the invoked function throws an exception.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func apply(args: Array<Any>): Any

    /**
     * @description Invokes the generic global function with the given generic type arguments and arguments.
     * @param genericTypeArgs An array of `TypeInfo` objects for the generic type arguments.
     * @param args An array of arguments to pass to the function.
     * @returns The result of the function invocation.
     * @throws InfoNotFoundException if the function information cannot be found.
     * @throws IllegalArgumentException if The number of parameters in the function generic parameter list
     *         genericTypeArgs is not equal to the number of parameters in the generic parameter list genericParams of the global function corresponding to the global function information.
     * @throws IllegalTypeException if a type is invalid for an operation.
     * @throws InvocationTargetException if the invoked function throws an exception.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func apply(genericTypeArgs: Array<TypeInfo>, args: Array<Any>): Any

    /**
     * @description Finds an annotation of the specified type `T` on this function.
     * @returns An `Option` containing the annotation if present, otherwise `None`.
     */
    @!APILevel[
        since: "22"
    ]
    public func findAnnotation<T>(): ?T where T <: Annotation

    /**
     * @description Finds all annotations of the specified type `T` on this function.
     * @returns An array of all annotations of type `T`.
     * @throws InfoNotFoundException if annotation information cannot be found.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func findAllAnnotations<T>(): Array<T> where T <: Annotation

    /**
     * @description Gets all annotations present on this function.
     * @returns An array containing all annotations.
     * @throws InfoNotFoundException if annotation information cannot be found.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func getAllAnnotations(): Array<Annotation>

    /**
     * @description Compares this `GlobalFunctionInfo` to another for equality.
     * @param other The other `GlobalFunctionInfo` to compare with.
     * @returns `true` if the objects are equal, `false` otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    public operator func ==(other: GlobalFunctionInfo): Bool

    /**
     * @description Compares this `GlobalFunctionInfo` to another for inequality.
     * @param other The other `GlobalFunctionInfo` to compare with.
     * @returns `true` if the objects are not equal, `false` otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    public operator func !=(other: GlobalFunctionInfo): Bool

    /**
     * @description Computes the hash code for this `GlobalFunctionInfo`.
     * @returns The hash code.
     */
    @!APILevel[
        since: "22"
    ]
    public func hashCode(): Int64

    /**
     * @description Returns a string representation of this `GlobalFunctionInfo`.
     * @returns A string representation of the function.
     */
    @!APILevel[
        since: "22"
    ]
    public func toString(): String
}

/**
 * @description Provides reflection information about an interface type.
 */
@!APILevel[
    since: "22"
]
public class InterfaceTypeInfo <: TypeInfo {
    /**
     * @description Gets the `InterfaceTypeInfo` for an interface with the specified qualified name.
     * @param qualifiedName The fully qualified name of the interface.
     * @returns The `InterfaceTypeInfo` object for the interface.
     * @throws InfoNotFoundException if the interface information cannot be found.
     * @throws IllegalTypeException if the type is not an interface.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public redef static func get(qualifiedName: String): InterfaceTypeInfo

    /**
     * @description Gets the `InterfaceTypeInfo` for the runtime type of the given object, if it's an interface.
     * @param a The object to get the interface information from.
     * @returns The `InterfaceTypeInfo` for the object's type.
     * @throws InfoNotFoundException if the interface information cannot be found.
     * @throws IllegalTypeException if the type is not an interface.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public redef static func of(a: Any): InterfaceTypeInfo

    /**
     * @description Gets the `InterfaceTypeInfo` for the specified interface type `T`, if it's an interface.
     * @returns The `InterfaceTypeInfo` for type `T`.
     * @throws InfoNotFoundException if the interface information cannot be found.
     * @throws IllegalTypeException if the type is not an interface.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public redef static func of<T>(): InterfaceTypeInfo

    /**
     * @description Gets a collection of `TypeInfo` objects for the direct sealed subtypes of this interface.
     * @returns A collection of `TypeInfo` objects for the sealed subtypes.
     */
    @!APILevel[
        since: "22"
    ]
    public prop sealedSubtypes: Collection<TypeInfo>

    /**
     * @description Determines if the interface is declared as `sealed`.
     * @returns `true` if the interface is `sealed`, `false` otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    public func isSealed(): Bool
}

/**
 * @description Represents language modifiers like `open`, `static`, etc.
 */
@!APILevel[
    since: "22"
]
public enum ModifierInfo <: Equatable<ModifierInfo> & Hashable & ToString {
    /**
     * @description The `open` modifier.
     */
    @!APILevel[
        since: "22"
    ]
    Open |
    /**
     * @description The `override` modifier.
     */
    @!APILevel[
        since: "22"
    ]
    Override |
    /**
     * @description The `redef` modifier.
     */
    @!APILevel[
        since: "22"
    ]
    Redef |
    /**
     * @description The `abstract` modifier.
     */
    @!APILevel[
        since: "22"
    ]
    Abstract |
    /**
     * @description The `sealed` modifier.
     */
    @!APILevel[
        since: "22"
    ]
    Sealed |
    /**
     * @description The `mut` modifier for mutable properties.
     */
    @!APILevel[
        since: "22"
    ]
    Mut |
    /**
     * @description The `static` modifier.
     */
    @!APILevel[
        since: "22"
    ]
    Static
    /**
     * @description Compares this `ModifierInfo` to another for equality.
     * @param other The other `ModifierInfo` to compare with.
     * @returns `true` if the objects are equal, `false` otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    public override operator func == (other: ModifierInfo): Bool

    /**
     * @description Compares this `ModifierInfo` to another for inequality.
     * @param other The other `ModifierInfo` to compare with.
     * @returns `true` if the objects are not equal, `false` otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    public override operator func != (other: ModifierInfo): Bool

    /**
     * @description Computes the hash code for this `ModifierInfo`.
     * @returns The hash code.
     */
    @!APILevel[
        since: "22"
    ]
    public func hashCode(): Int64

    /**
     * @description Returns a string representation of this `ModifierInfo`.
     * @returns A string representation of the modifier.
     */
    @!APILevel[
        since: "22"
    ]
    public override func toString(): String
}

/**
 * @description Provides reflection information about a package.
 */
@!APILevel[
    since: "22"
]
public class PackageInfo <: Equatable<PackageInfo> & Hashable & ToString {
    /**
     * @description Gets the `PackageInfo` for a package with the specified qualified name.
     * @param qualifiedName The fully qualified name of the package.
     * @returns The `PackageInfo` object for the package.
     * @throws InfoNotFoundException if the package information cannot be found.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public static func get(qualifiedName: String): PackageInfo

    /**
     * @description Loads a package from the specified path and returns its `PackageInfo`.
     * @param path The file system path to the package.
     * @returns The `PackageInfo` object for the loaded package.
     * @throws ReflectException if shared library loading fails or shared libraries with the same package name, or the same file name are loaded repeatedly,
     *         or there are multiple Packages inside the shared library
     * @throws IllegalArgumentException if path is invalid.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public static func load(path: String): PackageInfo

    /**
     * @description Gets the fully qualified name of the package.
     * @returns The qualified name.
     */
    @!APILevel[
        since: "22"
    ]
    public prop qualifiedName: String

    /**
     * @description Gets the simple name of the package.
     * @returns The simple name.
     */
    @!APILevel[
        since: "22"
    ]
    public prop name: String

    /**
     * @description Gets a collection of `TypeInfo` objects for all types within this package.
     * @returns A collection of `TypeInfo` objects.
     * @throws InfoNotFoundException if type information cannot be found.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public prop typeInfos: Collection<TypeInfo>

    /**
     * @description Gets the version of the package.
     * @returns The package version string.
     */
    @!APILevel[
        since: "22"
    ]
    public prop version: String

    /**
     * @description Gets a collection of `PackageInfo` objects for the sub-packages of this package.
     * @returns A collection of `PackageInfo` objects.
     * @throws InfoNotFoundException if sub-package information cannot be found.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public prop subPackages: Collection<PackageInfo>

    /**
     * @description Gets the `PackageInfo` for the parent package of this package.
     * @returns The `PackageInfo` for the parent package.
     * @throws InfoNotFoundException if the parent package information cannot be found.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public prop parentPackage: PackageInfo

    /**
     * @description Gets the `PackageInfo` for the root package of this package hierarchy.
     * @returns The `PackageInfo` for the root package.
     * @throws InfoNotFoundException if the root package information cannot be found.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public prop rootPackage: PackageInfo

    /**
     * @description Gets the `PackageInfo` for a sub-package with the specified qualified name.
     * @param qualifiedName The qualified name of the sub-package.
     * @returns The `PackageInfo` for the sub-package.
     * @throws IllegalArgumentException if qualifiedName is invalid.
     * @throws InfoNotFoundException if the sub-package information cannot be found.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func getSubPackage(qualifiedName: String): PackageInfo

    /**
     * @description Gets a collection of `GlobalVariableInfo` objects for the global variables in this package.
     * @returns A collection of `GlobalVariableInfo` objects.
     * @throws InfoNotFoundException if variable information cannot be found.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public prop variables: Collection<GlobalVariableInfo>

    /**
     * @description Gets a collection of `GlobalFunctionInfo` objects for the global functions in this package.
     * @returns A collection of `GlobalFunctionInfo` objects.
     * @throws InfoNotFoundException if function information cannot be found.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public prop functions: Collection<GlobalFunctionInfo>

    /**
     * @description Gets the `TypeInfo` for a type with the specified qualified name within this package.
     * @param qualifiedTypeName The qualified name of the type.
     * @returns The `TypeInfo` for the type.
     * @throws InfoNotFoundException if the type information cannot be found.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func getTypeInfo(qualifiedTypeName: String): TypeInfo

    /**
     * @description Gets the `GlobalVariableInfo` for a global variable with the specified name in this package.
     * @param name The name of the global variable.
     * @returns The `GlobalVariableInfo` for the variable.
     * @throws InfoNotFoundException if the variable information cannot be found.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func getVariable(name: String): GlobalVariableInfo

    /**
     * @description Gets the `GlobalFunctionInfo` for a global function with the specified name and parameter types.
     * @param name The name of the global function.
     * @param parameterTypes An array of `TypeInfo` objects for the parameter types.
     * @returns The `GlobalFunctionInfo` for the function.
     * @throws InfoNotFoundException if the function information cannot be found.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func getFunction(name: String, parameterTypes: Array<TypeInfo>): GlobalFunctionInfo

    /**
     * @description Gets all `GlobalFunctionInfo` objects for global functions with the specified name (handling overloads).
     * @param name The name of the global functions.
     * @returns An array of `GlobalFunctionInfo` objects.
     */
    @!APILevel[
        since: "22"
    ]
    public func getFunctions(name: String): Array<GlobalFunctionInfo>

    /**
     * @description Compares this `PackageInfo` to another for equality.
     * @param other The other `PackageInfo` to compare with.
     * @returns `true` if the objects are equal, `false` otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    public operator func ==(other: PackageInfo): Bool

    /**
     * @description Compares this `PackageInfo` to another for inequality.
     * @param other The other `PackageInfo` to compare with.
     * @returns `true` if the objects are not equal, `false` otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    public operator func !=(other: PackageInfo): Bool

    /**
     * @description Computes the hash code for this `PackageInfo`.
     * @returns The hash code.
     */
    @!APILevel[
        since: "22"
    ]
    public func hashCode(): Int64

    /**
     * @description Returns a string representation of this `PackageInfo`.
     * @returns A string representation of the package.
     */
    @!APILevel[
        since: "22"
    ]
    public func toString(): String
}

/**
 * @description Provides reflection information about a function or constructor parameter.
 */
@!APILevel[
    since: "22"
]
public class ParameterInfo <: Equatable<ParameterInfo> & Hashable & ToString {
    /**
     * @description Gets the index of the parameter in the parameter list.
     * @returns The parameter index.
     */
    @!APILevel[
        since: "22"
    ]
    public prop index: Int64

    /**
     * @description Gets the name of the parameter.
     * @returns The parameter name.
     * @throws InfoNotFoundException if the parameter name is not available.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public prop name: String

    /**
     * @description Gets the `TypeInfo` for the type of this parameter.
     * @returns The `TypeInfo` for the parameter's type.
     * @throws InfoNotFoundException if type information cannot be found.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public prop typeInfo: TypeInfo

    /**
     * @description Gets a collection of annotations present on this parameter.
     * @returns A collection of `Annotation` objects.
     */
    @!APILevel[
        since: "22"
    ]
    public prop annotations: Collection<Annotation>

    /**
     * @description Finds an annotation of the specified type `T` on this parameter.
     * @returns An `Option` containing the annotation if present, otherwise `None`.
     */
    @!APILevel[
        since: "22"
    ]
    public func findAnnotation<T>(): ?T where T <: Annotation

    /**
     * @description Finds all annotations of the specified type `T` on this parameter.
     * @returns An array of all annotations of type `T`.
     * @throws InfoNotFoundException if annotation information cannot be found.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func findAllAnnotations<T>(): Array<T> where T <: Annotation

    /**
     * @description Gets all annotations present on this parameter.
     * @returns An array containing all annotations.
     * @throws InfoNotFoundException if annotation information cannot be found.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func getAllAnnotations(): Array<Annotation>

    /**
     * @description Compares this `ParameterInfo` to another for equality.
     * @param other The other `ParameterInfo` to compare with.
     * @returns `true` if the objects are equal, `false` otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    public operator func ==(other: ParameterInfo): Bool

    /**
     * @description Compares this `ParameterInfo` to another for inequality.
     * @param other The other `ParameterInfo` to compare with.
     * @returns `true` if the objects are not equal, `false` otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    public operator func !=(other: ParameterInfo): Bool

    /**
     * @description Computes the hash code for this `ParameterInfo`.
     * @returns The hash code.
     */
    @!APILevel[
        since: "22"
    ]
    public func hashCode(): Int64

    /**
     * @description Returns a string representation of this `ParameterInfo`.
     * @returns A string representation of the parameter.
     */
    @!APILevel[
        since: "22"
    ]
    public func toString(): String
}

/**
 * @description Provides reflection information about a primitive type (e.g., `Int32`, `Bool`).
 */
@!APILevel[
    since: "22"
]
public class PrimitiveTypeInfo <: TypeInfo {
    /**
     * @description Gets the `PrimitiveTypeInfo` for a primitive type with the specified qualified name.
     * @param qualifiedName The qualified name of the primitive type.
     * @returns The `PrimitiveTypeInfo` object for the type.
     * @throws InfoNotFoundException if the type information cannot be found.
     * @throws IllegalTypeException if the type is not a primitive.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public static redef func get(qualifiedName: String): PrimitiveTypeInfo

    /**
     * @description Gets the `PrimitiveTypeInfo` for the runtime type of the given value.
     * @param a The value to get the type information from.
     * @returns The `PrimitiveTypeInfo` for the value's type.
     * @throws IllegalTypeException if the type is not a primitive.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public static redef func of(a: Any): PrimitiveTypeInfo

    /**
     * @description Gets the `PrimitiveTypeInfo` for the specified primitive type `T`.
     * @returns The `PrimitiveTypeInfo` for type `T`.
     * @throws InfoNotFoundException if the type information cannot be found.
     * @throws IllegalTypeException if the type is not a primitive.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public static redef func of<T>(): PrimitiveTypeInfo
}

/**
 * @description Provides reflection information about a struct type.
 */
@!APILevel[
    since: "22"
]
public class StructTypeInfo <: TypeInfo {
    /**
     * @description Gets the `StructTypeInfo` for a struct with the specified qualified name.
     * @param qualifiedName The fully qualified name of the struct.
     * @returns The `StructTypeInfo` object for the struct.
     * @throws InfoNotFoundException if the struct information cannot be found.
     * @throws IllegalTypeException if the type is not a struct.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public static redef func get(qualifiedName: String): StructTypeInfo

    /**
     * @description Gets the `StructTypeInfo` for the runtime type of the given value.
     * @param a The value to get the struct information from.
     * @returns The `StructTypeInfo` for the value's type.
     * @throws InfoNotFoundException if the struct information cannot be found.
     * @throws IllegalTypeException if the type is not a struct.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public static redef func of(a: Any): StructTypeInfo

    /**
     * @description Gets the `StructTypeInfo` for the specified struct type `T`.
     * @returns The `StructTypeInfo` for type `T`.
     * @throws InfoNotFoundException if the struct information cannot be found.
     * @throws IllegalTypeException if the type is not a struct.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public static redef func of<T>(): StructTypeInfo

    /**
     * @description Gets a collection of `ConstructorInfo` objects for the public constructors of this struct.
     * @returns A collection of `ConstructorInfo` objects.
     * @throws InfoNotFoundException if constructor information cannot be found.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public prop constructors: Collection<ConstructorInfo>

    /**
     * @description Gets a collection of `InstanceVariableInfo` objects for the fields of this struct.
     * @returns A collection of `InstanceVariableInfo` objects.
     * @throws InfoNotFoundException if field information cannot be found.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public prop instanceVariables: Collection<InstanceVariableInfo>

    /**
     * @description Gets a collection of `StaticVariableInfo` objects for the static variables of this struct.
     * @returns A collection of `StaticVariableInfo` objects.
     * @throws InfoNotFoundException if static variable information cannot be found.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public prop staticVariables: Collection<StaticVariableInfo>

    /**
     * @description Creates a new instance of this struct by invoking the appropriate constructor with the given arguments.
     * @param args An array of arguments to be passed to the constructor.
     * @returns A new instance of the struct.
     * @throws InvocationTargetException if the constructor throws an exception.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func construct(args: Array<Any>): Any

    /**
     * @description Gets the `ConstructorInfo` for the constructor with the specified parameter types.
     * @param parameterTypes An array of `TypeInfo` objects representing the parameter types of the constructor.
     * @returns The `ConstructorInfo` for the matching constructor.
     * @throws InfoNotFoundException if a matching constructor is not found.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func getConstructor(parameterTypes: Array<TypeInfo>): ConstructorInfo

    /**
     * @description Gets the `InstanceVariableInfo` for the field with the specified name.
     * @param name The name of the field.
     * @returns The `InstanceVariableInfo` for the matching field.
     * @throws InfoNotFoundException if a matching field is not found.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func getInstanceVariable(name: String): InstanceVariableInfo

    /**
     * @description Gets the `StaticVariableInfo` for the static variable with the specified name.
     * @param name The name of the static variable.
     * @returns The `StaticVariableInfo` for the matching static variable.
     * @throws InfoNotFoundException if a matching static variable is not found.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func getStaticVariable(name: String): StaticVariableInfo
}

/**
 * @description Provides reflection information about a type. This is the base class for all type information classes.
 */
@!APILevel[
    since: "22"
]
sealed abstract class TypeInfo <: Equatable<TypeInfo> & Hashable & ToString {
    /**
     * @description Gets the `TypeInfo` for the specified generic type `T`.
     * @returns The `TypeInfo` object for type `T`.
     * @throws InfoNotFoundException if the type information cannot be found.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public static func of<T>(): TypeInfo

    /**
     * @description Gets the `TypeInfo` for the runtime type of the given object.
     * @param a The object to get the type information from.
     * @returns The `TypeInfo` for the object's type.
     * @throws InfoNotFoundException if the type information cannot be found.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public static func of(a: Any): TypeInfo

    /**
     * @description Gets the `ClassTypeInfo` for the runtime class of the given object.
     * @param a The object to get the class information from.
     * @returns The `ClassTypeInfo` for the object's class.
     * @throws InfoNotFoundException if the class information cannot be found.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public static func of(a: Object): ClassTypeInfo

    /**
     * @description Gets the `TypeInfo` for a type with the specified qualified name.
     * @param qualifiedName The fully qualified name of the type.
     * @returns The `TypeInfo` object for the type.
     * @throws InfoNotFoundException if the type information cannot be found.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public static func get(qualifiedName: String): TypeInfo

    /**
     * @description Gets the simple name of the type.
     * @returns The simple name of the type.
     */
    @!APILevel[
        since: "22"
    ]
    public prop name: String

    /**
     * @description Gets the fully qualified name of the type.
     * @returns The fully qualified name of the type.
     */
    @!APILevel[
        since: "22"
    ]
    public prop qualifiedName: String

    /**
     * @description Gets a collection of `InstanceFunctionInfo` objects for the instance functions of this type.
     * @returns A collection of `InstanceFunctionInfo` objects.
     * @throws InfoNotFoundException if function information cannot be found.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public prop instanceFunctions: Collection<InstanceFunctionInfo>

    /**
     * @description Gets a collection of `StaticFunctionInfo` objects for the static functions of this type.
     * @returns A collection of `StaticFunctionInfo` objects.
     * @throws InfoNotFoundException if function information cannot be found.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public prop staticFunctions: Collection<StaticFunctionInfo>

    /**
     * @description Gets a collection of `InstancePropertyInfo` objects for the instance properties of this type.
     * @returns A collection of `InstancePropertyInfo` objects.
     * @throws InfoNotFoundException if property information cannot be found.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public prop instanceProperties: Collection<InstancePropertyInfo>

    /**
     * @description Gets a collection of `StaticPropertyInfo` objects for the static properties of this type.
     * @returns A collection of `StaticPropertyInfo` objects.
     * @throws InfoNotFoundException if property information cannot be found.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public prop staticProperties: Collection<StaticPropertyInfo>

    /**
     * @description Gets a collection of annotations present on this type.
     * @returns A collection of `Annotation` objects.
     */
    @!APILevel[
        since: "22"
    ]
    public prop annotations: Collection<Annotation>

    /**
     * @description Gets a collection of `InterfaceTypeInfo` objects for the interfaces implemented by this type.
     * @returns A collection of `InterfaceTypeInfo` objects.
     * @throws InfoNotFoundException if interface information cannot be found.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public prop superInterfaces: Collection<InterfaceTypeInfo>

    /**
     * @description Gets a collection of `ModifierInfo` enums representing the modifiers of this type.
     * @returns A collection of `ModifierInfo` enums.
     */
    @!APILevel[
        since: "22"
    ]
    public prop modifiers: Collection<ModifierInfo>

    /**
     * @description Checks if this type is a subtype of the specified supertype.
     * @param supertype The `TypeInfo` of the potential supertype.
     * @returns `true` if this type is a subtype of `supertype`, `false` otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    public func isSubtypeOf(supertype: TypeInfo): Bool

    /**
     * @description Gets the `InstanceFunctionInfo` for an instance function with the specified name and parameter types.
     * @param name The name of the instance function.
     * @param parameterTypes An array of `TypeInfo` objects for the parameter types.
     * @returns The `InstanceFunctionInfo` for the function.
     * @throws InfoNotFoundException if the function information cannot be found.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func getInstanceFunction(name: String, parameterTypes: Array<TypeInfo>): InstanceFunctionInfo

    /**
     * @description Gets all `InstanceFunctionInfo` objects for instance functions with the specified name (handling overloads).
     * @param name The name of the instance functions.
     * @returns An array of `InstanceFunctionInfo` objects.
     */
    @!APILevel[
        since: "22"
    ]
    public func getInstanceFunctions(name: String): Array<InstanceFunctionInfo>

    /**
     * @description Gets the `StaticFunctionInfo` for a static function with the specified name and parameter types.
     * @param name The name of the static function.
     * @param parameterTypes An array of `TypeInfo` objects for the parameter types.
     * @returns The `StaticFunctionInfo` for the function.
     * @throws InfoNotFoundException if the function information cannot be found.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func getStaticFunction(name: String, parameterTypes: Array<TypeInfo>): StaticFunctionInfo

    /**
     * @description Gets all `StaticFunctionInfo` objects for static functions with the specified name (handling overloads).
     * @param name The name of the static functions.
     * @returns An array of `StaticFunctionInfo` objects.
     */
    @!APILevel[
        since: "22"
    ]
    public func getStaticFunctions(name: String): Array<StaticFunctionInfo>

    /**
     * @description Gets the `InstancePropertyInfo` for an instance property with the specified name.
     * @param name The name of the instance property.
     * @returns The `InstancePropertyInfo` for the property.
     * @throws InfoNotFoundException if the property information cannot be found.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func getInstanceProperty(name: String): InstancePropertyInfo

    /**
     * @description Gets the `StaticPropertyInfo` for a static property with the specified name.
     * @param name The name of the static property.
     * @returns The `StaticPropertyInfo` for the property.
     * @throws InfoNotFoundException if the property information cannot be found.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func getStaticProperty(name: String): StaticPropertyInfo

    /**
     * @description Finds an annotation of the specified type `T` on this type.
     * @returns An `Option` containing the annotation if present, otherwise `None`.
     */
    @!APILevel[
        since: "22"
    ]
    public func findAnnotation<T>(): ?T where T <: Annotation

    /**
     * @description Finds all annotations of the specified type `T` on this type.
     * @returns An array of all annotations of type `T`.
     * @throws InfoNotFoundException if annotation information cannot be found.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func findAllAnnotations<T>(): Array<T> where T <: Annotation

    /**
     * @description Gets all annotations present on this type.
     * @returns An array containing all annotations.
     * @throws InfoNotFoundException if annotation information cannot be found.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func getAllAnnotations(): Array<Annotation>

    /**
     * @description Compares this `TypeInfo` to another for equality.
     * @param other The other `TypeInfo` to compare with.
     * @returns `true` if they are equal, `false` otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    public operator func ==(other: TypeInfo): Bool

    /**
     * @description Compares this `TypeInfo` to another for inequality.
     * @param other The other `TypeInfo` to compare with.
     * @returns `true` if they are not equal, `false` otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    public operator func !=(other: TypeInfo): Bool

    /**
     * @description Computes the hash code for this `TypeInfo`.
     * @returns The hash code.
     */
    @!APILevel[
        since: "22"
    ]
    public func hashCode(): Int64

    /**
     * @description Returns a string representation of this `TypeInfo`.
     * @returns A string representation of the type.
     */
    @!APILevel[
        since: "22"
    ]
    public func toString(): String
}

/**
 * @description A type alias representing an annotation. All annotation types must be subtypes of `Object`.
 */
public type Annotation = Object

/**
 * @description Parses a string of comma-separated qualified type names into an array of `TypeInfo` objects.
 * @param parameters A string containing the qualified names of parameter types.
 * @returns An array of `TypeInfo` objects.
 * @throws InfoNotFoundException if a type name cannot be resolved.
 * @throws IllegalArgumentException if an argument is invalid.
 */
@!APILevel[
    since: "22",
    throwexception: true
]
public func parseParameterTypes(parameters: String): Array<TypeInfo>

/**
 * @description Provides reflection information about an instance variable (field).
 */
@!APILevel[
    since: "22"
]
public class InstanceVariableInfo <: Equatable<InstanceVariableInfo> & Hashable & ToString {
    /**
     * @description Gets the name of the instance variable.
     * @returns The name of the variable.
     */
    @!APILevel[
        since: "22"
    ]
    public prop name: String

    /**
     * @description Gets the `TypeInfo` for the type of this instance variable.
     * @returns The `TypeInfo` for the variable's type.
     * @throws InfoNotFoundException if type information cannot be found.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public prop typeInfo: TypeInfo

    /**
     * @description Gets a collection of `ModifierInfo` enums representing the modifiers of this instance variable.
     * @returns A collection of `ModifierInfo` enums.
     */
    @!APILevel[
        since: "22"
    ]
    public prop modifiers: Collection<ModifierInfo>

    /**
     * @description Gets a collection of annotations present on this instance variable.
     * @returns A collection of `Annotation` objects.
     */
    @!APILevel[
        since: "22"
    ]
    public prop annotations: Collection<Annotation>

    /**
     * @description Determines if the instance variable is mutable (declared with `mut`).
     * @returns `true` if the variable is mutable, `false` otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    public func isMutable(): Bool

    /**
     * @description Gets the value of this instance variable from the specified instance.
     * @param instance The object instance from which to get the variable's value.
     * @returns The value of the variable.
     * @throws IllegalTypeException if a type is invalid for an operation.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func getValue(instance: Any): Any

    /**
     * @description Sets the value of this instance variable on the specified instance.
     * @param instance The object instance on which to set the variable's value.
     * @param newValue The new value for the variable.
     * @throws IllegalTypeException if a type is invalid for an operation.
     * @throws IllegalSetException if the variable is not mutable.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func setValue(instance: Any, newValue: Any): Unit

    /**
     * @description Finds an annotation of the specified type `T` on this instance variable.
     * @returns An `Option` containing the annotation if present, otherwise `None`.
     */
    @!APILevel[
        since: "22"
    ]
    public func findAnnotation<T>(): ?T where T <: Annotation

    /**
     * @description Finds all annotations of the specified type `T` on this instance variable.
     * @returns An array of all annotations of type `T`.
     * @throws InfoNotFoundException if annotation information cannot be found.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func findAllAnnotations<T>(): Array<T> where T <: Annotation

    /**
     * @description Gets all annotations present on this instance variable.
     * @returns An array containing all annotations.
     * @throws InfoNotFoundException if annotation information cannot be found.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func getAllAnnotations(): Array<Annotation>

    /**
     * @description Compares this `InstanceVariableInfo` to another for equality.
     * @param other The other `InstanceVariableInfo` to compare with.
     * @returns `true` if they are equal, `false` otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    public operator func ==(other: InstanceVariableInfo): Bool

    /**
     * @description Compares this `InstanceVariableInfo` to another for inequality.
     * @param other The other `InstanceVariableInfo` to compare with.
     * @returns `true` if they are not equal, `false` otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    public operator func !=(other: InstanceVariableInfo): Bool

    /**
     * @description Computes the hash code for this `InstanceVariableInfo`.
     * @returns The hash code.
     */
    @!APILevel[
        since: "22"
    ]
    public func hashCode(): Int64

    /**
     * @description Returns a string representation of this `InstanceVariableInfo`.
     * @returns A string representation of the instance variable.
     */
    @!APILevel[
        since: "22"
    ]
    public func toString(): String
}

/**
 * @description Provides reflection information about a static variable.
 */
@!APILevel[
    since: "22"
]
public class StaticVariableInfo <: Equatable<StaticVariableInfo> & Hashable & ToString {
    /**
     * @description Gets the name of the static variable.
     * @returns The name of the variable.
     */
    @!APILevel[
        since: "22"
    ]
    public prop name: String

    /**
     * @description Gets the `TypeInfo` for the type of this static variable.
     * @returns The `TypeInfo` for the variable's type.
     * @throws InfoNotFoundException if type information cannot be found.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public prop typeInfo: TypeInfo

    /**
     * @description Gets a collection of `ModifierInfo` enums representing the modifiers of this static variable.
     * @returns A collection of `ModifierInfo` enums.
     */
    @!APILevel[
        since: "22"
    ]
    public prop modifiers: Collection<ModifierInfo>

    /**
     * @description Gets a collection of annotations present on this static variable.
     * @returns A collection of `Annotation` objects.
     */
    @!APILevel[
        since: "22"
    ]
    public prop annotations: Collection<Annotation>

    /**
     * @description Determines if the static variable is mutable (declared with `mut`).
     * @returns `true` if the variable is mutable, `false` otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    public func isMutable(): Bool

    /**
     * @description Gets the value of this static variable.
     * @returns The value of the variable.
     */
    @!APILevel[
        since: "22"
    ]
    public func getValue(): Any

    /**
     * @description Sets the value of this static variable.
     * @param newValue The new value for the variable.
     * @throws IllegalTypeException if a type is invalid for an operation.
     * @throws IllegalSetException if the variable is not mutable.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func setValue(newValue: Any): Unit

    /**
     * @description Finds an annotation of the specified type `T` on this static variable.
     * @returns An `Option` containing the annotation if present, otherwise `None`.
     */
    @!APILevel[
        since: "22"
    ]
    public func findAnnotation<T>(): ?T where T <: Annotation

    /**
     * @description Finds all annotations of the specified type `T` on this static variable.
     * @returns An array of all annotations of type `T`.
     * @throws InfoNotFoundException if annotation information cannot be found.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func findAllAnnotations<T>(): Array<T> where T <: Annotation

    /**
     * @description Gets all annotations present on this static variable.
     * @returns An array containing all annotations.
     * @throws InfoNotFoundException if annotation information cannot be found.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func getAllAnnotations(): Array<Annotation>

    /**
     * @description Compares this `StaticVariableInfo` to another for equality.
     * @param other The other `StaticVariableInfo` to compare with.
     * @returns `true` if they are equal, `false` otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    public operator func ==(other: StaticVariableInfo): Bool

    /**
     * @description Compares this `StaticVariableInfo` to another for inequality.
     * @param other The other `StaticVariableInfo` to compare with.
     * @returns `true` if they are not equal, `false` otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    public operator func !=(other: StaticVariableInfo): Bool

    /**
     * @description Computes the hash code for this `StaticVariableInfo`.
     * @returns The hash code.
     */
    @!APILevel[
        since: "22"
    ]
    public func hashCode(): Int64

    /**
     * @description Returns a string representation of this `StaticVariableInfo`.
     * @returns A string representation of the static variable.
     */
    @!APILevel[
        since: "22"
    ]
    public func toString(): String
}

/**
 * @description Provides reflection information about a global variable.
 */
@!APILevel[
    since: "22"
]
public class GlobalVariableInfo <: Equatable<GlobalVariableInfo> & Hashable & ToString {
    /**
     * @description Gets the name of the global variable.
     * @returns The name of the variable.
     */
    @!APILevel[
        since: "22"
    ]
    public prop name: String

    /**
     * @description Gets the `TypeInfo` for the type of this global variable.
     * @returns The `TypeInfo` for the variable's type.
     */
    @!APILevel[
        since: "22"
    ]
    public prop typeInfo: TypeInfo

    /**
     * @description Gets a collection of annotations present on this global variable.
     * @returns A collection of `Annotation` objects.
     */
    @!APILevel[
        since: "22"
    ]
    public prop annotations: Collection<Annotation>

    /**
     * @description Determines if the global variable is mutable (declared with `mut`).
     * @returns `true` if the variable is mutable, `false` otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    public func isMutable(): Bool

    /**
     * @description Gets the value of this global variable.
     * @returns The value of the variable.
     */
    @!APILevel[
        since: "22"
    ]
    public func getValue(): Any

    /**
     * @description Sets the value of this global variable.
     * @param newValue The new value for the variable.
     * @throws IllegalTypeException if a type is invalid for an operation.
     * @throws IllegalSetException if the variable is not mutable.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func setValue(newValue: Any): Unit

    /**
     * @description Finds an annotation of the specified type `T` on this global variable.
     * @returns An `Option` containing the annotation if present, otherwise `None`.
     */
    @!APILevel[
        since: "22"
    ]
    public func findAnnotation<T>(): ?T where T <: Annotation

    /**
     * @description Finds all annotations of the specified type `T` on this global variable.
     * @returns An array of all annotations of type `T`.
     * @throws InfoNotFoundException if annotation information cannot be found.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func findAllAnnotations<T>(): Array<T> where T <: Annotation

    /**
     * @description Gets all annotations present on this global variable.
     * @returns An array containing all annotations.
     * @throws InfoNotFoundException if annotation information cannot be found.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func getAllAnnotations(): Array<Annotation>

    /**
     * @description Compares this `GlobalVariableInfo` to another for equality.
     * @param other The other `GlobalVariableInfo` to compare with.
     * @returns `true` if they are equal, `false` otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    public operator func ==(other: GlobalVariableInfo): Bool

    /**
     * @description Compares this `GlobalVariableInfo` to another for inequality.
     * @param other The other `GlobalVariableInfo` to compare with.
     * @returns `true` if they are not equal, `false` otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    public operator func !=(other: GlobalVariableInfo): Bool

    /**
     * @description Computes the hash code for this `GlobalVariableInfo`.
     * @returns The hash code.
     */
    @!APILevel[
        since: "22"
    ]
    public func hashCode(): Int64

    /**
     * @description Returns a string representation of this `GlobalVariableInfo`.
     * @returns A string representation of the global variable.
     */
    @!APILevel[
        since: "22"
    ]
    public func toString(): String
}

