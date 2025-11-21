package std.regex

import std.collection.*
import std.sync.*

/**
 * @description Represents a position or range within an input string, typically used to mark
 *              the start and end indices of a regex match.
 */
@!APILevel[
    since: "22"
]
public struct Position {
    /**
     * @description The starting index of the position or range.
     */
    @!APILevel[
        since: "22"
    ]
    public let start: Int64
    /**
     * @description The ending index (exclusive) of the position or range.
     */
    @!APILevel[
        since: "22"
    ]
    public let end: Int64
}

/**
 * @description Holds the result of a regular expression match. Contains the
 *              original input string, the list of matched positions for the
 *              whole match and capture groups, and the total number of capture
 *              groups. Use member functions such as `matchString`,
 *              `matchPosition` and `groupCount` to access matched substrings,
 *              their positions, and group counts.
 */
@!APILevel[
    since: "22"
]
public struct MatchData {
    /**
     * @description Returns the matched string for the entire regular expression.
     * @returns The matched string.
     */
    @!APILevel[
        since: "22"
    ]
    public func matchString(): String

    /**
     * @description Returns the matched string for the specified group index.
     * @param group - The group index to retrieve the matched string for.
     * @returns The matched string for the group.
     * @throws IllegalArgumentException if the group is invalid.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func matchString(group: Int64): String

    /**
     * @description Returns the matched string for the specified group name.
     * @param group - The group name to retrieve the matched string for.
     * @returns The matched string for the group.
     * @throws IllegalArgumentException if the group name is invalid.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func matchString(group: String): String

    /**
     * @description Returns the position of the match for the entire regular expression.
     * @returns The position of the match.
     */
    @!APILevel[
        since: "22"
    ]
    public func matchPosition(): Position

    /**
     * @description Returns the position of the match for the specified group index.
     * @param group - The group index to retrieve the match position for.
     * @returns The position of the match for the group.
     * @throws IllegalArgumentException if the group is invalid.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func matchPosition(group: Int64): Position

    /**
     * @description Returns the position of the match for the specified group name.
     * @param group - The group name to retrieve the match position for.
     * @returns The position of the match for the group.
     * @throws IllegalArgumentException if the group name is invalid.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func matchPosition(group: String): Position

    /**
     * @description Returns the number of groups in the match.
     * @returns The number of groups.
     */
    @!APILevel[
        since: "22"
    ]
    public func groupNumber(): Int64

    /**
     * @description Returns the number of groups in the match.
     * @returns The number of groups.
     */
    @!APILevel[
        since: "22"
    ]
    public func groupCount(): Int64
}

/**
 * @description A helper class for performing incremental matching operations.
 *              Most functionality has been moved to `Regex`. This class remains for
 *              backwards compatibility.
 */
@!APILevel[
    since: "22"
]
public class Matcher {
    /**
     * @description Creates a new Matcher for the given pattern and input string.
     * @param regex - The compiled Regex to apply.
     * @param input - The input string to match against.
     * @throws RegexException if the regex is invalid or compilation failed.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public init(regex: Regex, input: String)
    
    /**
     * @description Attempts to match the entire input string against the pattern.
     * @returns Option containing MatchData when the whole input matches, or None otherwise.
     * @throws RegexException if memory allocation fails or match data creation fails.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func fullMatch(): Option<MatchData>
    
    /**
     * @description Attempts to match from the beginning of the input string.
     * @returns Option containing MatchData when a match starting at index 0 is found, or None.
     * @throws RegexException if memory allocation fails or match data creation fails.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func matchStart(): Option<MatchData>
    
    /**
     * @description Finds the next occurrence of the pattern in the input string.
     * @returns Option containing MatchData for the next match, or None if no more matches.
     */
    @!APILevel[
        since: "22"
    ]
    public func find(): Option<MatchData>
    
    /**
     * @description Finds the next occurrence of the pattern starting at the specified index.
     * @param index - The index in the input string to start searching from.
     * @returns Option containing MatchData for the next match, or None if no match is found.
     * @throws IndexOutOfBoundsException if index is less than 0 or index is greater than or equal to input.size.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func find(index: Int64): Option<MatchData>
    
    /**
     * @description Finds all non-overlapping occurrences of the pattern in the input string.
     * @returns Option containing an Array of MatchData for all matches, or None on error.
     */
    @!APILevel[
        since: "22"
    ]
    public func findAll(): Option<Array<MatchData>>
    
