package ohos.arkui.state_management

import ohos.ark_interop.*
import ohos.base.*
import ohos.ffi.*
import ohos.hilog.*
import ohos.labels.APILevel
import std.collection.*
import std.collection.ArrayList
import std.deriving.Derive

/**
 * AppStorage singleton is sub-class of see LocalStorage for
 * UI state of app-wide access and same life cycle as the app.
 * Provides a centralized storage for application-wide state management.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class AppStorage {
/**
 * Create and return a two-way sync ("link") to named property
 * Same as @see LocalStorage.link()
 *
 * @param { String } propName - name of source property in AppStorage
 * @returns { ?ObservedProperty<T> } instance of ObservedProperty<T> return None if named property does not already exist in AppStorage.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public static func link<T>(propName: String): ?ObservedProperty<T>

/**
 * Like see @link(), but will create and initialize a new source property in AppStorage if missing
 * Same as see LocalStorage.setAndLink()
 *
 * @param { String } propName - name of source property in AppStorage.
 * @param { T } defaultValue - value to be used for initializing new property in AppStorage,
 * default value must be of type T, can be None.
 * @returns { ObservedProperty<T> } The instance of ObservedProperty<T>.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public static func setAndLink<T>(propName: String, defaultValue: T): ObservedProperty<T>

/**
 * Create and return a one-way sync ('prop') to named property.
 * Establishes a unidirectional synchronization from AppStorage to a component variable.
 *
 * @param { String } propName - name of source property in AppStorage.
 * @returns { ?ObservedProperty<T> } instance of ObservedProperty<T>, return None if named property does not already exist in AppStorage.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public static func property<T>(propName: String): ?ObservedProperty<T>

/**
 * Like prop(), will create and initialize a new source property in AppStorage if missing.
 * Same as see LocalStorage.setAndProp().
 *
 * @param { String } propName - name of source property in AppStorage.
 * @param { T } defaultValue - value to be used for initializing new property in AppStorage.
 * @returns { ObservedProperty<T> } instance of ObservedProperty<T>.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public static func setAndProp<T>(propName: String, defaultValue: T): ObservedProperty<T>

/**
 * Checks if AppStorage has a property with given name
 * returns true if property with given name exists
 * Same as see LocalStorage.has()
 *
 * @param { String } propName - searched property
 * @returns { Bool } true if property with such name exists in AppStorage.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public static func has(propName: String): Bool

/**
 * Same as see LocalStorage.get()
 * Obtain the value of property with given name, returns None if the property does not exist in AppStorage.
 *
 * @param { String } propName - name of the property to retrieve
 * @returns { ?T } property value of type T if found or None.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public static func get<T>(propName: String): ?T

/**
 * Set value of given property in AppStorage.
 * Method sets nothing and returns false if property with this name does not exist in AppStorage.
 * Same as see LocalStorage.set().
 *
 * @param { String } propName - name of the property to set
 * @param { T } newValue - must be of type T
 * @returns { Bool } true on success, i.e. when above conditions are satisfied, otherwise false.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public static func set<T>(propName: String, newValue: T): Bool

/**
 * Set value of given property, if it exists, see set() .
 * Add property if no property with given name in AppStorage, and initialize with given value.
 * newValue can be None or null from API 12
 * see LocalStorage.setOrCreate()
 *
 * @param { String } propName - name of the property to set or create
 * @param { T } newValue - must be of type T.
 * @returns { Unit }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public static func setOrCreate<T>(propName: String, newValue: T): Unit

/**
 * Delete property from StorageBase
 * Use with caution:
 * Before deleting a prop from LocalStorage all its subscribers need to
 * unsubscribe from the property.
 * This method fails and returns false if given property still has subscribers
 * Another reason for failing is unknown property.
 * Developer advise:
 * Subscribers are created with see link(), see prop()
 * and also via @LocalStorageLink and @LocalStorageProp state variable decorators.
 * That means as long as their is a @Component instance that uses such decorated variable
 * or a sync relationship with a SubscribedAbstractProperty variable the property can nit
 * (and also should not!) be deleted from LocalStorage.
 *
 * @param { String } propName - name of the property to delete
 * @returns { Bool } false if method failed.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public static func delete(propName: String): Bool

/**
 * returns an Array of all environment property keys
 *
 * @returns { EquatableCollection<String> } the array of all keys.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public static func keys(): EquatableCollection<String>

/**
 * Returns number of properties in LocalStorage
 * same as Map.prototype.size()
 *
 * @returns { Int64 } Returns the number of properties currently in AppStorage.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public static func size(): Int64

/**
 * Called when data is cleared.
 *
 * @returns { Bool } false and deletes no properties if there is any property that still has subscribers.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public static func clear(): Bool
}

/**
 * Defines the ColorMode of device.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum ColorMode {
/**
 * Light mode.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Light
    | 
/**
 * Dark mode.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Dark
    | ...
}

extend ColorMode <: Equatable<ColorMode> {
/**
 * Compares this ColorMode with another for equality.
 * @param { ColorMode } other - The ColorMode to compare with.
 * @returns { Bool } true if both modes are equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func ==(other: ColorMode): Bool
/**
 * Compares this ColorMode with another for inequality.
 * @param { ColorMode } other - The ColorMode to compare with.
 * @returns { Bool } true if both modes are not equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func !=(other: ColorMode): Bool
}

/**
 * Defines the LayoutDirection of device.
 * Represents the layout direction of the device interface.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public enum LayoutDirection {
/**
 * Elements are laid out from left to right.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Ltr
    | 
/**
 * Elements are laid out from right to left.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Rtl
    | 
/**
 * Elements are laid out from auto.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    Auto
    | ...
}

extend LayoutDirection <: Equatable<LayoutDirection> {
/**
 * Compares this LayoutDirection with another for equality.
 * @param { LayoutDirection } other - The LayoutDirection to compare with.
 * @returns { Bool } true if both directions are equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func ==(other: LayoutDirection): Bool
/**
 * Compares this LayoutDirection with another for inequality.
 * @param { LayoutDirection } other - The LayoutDirection to compare with.
 * @returns { Bool } true if both directions are not equal, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func !=(other: LayoutDirection): Bool
}

/**
 * Defines the Environment interface.
 * Provides access to device environment properties and allows binding them to AppStorage.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class Environment {
/**
 * Return the array of all keys.
 *
 * @returns { Array<String> } the array of all keys.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public static func keys(): Array<String>

/**
 * Creates a new property in AppStorage. The UI framework implementation takes care of updating
 * its value whenever the named device environment property changes. Recommended use is at app startup.
 * The function call fails and returns false if a property with given name exists in AppStorage already.
 * It is wrong API use to access a property with given name in AppStorage before calling Environment.envProp.
 *
 * @param { String } key - environment property name
 * @param { T } defaultValue - is the default value if cannot get the environment property value
 * @returns { Bool } false if method failed.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public static func envProp<T>(key: String, defaultValue: T): Bool
}

/**
 * LocalStorage
 * Class implements a Map of ObservableObjectBase UI state variables.
 * Instances can be created to manage UI state within a limited "local"
 * access, and life cycle as defined by the app.
 * AppStorage singleton is sub-class of LocalStorage for
 * UI state of app-wide access and same life cycle as the app.
 * Provides storage for component-local state management.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class LocalStorage {
/**
 * Construct new instance of LocalStorage
 * initialize with all properties and their values that Object.keys(params) returns
 * Property values must not be None.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public init()

/**
 * Check if LocalStorage has a property with given name.
 * Return true if property with given name exists.
 *
 * @param { String } propName - searched property name.
 * @returns { Bool } true if property with such name exists in LocalStorage.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func has(propName: String): Bool

/**
 * Return the array of all keys.
 *
 * @returns { EquatableCollection<String> } return an EquatableCollection type.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func keys(): EquatableCollection<String>

/**
 * Returns number of properties in LocalStorage.
 * Same as Map.prototype.size().
 *
 * @returns { Int64 } return number of properties.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func size(): Int64

/**
 * Returns value of given property.
 * Returns None if no property with this name.
 *
 * @param { String } propName - name of the property to retrieve
 * @returns { ?T } property value if found.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func get<T>(propName: String): ?T

/**
 * Set value of given property in LocalStorage.
 * Method sets nothing and returns false if property with this name does not exist in LocalStorage.
 * newValue can be None or null from API 12.
 *
 * @param { String } propName - name of the property to set
 * @param { T } newValue - must be of type T.
 * @returns { Bool } true on success.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func set<T>(propName: String, newValue: T): Bool

/**
 * Set value of given property, if it exists, see set() .
 * Add property if no property with given name and initialize with given value.
 * newValue can be None or null from API 12.
 *
 * @param { String } propName - name of the property to set or create
 * @param { T } newValue - must be of type T, can be None or null.
 * @returns { Bool } true on success, i.e. when above conditions are satisfied, otherwise false.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func setOrCreate<T>(propName: String, newValue: T): Bool

/**
 * Create and return a two-way sync "(link") to named property.
 *
 * @param { String } propName - name of source property in LocalStorage.
 * @returns { ?ObservedProperty<T> } instance of ObservedProperty<T> return None if named property does not already exist in LocalStorage Apps can use SDK functions of base class ObservedProperty<T>.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func link<T>(propName: String): ?ObservedProperty<T>

/**
 * Like see link(), but will create and initialize a new source property in LocalStorage if missing.
 *
 * @param { String } propName - name of source property in LocalStorage
 * @param { T } defaultValue - value to be used for initializing new property in LocalStorage
 *        default value must be of type T.
 * @returns { ObservedProperty<T> } The instance of ObservedProperty<T>. Apps can use SDK functions of base class ObservedProperty<T>
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func setAndLink<T>(propName: String, defaultValue: T): ObservedProperty<T>

/**
 * Create and return a one-way sync ('prop') to named property.
 *
 * @param { String } propName - name of source property in LocalStorage.
 * @returns { ?ObservedProperty<T> } The instance of ObservedProperty<T>.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func property<T>(propName: String): ?ObservedProperty<T>

/**
 * Like see prop(), will create and initialize a new source property in LocalStorage if missing.
 *
 * @param { String } propName - name of source property in LocalStorage.
 * @param { T } defaultValue - value to be used for initializing new property in LocalStorage.
 *         Default value must be of type T.
 * @returns { ObservedProperty<T> } instance of ObservedProperty<T> Apps can use SDK functions of base class ObservedProperty<T>.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func setAndProp<T>(propName: String, defaultValue: T): ObservedProperty<T>

/**
 * Delete property from StorageBase.
 * Use with caution:
 * Before deleting a prop from LocalStorage all its subscribers need to
 * unsubscribe from the property.
 * This method fails and returns false if given property still has subscribers.
 * Another reason for failing is unknown property.
 * Developer advise:
 * Subscribers are created with see link(), see prop()
 * and also via @LocalStorageLink and @LocalStorageProp state variable decorators.
 * That means as long as their is a @Component instance that uses such decorated variable
 * or a sync relationship with a SubscribedAbstractProperty variable the property can nit
 * (and also should not!) be deleted from LocalStorage.
 *
 * @param { String } propName - name of the property to delete
 * @returns { Bool } false if method failed.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func delete(propName: String): Bool

/**
 * Delete all properties from the LocalStorage instance.
 * Precondition is that there are no subscribers.
 * Method returns false and deletes no properties if there is any property
 * that still has subscribers.
 *
 * @returns { Bool } false if method failed.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func clear(): Bool
}

/**
 * Defines class ObservedArrayList.
 * An observable array list that can be used for reactive state management.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class ObservedArrayList<T> <: ObservedComplexAbstract & CollectionEx<T> {
/**
 * Creates an ObservedArrayList from an ArrayList.
 *
 * @param { ArrayList<T> } initValue - Initial values for the array list.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public init(initValue: ArrayList<T>)

/**
 * Creates an ObservedArrayList from an Array.
 *
 * @param { Array<T> } initValue - Initial values for the array list.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public init(initValue: Array<T>)

/**
 * Reads value of the sync'ed AppStorage/LocalStorage property.
 *
 * @returns { ArrayList<T> } The current ArrayList value.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func get(): ArrayList<T>

/**
 * Updates the value of value of the sync'ed AppStorage/LocalStorage property.
 * Sets new value, must be of type T, can be None or null.
 * `let link : SubscribedAbstractProperty =AppStorage.Link("foo")`
 * then `link.set("Hello")` will set the value of "foo" property in AppStorage.
 *
 * @param { ArrayList<T> } newValue - The new ArrayList value to set.
 * @returns { Unit }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func set(newValue: ArrayList<T>): Unit

/**
 * Sets the current ArrayList value from another Array object. Enable observers to receive updated information whenever state variables change.
 *
 * @param { Array<T> } newValue - The new Array value to set.
 * @returns { Unit }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func set(newValue: Array<T>): Unit

/**
 * Sets the current ArrayList value from another ObservedComplexAbstract object. Enable observers to receive updated information whenever state variables change.
 *
 * @param { ObservedComplexAbstract } newValue - The new ObservedComplexAbstract value to set.
 * @returns { Unit }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func set(newValue: ObservedComplexAbstract): Unit

/**
 * Gets the element at the specified index in the observed array list. And record the dependency elements that need to be updated.
 *
 * @param { Int64 } index - The zero-based index of the element to get.
 * @returns { T } The element at the specified index.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public operator func [](index: Int64): T

/**
 * Sets the element at the specified index in the observed array list.
 * Enable observers to receive updated information whenever state variables change.
 *
 * @param { Int64 } index - The zero-based index of the element to set.
 * @param { T } value - The new value to set at the specified index.
 * @returns { Unit }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
        public operator func [](index: Int64, value!: T): Unit

/**
 * Gets the number of elements in the observed array list.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public prop size: Int64

/**
 * Checks if the observed array list is empty.
 *
 * @returns { Bool } true if the array list is empty, false otherwise.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func isEmpty(): Bool

/**
 * Creates a shallow copy of the observed array list.
 * This function also record the dependency elements that need to be updated.
 *
 * @returns { ObservedArrayList<T> } A new ObservedArrayList instance with the same elements.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func clone(): ObservedArrayList<T>

/**
 * Removes all elements from the observed array list. Enable observers to receive updated information whenever state variables change.
 *
 * @returns { Unit }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func clear(): Unit

/**
 * Adds an element to the end of the observed array list.
 * This function can enable observers to receive updated information whenever state variables change.
 *
 * @param { T } element - The element to append to the array list.
 * @returns { Unit }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func append(element: T): Unit

/**
 * Adds all elements from a collection to the end of the observed array list.
 * This function can enable observers to receive updated information whenever state variables change.
 *
 * @param { Collection<T> } elements - The collection of elements to append.
 * @returns { Unit }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func appendAll(elements: Collection<T>): Unit

/**
 * Inserts an element at the specified position in the observed array list.
 * This function can enable observers to receive updated information whenever state variables change.
 *
 * @param { Int64 } index - The zero-based index at which to insert the element.
 * @param { T } element - The element to insert.
 * @returns { Unit }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func insert(index: Int64, element: T): Unit

/**
 * Inserts all elements from a collection at the specified position in the observed array list.
 * This function can enable observers to receive updated information whenever state variables change.
 *
 * @param { Int64 } index - The zero-based index at which to insert the elements.
 * @param { Collection<T> } elements - The collection of elements to insert.
 * @returns { Unit }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func insertAll(index: Int64, elements: Collection<T>): Unit

/**
 * Adds an element to the beginning of the observed array list.
 * This function can enable observers to receive updated information whenever state variables change.
 *
 * @param { T } element - The element to prepend to the array list.
 * @returns { Unit }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func prepend(element: T): Unit

/**
 * Adds all elements from a collection to the beginning of the observed array list.
 * This function can enable observers to receive updated information whenever state variables change.
 *
 * @param { Collection<T> } elements - The collection of elements to prepend.
 * @returns { Unit }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func prependAll(elements: Collection<T>): Unit

/**
 * Removes and returns the element at the specified index.
 * Enable observers to receive updated information whenever state variables change.
 *
 * @param { Int64 } index - The zero-based index of the element to remove.
 * @returns { T } The removed element.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func remove(index: Int64): T

/**
 * Removes elements in the specified range from the observed array list.
 * Enable observers to receive updated information whenever state variables change.
 *
 * @param { Range<Int64> } range - The range of indices to remove.
 * @returns { Unit }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func remove(range: Range<Int64>): Unit

/**
 * Removes all elements that satisfy the provided predicate.
 *
 * @param { (T) -> Bool } predicate - A function that returns true for elements to be removed.
 * Enable observers to receive updated information whenever state variables change.
 * @returns { Unit }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public func removeIf(predicate: (T) -> Bool): Unit
}

/**
 * Defines the PersistentStorage interface.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
public class PersistentStorage <: Observer {
/**
 * Add property 'key' to AppStorage properties whose current value will be
 * persistent.
 * If AppStorage does not include this property it will be added and initializes
 * with given value
 *
 * @param { String } key - name of the property to persist
 * @param { T } defaultValue - default value for the property if not already present
 * @returns { Unit }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public static func persistProp<T>(key: String, defaultValue: T): Unit

/**
 * Persist given AppStorage properties with given names.
 * If a property does not exist in AppStorage, add it and initialize it with given value
 * works as persistProp for multiple properties.
 *
 * @param { Array<(String, T)> } props - array of property name-value pairs to persist
 * @returns { Unit }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public static func persistProps<T>(props: Array<(String, T)>): Unit

/**
 * Reverse of persistProp.
 *
 * @param { String } key - no longer persist the property named key
 * @returns { Unit }
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public static func deleteProp(key: String): Unit

/**
 * Return the array of all keys.
 *
 * @returns { Array<String> } the array of all keys
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.ArkUI.ArkUI.Full"
]
    public static func keys(): Array<String>
}