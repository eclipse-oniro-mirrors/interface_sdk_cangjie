package std.unittest.diff
import std.unittest.common.PrettyPrinter

import std.collection.*
import std.unittest.common.*
import std.collection.ArrayList
import std.convert.Formattable
import std.math.ceil

/**
 * @description An interface for types that can provide a custom "diff" representation for assertions.
 * This is used to generate detailed, readable output when an assertion comparing two objects fails.
 */
@!APILevel[
    since: "22"
]
public interface AssertPrintable<T> {
    /**
     * @description Indicates whether the type contains nested structures that might have their own diffs.
     * If `true`, the diffing mechanism may recurse into the object's fields.
     */
    @!APILevel[
        since: "22"
    ]
    prop hasNestedDiff: Bool
    
    /**
     * @description Pretty-prints a comparison between two instances of the type, highlighting differences.
     * @param pp The `PrettyPrinter` to use for generating the output.
     * @param that The other instance to compare against this one.
     * @param thisPrefix A prefix string for lines corresponding to 'this' instance, typically indicating additions or common lines.
     * @param otherPrefix A prefix string for lines corresponding to the 'that' instance, typically indicating removals.
     * @param level The current nesting level for indentation, used for structured output.
     * @returns The `PrettyPrinter` instance for chaining.
     */
    @!APILevel[
        since: "22"
    ]
    func pprintForAssertion(
        pp: PrettyPrinter, that: T, thisPrefix: String, thatPrefix: String, level: Int64
    ): PrettyPrinter
}

extend Float16 <: AssertPrintable<Float16> {
    /**
     * @description Indicates whether the type contains nested structures for diffing.
     */
    @!APILevel[
        since: "22"
    ]
    public prop hasNestedDiff: Bool
    
    /**
     * @description Pretty-prints a diff between two Float16 values for assertion output.
     * @param pp The `PrettyPrinter` to use for generating the output.
     * @param right The other instance to compare against this one.
     * @param leftPrefix A prefix string for lines corresponding to 'this' instance, typically indicating additions or common lines.
     * @param rightPrefix A prefix string for lines corresponding to the 'that' instance, typically indicating removals.
     * @param level The current nesting level for indentation, used for structured output.
     * @returns The `PrettyPrinter` instance for chaining.
     */
    @!APILevel[
        since: "22"
    ]
    public func pprintForAssertion(pp: PrettyPrinter, right: Float16, leftPrefix: String, rightPrefix: String,
        level: Int64): PrettyPrinter
}

extend Float32 <: AssertPrintable<Float32> {
    /**
     * @description Indicates whether the type contains nested structures for diffing.
     */
    @!APILevel[
        since: "22"
    ]
    public prop hasNestedDiff: Bool
    
    /**
     * @description Pretty-prints a diff between two Float32 values for assertion output.
     * @param pp The `PrettyPrinter` to use for generating the output.
     * @param right The other instance to compare against this one.
     * @param leftPrefix A prefix string for lines corresponding to 'this' instance, typically indicating additions or common lines.
     * @param rightPrefix A prefix string for lines corresponding to the 'that' instance, typically indicating removals.
     * @param level The current nesting level for indentation, used for structured output.
     * @returns The `PrettyPrinter` instance for chaining.
     */
    @!APILevel[
        since: "22"
    ]
    public func pprintForAssertion(pp: PrettyPrinter, right: Float32, leftPrefix: String, rightPrefix: String,
        level: Int64): PrettyPrinter
}

extend Float64 <: AssertPrintable<Float64> {
    /**
     * @description Indicates whether the type contains nested structures for diffing.
     */
    @!APILevel[
        since: "22"
    ]
    public prop hasNestedDiff: Bool
    
    /**
     * @description Pretty-prints a diff between two Float64 values for assertion output.
     * @param pp The `PrettyPrinter` to use for generating the output.
     * @param right The other instance to compare against this one.
     * @param leftPrefix A prefix string for lines corresponding to 'this' instance, typically indicating additions or common lines.
     * @param rightPrefix A prefix string for lines corresponding to the 'that' instance, typically indicating removals.
     * @param level The current nesting level for indentation, used for structured output.
     * @returns The `PrettyPrinter` instance for chaining.
     */
    @!APILevel[
        since: "22"
    ]
    public func pprintForAssertion(pp: PrettyPrinter, right: Float64, leftPrefix: String, rightPrefix: String,
        level: Int64): PrettyPrinter
}

extend<T> Option<T> <: AssertPrintable<Option<T>> where T <: Equatable<T> {
    /**
     * @description Indicates whether the type contains nested structures for diffing.
     */
    @!APILevel[
        since: "22"
    ]
    public prop hasNestedDiff: Bool
    
    /**
     * @description Pretty-prints a diff between two Option<T> values for assertion output.
     * @param pp The `PrettyPrinter` to use for generating the output.
     * @param right The other instance to compare against this one.
     * @param leftPrefix A prefix string for lines corresponding to 'this' instance, typically indicating additions or common lines.
     * @param rightPrefix A prefix string for lines corresponding to the 'that' instance, typically indicating removals.
     * @param level The current nesting level for indentation, used for structured output.
     * @returns The `PrettyPrinter` instance for chaining.
     */
    @!APILevel[
        since: "22"
    ]
    public func pprintForAssertion(pp: PrettyPrinter, right: Option<T>, leftPrefix: String, rightPrefix: String,
        level: Int64): PrettyPrinter
}

extend String <: AssertPrintable<String> {
    /**
     * @description Indicates whether the type contains nested structures for diffing.
     */
    @!APILevel[
        since: "22"
    ]
    public prop hasNestedDiff: Bool
    
    /**
     * @description Pretty-prints a diff between two String values for assertion output.
     * @param pp The `PrettyPrinter` to use for generating the output.
     * @param right The other instance to compare against this one.
     * @param leftPrefix A prefix string for lines corresponding to 'this' instance, typically indicating additions or common lines.
     * @param rightPrefix A prefix string for lines corresponding to the 'that' instance, typically indicating removals.
     * @param level The current nesting level for indentation, used for structured output.
     * @returns The `PrettyPrinter` instance for chaining.
     */
    @!APILevel[
        since: "22"
    ]
    public func pprintForAssertion(pp: PrettyPrinter, right: String, leftPrefix: String, rightPrefix: String,
        level: Int64): PrettyPrinter
}