    /**
     * @description Returns the total number of matches for the pattern in the input string.
     * @returns The count of matches.
     * @throws RegexException on regex processing errors.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func allCount(): Int64
    
    /**
     * @description Replaces the current match with the provided replacement string.
     * @param replacement - The replacement string to use for the current match.
     * @returns The resulting string after replacement.
     * @throws RegexException on regex processing errors.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func replace(replacement: String): String
    
    /**
     * @description Replaces the match at the specified index with the provided replacement string.
     * @param replacement - The replacement string to use.
     * @param index - The match index to replace.
     * @returns The resulting string after replacement.
     * @throws RegexException on regex processing errors.
     * @throws IndexOutOfBoundsException if the match index is out of range.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func replace(replacement: String, index: Int64): String
    
    /**
     * @description Replaces the next match with the replacement string and returns the result.
     * @param replacement - The replacement string.
     * @returns The resulting string after replacement.
     * @throws RegexException on regex processing errors.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func replaceAll(replacement: String): String
    
    /**
     * @description Replaces matches up to the specified limit with the replacement string.
     * @param replacement - The replacement string.
     * @param limit - Maximum number of replacements to perform.
     * @returns The resulting string after replacements.
     * @throws RegexException on regex processing errors.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func replaceAll(replacement: String, limit: Int64): String
    
    /**
     * @description Splits the input string around matches of this pattern.
     * @returns An array of substrings computed by splitting the input on the pattern.
     * @throws RegexException on regex processing errors.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func split(): Array<String>
    
    /**
     * @description Splits the input string around matches of this pattern up to a limit.
     * @param limit - The maximum number of elements in the returned array.
     * @returns An array of substrings computed by splitting the input on the pattern.
     * @throws RegexException on regex processing errors.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func split(limit: Int64): Array<String>
    
    /**
     * @description Sets the matching region (begin and end) for subsequent match operations.
     * @param beginIndex - The start index of the region.
     * @param endIndex - The end index of the region.
     * @returns The matcher instance for chaining.
     * @throws IndexOutOfBoundsException if indices are out of range.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func setRegion(beginIndex: Int64, endIndex: Int64): Matcher
    
    /**
     * @description Returns the current region used by this matcher.
     * @returns A Position representing the current matching region.
     */
    @!APILevel[
        since: "22"
    ]
    public func region(): Position
    
    /**
     * @description Resets the matching region to the default (whole input).
     * @returns The matcher instance.
     */
    @!APILevel[
        since: "22"
    ]
    public func resetRegion(): Matcher
    
    /**
     * @description Resets the matcher to operate on a new input string.
     * @param input - The new input string for matching.
     * @returns The matcher instance.
     * @throws RegexException on regex processing errors.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func resetString(input: String): Matcher
    
    /**
     * @description Returns the input string currently associated with this matcher.
     * @returns The input string.
     */
    @!APILevel[
        since: "22"
    ]
    public func getString(): String
}




/**
 * @description Represents a compiled regular expression. Use this class to perform
 *              match, search, replace, and split operations on input strings.
 */
@!APILevel[
    since: "22"
]
public class Regex {
    /**
     * @description Compiles a regular expression from the given pattern and flags.
     * @param pattern - The regex pattern string.
     * @param flags - Array of RegexFlag to control matching behavior (ignore case, multiline, etc.).
     * @throws RegexException if compilation fails.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public init(pattern: String, flags: Array<RegexFlag>)
    
    /**
     * @description Initialize a Regex with a RegexOption. Use the flags-based ctor.
     * @param pattern - The regex pattern string.
     * @param option - Option builder.
     * @throws RegexException if compilation fails.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public init(pattern: String, option: RegexOption)
    
    /**
     * @description Create a Matcher for the given input string. Prefer using Regex.find/findAll.
     * @param input - The input string to match against.
     * @returns A Matcher instance for incremental matching operations.
     * @throws RegexException on regex processing errors.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func matcher(input: String): Matcher
    
    /**
     * @description Tests whether the entire input string matches this pattern.
     * @param input - The input string to test.
     * @returns True if the entire input matches the pattern, false otherwise.
     * @throws RegexException on regex processing errors.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func matches(input: String): Bool
    
    /**
     * @description Returns a map of named capturing groups to their numeric indices.
     * @returns Map where key is group name and value is the group index.
     * @throws RegexException on regex processing errors.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func getNamedGroups(): Map<String, Int64>
    
    /**
     * @description Finds the first match of the pattern in the input string.
     * @param input - The input string to search.
     * @param group - If true, include group captures in MatchData results.
     * @returns Option containing MatchData for the first match, or None if none found.
     * @throws RegexException if memory allocation fails or match data creation fails.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func find(input: String, group!: Bool = false): Option<MatchData>
    
    /**
     * @description Finds all non-overlapping matches in the input string.
     * @param input - The input string to search.
     * @param group - If true, include group captures in MatchData results.
     * @returns An array of MatchData for each match.
     * @throws RegexException on regex processing errors.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func findAll(input: String, group!: Bool = false): Array<MatchData>
    
    /**
     * @description Lazily finds matches in the input string, returning an iterator of MatchData.
     * @param input - The input string to search.
     * @param group - If true, include group captures in MatchData results.
     * @returns An iterator that yields MatchData objects for each match.
     * @throws RegexException on regex processing errors.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func lazyFindAll(input: String, group!: Bool = false): Iterator<MatchData>
    
    /**
     * @description Replaces the first match of the pattern in the input with the replacement string.
     * @param input - The input string to process.
     * @param replacement - The replacement string.
     * @returns The resulting string after replacement.
     * @throws RegexException on regex processing errors.
     * @throws IndexOutOfBoundsException if the match index is out of range.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func replace(input: String, replacement: String): String
    
    /**
     * @description Replaces the match at the specified index in the input with the replacement string.
     * @param input - The input string to process.
     * @param replacement - The replacement string.
     * @param index - The match index to replace.
     * @returns The resulting string after replacement.
     * @throws RegexException on regex processing errors.
     * @throws IndexOutOfBoundsException if the match index is out of range.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func replace(input: String, replacement: String, index: Int64): String
    
    /**
     * @description Replaces all matches in the input with the replacement string.
     * @param input - The input string to process.
     * @param replacement - The replacement string.
     * @returns The resulting string after all replacements.
     * @throws RegexException on regex processing errors.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func replaceAll(input: String, replacement: String): String
    
    /**
     * @description Replaces up to `limit` matches in the input with the replacement string.
     * @param input - The input string to process.
     * @param replacement - The replacement string.
     * @param limit - Maximum number of replacements to perform.
     * @returns The resulting string after replacements.
     * @throws RegexException on regex processing errors.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func replaceAll(input: String, replacement: String, limit: Int64): String
    
    /**
     * @description Splits the input string around matches of this pattern.
     * @param input - The input string to split.
     * @returns An array of substrings computed by splitting the input on the pattern.
     * @throws RegexException on regex processing errors.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func split(input: String): Array<String>
    
    /**
     * @description Splits the input string around matches of this pattern up to a limit.
     * @param input - The input string to split.
     * @param limit - The maximum number of elements in the returned array.
     * @returns An array of substrings computed by splitting the input on the pattern.
     * @throws RegexException on regex processing errors.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func split(input: String, limit: Int64): Array<String>
    
    /**
     * @description Returns the string representation of the compiled regex (the original pattern).
     * @returns The original pattern string used to compile this Regex.
     */
    @!APILevel[
        since: "22"
    ]
    public func string(): String
}

/**
 * @description Exception type thrown for regex compilation or evaluation errors.
 */
@!APILevel[
    since: "22"
]
public class RegexException <: Exception {
    /**
     * @description Create a RegexException with no message.
     */
    @!APILevel[
        since: "22"
    ]
    public init()
    
    /**
     * @description Create a RegexException with an error message.
     * @param message - The error message describing the failure.
     */
    @!APILevel[
        since: "22"
    ]
    public init(message: String)
}

/**
 * @description Flags that alter regex matching behavior.
 */
@!APILevel[
    since: "22"
]
public enum RegexFlag {
    /**
     * @description Enable case-insensitive matching.
     */
    @!APILevel[
        since: "22"
    ]
    IgnoreCase |
    /**
     * @description Enable multiline mode where ^ and $ match line boundaries.
     */
    @!APILevel[
        since: "22"
    ]
    MultiLine |
    /**
     * @description Enable Unicode-aware matching.
     */
    @!APILevel[
        since: "22"
    ]
    Unicode
}

/**
 * @description Builder for regex matching options
 */
@!APILevel[
    since: "22"
]
public class RegexOption <: ToString {
    /**
     * @description Create a new RegexOption builder
     */
    @!APILevel[
        since: "22"
    ]
    public init()
    
    /**
     * @description Enable case-insensitive option on this builder.
     * @returns This RegexOption for chaining.
     */
    @!APILevel[
        since: "22"
    ]
    public func ignoreCase(): RegexOption
    
    /**
     * @description Enable multiline option on this builder.
     * @returns This RegexOption for chaining.
     */
    @!APILevel[
        since: "22"
    ]
    public func multiLine(): RegexOption
    
    /**
     * @description Returns the string representation of this option builder.
     * @returns The option string.
     */
    @!APILevel[
        since: "22"
    ]
    public func toString(): String
}

