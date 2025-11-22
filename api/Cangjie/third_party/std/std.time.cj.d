
package std.time

import std.convert.*
import std.collection.ArrayList

/**
 * @description A DateTime represents an instance in time with nanosecond precision, associated with a time zone
 */
@!APILevel[
    since: "22"
]
public struct DateTime <: ToString & Hashable & Comparable<DateTime> & Formattable & Parsable<DateTime> {
    /**
     * @description The Unix epoch time (January 1, 1970, 00:00:00 UTC)
     * @returns the DateTime representing Unix epoch time
     */
    @!APILevel[
        since: "22"
    ]
    public static prop UnixEpoch: DateTime
    
    /**
     * @description The year component of the datetime
     * @returns the year value, ranging from -999,999,999 to 999,999,999
     */
    @!APILevel[
        since: "22"
    ]
    public prop year: Int64
    
    /**
     * @description The month component of the datetime as a Month enum
     * @returns the Month enum value (January through December)
     */
    @!APILevel[
        since: "22"
    ]
    public prop month: Month
    
    /**
     * @description The month component of the datetime as an integer value
     * @returns the month value, ranging from 1 to 12
     */
    @!APILevel[
        since: "22"
    ]
    public prop monthValue: Int64
    
    /**
     * @description The day of month component of the datetime
     * @returns the day of month value, ranging from 1 to 31 depending on the month and year
     */
    @!APILevel[
        since: "22"
    ]
    public prop dayOfMonth: Int64
    
    /**
     * @description The day of week component of the datetime
     * @returns the DayOfWeek enum value (Sunday through Saturday)
     */
    @!APILevel[
        since: "22"
    ]
    public prop dayOfWeek: DayOfWeek
    
    /**
     * @description The day of year component of the datetime
     * @returns the day of year value, ranging from 1 to 365 in non-leap years and 1 to 366 in leap years
     */
    @!APILevel[
        since: "22"
    ]
    public prop dayOfYear: Int64
    
    /**
     * @description The hour component of the datetime
     * @returns the hour value, ranging from 0 to 23
     */
    @!APILevel[
        since: "22"
    ]
    public prop hour: Int64
    
    /**
     * @description The minute component of the datetime
     * @returns the minute value, ranging from 0 to 59
     */
    @!APILevel[
        since: "22"
    ]
    public prop minute: Int64
    
    /**
     * @description The second component of the datetime
     * @returns the second value, ranging from 0 to 59
     */
    @!APILevel[
        since: "22"
    ]
    public prop second: Int64
    
    /**
     * @description The nanosecond component of the datetime
     * @returns the nanosecond value, ranging from 0 to 999,999,999
     */
    @!APILevel[
        since: "22"
    ]
    public prop nanosecond: Int64
    
    /**
     * @description The ISO-8601 week-based year and week number
     * @returns a tuple containing (year, week) according to ISO-8601 standard
     */
    @!APILevel[
        since: "22"
    ]
    public prop isoWeek: (Int64, Int64)
    
    /**
     * @description The time zone associated with this datetime
     * @returns the TimeZone object representing the time zone
     */
    @!APILevel[
        since: "22"
    ]
    public prop zone: TimeZone
    
    /**
     * @description The time zone identifier string
     * @returns the string identifier of the time zone (e.g., "UTC", "America/New_York")
     */
    @!APILevel[
        since: "22"
    ]
    public prop zoneId: String
    
    /**
     * @description The time zone offset from UTC as a Duration
     * @returns the Duration representing the offset from UTC (positive for east, negative for west)
     */
    @!APILevel[
        since: "22"
    ]
    public prop zoneOffset: Duration
    
    /**
     * @description The date components as a tuple of year, month, and day
     * @returns a tuple containing (year, month, day) where month is a Month enum
     */
    @!APILevel[
        since: "22"
    ]
    public prop date: (Int64, Month, Int64)
    
    /**
     * @description The time components as a tuple of hour, minute, and second
     * @returns a tuple containing (hour, minute, second) values
     */
    @!APILevel[
        since: "22"
    ]
    public prop time: (Int64, Int64, Int64)
    
    /**
     * @description Gets the current DateTime in the specified time zone
     * @param timeZone the time zone to use (defaults to local time zone)
     * @returns the current DateTime in the specified time zone
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public static func now(timeZone!: TimeZone = TimeZone.Local): DateTime
    
    /**
     * @description Gets the current DateTime in UTC time zone
     * @returns the current DateTime in UTC
     */
    @!APILevel[
        since: "22"
    ]
    public static func nowUTC(): DateTime
    
    /**
     * @description Creates a DateTime from a Unix timestamp Duration
     * @param d the Duration since Unix epoch (January 1, 1970, 00:00:00 UTC)
     * @returns the DateTime corresponding to the specified Unix timestamp
     * @throws ArithmeticException when the result exceeds the representable range of DateTime
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public static func fromUnixTimeStamp(d: Duration): DateTime
    
    /**
     * @description Creates a DateTime from Unix epoch seconds and nanoseconds
     * @param second seconds since Unix epoch
     * @param nanosecond nanoseconds component (0-999,999,999)
     * @returns the DateTime corresponding to the specified epoch time
     * @throws IllegalArgumentException when parameters are out of valid range
     * @throws ArithmeticException when the result exceeds the representable range of DateTime
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public static func ofEpoch(second!: Int64, nanosecond!: Int64): DateTime
    
    /**
     * @description Creates a DateTime with specified date and time components using integer month
     * @param year the year value
     * @param month the month value (1-12)
     * @param dayOfMonth the day of month (1-31)
     * @param hour the hour value (0-23, defaults to 0)
     * @param minute the minute value (0-59, defaults to 0)
     * @param second the second value (0-59, defaults to 0)
     * @param nanosecond the nanosecond value (0-999,999,999, defaults to 0)
     * @param timeZone the time zone (defaults to local time zone)
     * @returns the DateTime with the specified components
     * @throws IllegalArgumentException when parameters are out of valid range
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public static func of(
        year!: Int64,
        month!: Int64,
        dayOfMonth!: Int64,
        hour!: Int64 = 0,
        minute!: Int64 = 0,
        second!: Int64 = 0,
        nanosecond!: Int64 = 0,
        timeZone!: TimeZone = TimeZone.Local
    ): DateTime
    
    /**
     * @description Creates a DateTime with specified date and time components using Month enum
     * @param year the year value
     * @param month the Month enum value
     * @param dayOfMonth the day of month (1-31)
     * @param hour the hour value (0-23, defaults to 0)
     * @param minute the minute value (0-59, defaults to 0)
     * @param second the second value (0-59, defaults to 0)
     * @param nanosecond the nanosecond value (0-999,999,999, defaults to 0)
     * @param timeZone the time zone (defaults to local time zone)
     * @returns the DateTime with the specified components
     * @throws IllegalArgumentException when parameters are out of valid range
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public static func of(
        year!: Int64,
        month!: Month,
        dayOfMonth!: Int64,
        hour!: Int64 = 0,
        minute!: Int64 = 0,
        second!: Int64 = 0,
        nanosecond!: Int64 = 0,
        timeZone!: TimeZone = TimeZone.Local
    ): DateTime
    
    /**
     * @description Creates a UTC DateTime with specified date and time components using integer month
     * @param year the year value
     * @param month the month value (1-12)
     * @param dayOfMonth the day of month (1-31)
     * @param hour the hour value (0-23, defaults to 0)
     * @param minute the minute value (0-59, defaults to 0)
     * @param second the second value (0-59, defaults to 0)
     * @param nanosecond the nanosecond value (0-999,999,999, defaults to 0)
     * @returns the UTC DateTime with the specified components
     * @throws IllegalArgumentException when parameters are out of valid range
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public static func ofUTC(
        year!: Int64,
        month!: Int64,
        dayOfMonth!: Int64,
        hour!: Int64 = 0,
        minute!: Int64 = 0,
        second!: Int64 = 0,
        nanosecond!: Int64 = 0
    ): DateTime
    
    /**
     * @description Creates a UTC DateTime with specified date and time components using Month enum
     * @param year the year value
     * @param month the Month enum value
     * @param dayOfMonth the day of month (1-31)
     * @param hour the hour value (0-23, defaults to 0)
     * @param minute the minute value (0-59, defaults to 0)
     * @param second the second value (0-59, defaults to 0)
     * @param nanosecond the nanosecond value (0-999,999,999, defaults to 0)
     * @returns the UTC DateTime with the specified components
     * @throws IllegalArgumentException when parameters are out of valid range
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public static func ofUTC(
        year!: Int64,
        month!: Month,
        dayOfMonth!: Int64,
        hour!: Int64 = 0,
        minute!: Int64 = 0,
        second!: Int64 = 0,
        nanosecond!: Int64 = 0
    ): DateTime
    
    /**
     * @description Parses a DateTime from a string using ISO 8601 format
     * @param str the string to parse in ISO 8601 format
     * @returns the parsed DateTime
     * @throws TimeParseException when the string cannot be parsed as a DateTime
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public static func parse(str: String): DateTime
    
    /**
     * @description Attempts to parse a DateTime from a string, returning None if parsing fails
     * @param str the string to parse in ISO 8601 format
     * @returns Some(DateTime) if parsing succeeds, None if parsing fails
     * @throws TimeParseException if the parsing is incorrect.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public static func tryParse(str: String): Option<DateTime>
    
    /**
     * @description Parses a DateTime from a string using a custom format
     * @param str the string to parse
     * @param format the format string specifying the expected format
     * @returns the parsed DateTime
     * @throws TimeParseException when the string cannot be parsed as a DateTime
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public static func parse(str: String, format: String): DateTime
    
    /**
     * @description Parses a DateTime from a string using a DateTimeFormat
     * @param str the string to parse
     * @param format the DateTimeFormat object specifying the expected format
     * @returns the parsed DateTime
     * @throws TimeParseException when the string cannot be parsed as a DateTime
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public static func parse(str: String, format: DateTimeFormat): DateTime
    
    /**
     * @description Converts this DateTime to UTC time zone
     * @returns a new DateTime in UTC time zone
     * @throws ArithmeticException if the result of year in UTC is outside the range [-999,999,999, 999,999,999].
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func inUTC(): DateTime
    
    /**
     * @description Converts this DateTime to local time zone
     * @returns a new DateTime in local time zone
     * @throws ArithmeticException if the result of year in Local is outside the range [-999,999,999, 999,999,999].
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func inLocal(): DateTime
    
    /**
     * @description Converts this DateTime to the specified time zone
     * @param timeZone the target time zone
     * @returns a new DateTime in the specified time zone
     * @throws ArithmeticException when the result exceeds the representable range of DateTime
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func inTimeZone(timeZone: TimeZone): DateTime
    
    /**
     * @description Converts this DateTime to Unix timestamp as Duration
     * @returns the Duration since Unix epoch (January 1, 1970, 00:00:00 UTC)
     */
    @!APILevel[
        since: "22"
    ]
    public func toUnixTimeStamp(): Duration
    
    /**
     * @description Converts this DateTime to its string representation in ISO 8601 format
     * @returns the string representation of this DateTime
     */
    @!APILevel[
        since: "22"
    ]
    public func toString(): String
    
    /**
     * @description Formats this DateTime using a custom format string
     * @param fmt the format string
     * @returns the formatted string representation of this DateTime
     * @throws IllegalArgumentException when fmt are invalid
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func format(fmt: String): String
    
    /**
     * @description Formats this DateTime using a DateTimeFormat
     * @param format the DateTimeFormat object
     * @returns the formatted string representation of this DateTime
     * @throws IllegalArgumentException when datetime components are invalid
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func toString(format: DateTimeFormat): String
    
    /**
     * @description Calculates the hash code for this DateTime
     * @returns the hash code value for this DateTime
     */
    @!APILevel[
        since: "22"
    ]
    public func hashCode(): Int64
    
    /**
     * @description Adds the specified number of years to this DateTime
     * @param n the number of years to add (can be negative to subtract)
     * @returns a new DateTime with the specified years added
     * @throws ArithmeticException when the result exceeds the representable range of DateTime
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func addYears(n: Int64): DateTime
    
    /**
     * @description Adds the specified number of months to this DateTime
     * @param n the number of months to add (can be negative to subtract)
     * @returns a new DateTime with the specified months added
     * @throws ArithmeticException when the result exceeds the representable range of DateTime
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func addMonths(n: Int64): DateTime
    
    /**
     * @description Adds the specified number of weeks to this DateTime
     * @param n the number of weeks to add (can be negative to subtract)
     * @returns a new DateTime with the specified weeks added
     * @throws ArithmeticException when the result exceeds the representable range of DateTime
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func addWeeks(n: Int64): DateTime
    
    /**
     * @description Adds the specified number of days to this DateTime
     * @param n the number of days to add (can be negative to subtract)
     * @returns a new DateTime with the specified days added
     * @throws ArithmeticException when the result exceeds the representable range of DateTime
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func addDays(n: Int64): DateTime
    
    /**
     * @description Adds the specified number of hours to this DateTime
     * @param n the number of hours to add (can be negative to subtract)
     * @returns a new DateTime with the specified hours added
     * @throws ArithmeticException when the result exceeds the representable range of DateTime
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func addHours(n: Int64): DateTime
    
    /**
     * @description Adds the specified number of minutes to this DateTime
     * @param n the number of minutes to add (can be negative to subtract)
     * @returns a new DateTime with the specified minutes added
     * @throws ArithmeticException when the result exceeds the representable range of DateTime
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func addMinutes(n: Int64): DateTime
    
    /**
     * @description Adds the specified number of seconds to this DateTime
     * @param n the number of seconds to add (can be negative to subtract)
     * @returns a new DateTime with the specified seconds added
     * @throws ArithmeticException when the result exceeds the representable range of DateTime
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func addSeconds(n: Int64): DateTime
    
    /**
     * @description Adds the specified number of nanoseconds to this DateTime
     * @param n the number of nanoseconds to add (can be negative to subtract)
     * @returns a new DateTime with the specified nanoseconds added
     * @throws ArithmeticException when the result exceeds the representable range of DateTime
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func addNanoseconds(n: Int64): DateTime
    
    /**
     * @description Adds a Duration to this DateTime
     * @param r the Duration to add
     * @returns a new DateTime with the Duration added
     * @throws ArithmeticException when the result exceeds the representable range of DateTime
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public operator func +(r: Duration): DateTime
    
    /**
     * @description Subtracts a Duration from this DateTime
     * @param r the Duration to subtract
     * @returns a new DateTime with the Duration subtracted
     * @throws ArithmeticException when the result exceeds the representable range of DateTime
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public operator func -(r: Duration): DateTime
    
    /**
     * @description Subtracts another DateTime from this DateTime to get the Duration difference
     * @param r the DateTime to subtract
     * @returns the Duration difference between this DateTime and the other DateTime
     */
    @!APILevel[
        since: "22"
    ]
    public operator func -(r: DateTime): Duration
    
    /**
     * @description Checks if this DateTime is equal to another DateTime
     * @param r the DateTime to compare with
     * @returns true if both represent the same moment in time, false otherwise
     */
    @!APILevel[
        since: "22"
    ]
    public operator func ==(r: DateTime): Bool
    
    /**
     * @description Checks if this DateTime is not equal to another DateTime
     * @param r the DateTime to compare with
     * @returns true if they represent different moments in time, false otherwise
     */
    @!APILevel[
        since: "22"
    ]
    public operator func !=(r: DateTime): Bool
    
    /**
     * @description Checks if this DateTime is greater than or equal to another DateTime
     * @param r the DateTime to compare with
     * @returns true if this DateTime is later than or equal to the other DateTime, false otherwise
     */
    @!APILevel[
        since: "22"
    ]
    public operator func >=(r: DateTime): Bool
    
    /**
     * @description Checks if this DateTime is greater than another DateTime
     * @param r the DateTime to compare with
     * @returns true if this DateTime is later than the other DateTime, false otherwise
     */
    @!APILevel[
        since: "22"
    ]
    public operator func >(r: DateTime): Bool
    
    /**
     * @description Checks if this DateTime is less than or equal to another DateTime
     * @param r the DateTime to compare with
     * @returns true if this DateTime is earlier than or equal to the other DateTime, false otherwise
     */
    @!APILevel[
        since: "22"
    ]
    public operator func <=(r: DateTime): Bool
    
    /**
     * @description Checks if this DateTime is less than another DateTime
     * @param r the DateTime to compare with
     * @returns true if this DateTime is earlier than the other DateTime, false otherwise
     */
    @!APILevel[
        since: "22"
    ]
    public operator func <(r: DateTime): Bool
    
    /**
     * @description Compares this DateTime with another DateTime
     * @param other the DateTime to compare with
     * @returns Ordering.LT if this is earlier, Ordering.GT if this is later, Ordering.EQ if equal
     */
    @!APILevel[
        since: "22"
    ]
    public func compare(other: DateTime): Ordering
}

/**
 * @description Exception thrown when datetime parsing fails
 */
@!APILevel[
    since: "22"
]
public class TimeParseException <: Exception {
    /**
     * @description Creates a new TimeParseException with no message
     */
    @!APILevel[
        since: "22"
    ]
    public init()
    
    /**
     * @description Creates a new TimeParseException with the specified error message
     * @param message the error message describing the parsing failure
     */
    @!APILevel[
        since: "22"
    ]
    public init(message: String)
}

/**
 * @description A class providing predefined date-time format patterns and formatting capabilities
 */
@!APILevel[
    since: "22"
]
public class DateTimeFormat {
    /**
     * @description RFC 1123 date-time format pattern
     * @returns the RFC 1123 format string
     */
    @!APILevel[
        since: "22"
    ]
    public static const RFC1123: String = "www, dd MMM yyyy HH:mm:ss z"
    
    /**
     * @description RFC 3339 date-time format pattern (ISO 8601 profile)
     * @returns the RFC 3339 format string
     */
    @!APILevel[
        since: "22"
    ]
    public static const RFC3339: String = "yyyy-MM-ddTHH:mm:ssOOOO"
    
    /**
     * @description RFC 822 date-time format pattern
     * @returns the RFC 822 format string
     */
    @!APILevel[
        since: "22"
    ]
    public static const RFC822: String = "ww dd MMM yy HH:mm:ss z"
    
    /**
     * @description RFC 850 date-time format pattern
     * @returns the RFC 850 format string
     */
    @!APILevel[
        since: "22"
    ]
    public static const RFC850: String = "wwww, dd-MMM-yy HH:mm:ss z"
    
    /**
     * @description Creates a DateTimeFormat from a format string
     * @param format the format string
     * @returns a DateTimeFormat object
     * @throws IllegalArgumentException when the format string is invalid
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public static func of(format: String): DateTimeFormat
    
    /**
     * @description The format string property
     * @returns the format string
     */
    @!APILevel[
        since: "22"
    ]
    public prop format: String
}

/**
 * @description Enumeration representing days of the week from Sunday to Saturday
 */
@!APILevel[
    since: "22"
]
public enum DayOfWeek <: ToString & Equatable<DayOfWeek> {
    /**
     * @description Sunday - the first day of the week
     */
    @!APILevel[
        since: "22"
    ]
    Sunday |
    /**
     * @description Monday - the second day of the week
     */
    @!APILevel[
        since: "22"
    ]
    Monday |
    /**
     * @description Tuesday - the third day of the week
     */
    @!APILevel[
        since: "22"
    ]
    Tuesday |
    /**
     * @description Wednesday - the fourth day of the week
     */
    @!APILevel[
        since: "22"
    ]
    Wednesday |
    /**
     * @description Thursday - the fifth day of the week
     */
    @!APILevel[
        since: "22"
    ]
    Thursday |
    /**
     * @description Friday - the sixth day of the week
     */
    @!APILevel[
        since: "22"
    ]
    Friday |
    /**
     * @description Saturday - the seventh day of the week
     */
    @!APILevel[
        since: "22"
    ]
    Saturday
    /**
     * @description Creates a DayOfWeek from an integer value
     * @param dayOfWeek the integer value representing a day of week (0=Sunday, 1=Monday, ..., 6=Saturday)
     * @returns the corresponding DayOfWeek enum value
     * @throws IllegalArgumentException when dayOfWeek is not in the range 0-6
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public static func of(dayOfWeek: Int64): DayOfWeek
    
    /**
     * @description Returns the integer value of this DayOfWeek
     * @returns the integer value (0=Sunday, 1=Monday, ..., 6=Saturday)
     */
    @!APILevel[
        since: "22"
    ]
    public func value(): Int64
    
    /**
     * @description Returns the integer value of this DayOfWeek
     * @returns the integer value (0=Sunday, 1=Monday, ..., 6=Saturday)
     */
    @!APILevel[
        since: "22"
    ]
    public func toInteger(): Int64
    
    /**
     * @description Returns the string representation of this DayOfWeek
     * @returns the full name of the day (e.g., "Sunday", "Monday")
     */
    @!APILevel[
        since: "22"
    ]
    public func toString(): String
    
    /**
     * @description Checks if this DayOfWeek is equal to another DayOfWeek
     * @param r the DayOfWeek to compare with
     * @returns true if both represent the same day of week, false otherwise
     */
    @!APILevel[
        since: "22"
    ]
    public operator func ==(r: DayOfWeek): Bool
    
    /**
     * @description Checks if this DayOfWeek is not equal to another DayOfWeek
     * @param r the DayOfWeek to compare with
     * @returns true if they represent different days of week, false otherwise
     */
    @!APILevel[
        since: "22"
    ]
    public operator func !=(r: DayOfWeek): Bool
    
    /**
     * @description Adds the specified number of days to this DayOfWeek
     * @param n the number of days to add (can be negative)
     * @returns the resulting DayOfWeek after adding n days
     */
    @!APILevel[
        since: "22"
    ]
    public operator func +(n: Int64): DayOfWeek
    
    /**
     * @description Subtracts the specified number of days from this DayOfWeek
     * @param n the number of days to subtract (can be negative)
     * @returns the resulting DayOfWeek after subtracting n days
     */
    @!APILevel[
        since: "22"
    ]
    public operator func -(n: Int64): DayOfWeek
}

/**
 * @description Enumeration representing months of the year from January to December
 */
@!APILevel[
    since: "22"
]
public enum Month <: ToString & Equatable<Month> {
    /**
     * @description January - the first month of the year
     */
    @!APILevel[
        since: "22"
    ]
    January |
    /**
     * @description February - the second month of the year
     */
    @!APILevel[
        since: "22"
    ]
    February |
    /**
     * @description March - the third month of the year
     */
    @!APILevel[
        since: "22"
    ]
    March |
    /**
     * @description April - the fourth month of the year
     */
    @!APILevel[
        since: "22"
    ]
    April |
    /**
     * @description May - the fifth month of the year
     */
    @!APILevel[
        since: "22"
    ]
    May |
    /**
     * @description June - the sixth month of the year
     */
    @!APILevel[
        since: "22"
    ]
    June |
    /**
     * @description July - the seventh month of the year
     */
    @!APILevel[
        since: "22"
    ]
    July |
    /**
     * @description August - the eighth month of the year
     */
    @!APILevel[
        since: "22"
    ]
    August |
    /**
     * @description September - the ninth month of the year
     */
    @!APILevel[
        since: "22"
    ]
    September |
    /**
     * @description October - the tenth month of the year
     */
    @!APILevel[
        since: "22"
    ]
    October |
    /**
     * @description November - the eleventh month of the year
     */
    @!APILevel[
        since: "22"
    ]
    November |
    /**
     * @description December - the twelfth month of the year
     */
    @!APILevel[
        since: "22"
    ]
    December
    /**
     * @description Creates a Month from an integer value
     * @param mon the integer value representing a month (1=January, 2=February, ..., 12=December)
     * @returns the corresponding Month enum value
     * @throws IllegalArgumentException when mon is not in the range 1-12
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public static func of(mon: Int64): Month
    
    /**
     * @description Returns the integer value of this Month
     * @returns the integer value (1=January, 2=February, ..., 12=December)
     */
    @!APILevel[
        since: "22"
    ]
    public func value(): Int64
    
    /**
     * @description Returns the integer value of this Month
     * @returns the integer value (1=January, 2=February, ..., 12=December)
     */
    @!APILevel[
        since: "22"
    ]
    public func toInteger(): Int64
    
    /**
     * @description Returns the string representation of this Month
     * @returns the full name of the month (e.g., "January", "February")
     */
    @!APILevel[
        since: "22"
    ]
    public func toString(): String
    
    /**
     * @description Adds the specified number of months to this Month
     * @param n the number of months to add (can be negative)
     * @returns the resulting Month after adding n months
     */
    @!APILevel[
        since: "22"
    ]
    public operator func +(n: Int64): Month
    
    /**
     * @description Subtracts the specified number of months from this Month
     * @param n the number of months to subtract (can be negative)
     * @returns the resulting Month after subtracting n months
     */
    @!APILevel[
        since: "22"
    ]
    public operator func -(n: Int64): Month
    
    /**
     * @description Checks if this Month is equal to another Month
     * @param r the Month to compare with
     * @returns true if both represent the same month, false otherwise
     */
    @!APILevel[
        since: "22"
    ]
    public operator func ==(r: Month): Bool
    
    /**
     * @description Checks if this Month is not equal to another Month
     * @param r the Month to compare with
     * @returns true if they represent different months, false otherwise
     */
    @!APILevel[
        since: "22"
    ]
    public operator func !=(r: Month): Bool
}

/**
 * @description A monotonic time structure used for measuring elapsed time intervals, independent of system clock changes
 */
@!APILevel[
    since: "22"
]
public struct MonoTime <: Hashable & Comparable<MonoTime> {
    /**
     * @description Gets the current monotonic time
     * @returns a MonoTime representing the current moment from system start
     */
    @!APILevel[
        since: "22"
    ]
    public static func now(): MonoTime
    
    /**
     * @description Adds a Duration to this MonoTime
     * @param r the Duration to add
     * @returns a new MonoTime with the Duration added
     */
    @!APILevel[
        since: "22"
    ]
    public operator func +(r: Duration): MonoTime
    
    /**
     * @description Subtracts a Duration from this MonoTime
     * @param r the Duration to subtract
     * @returns a new MonoTime with the Duration subtracted
     */
    @!APILevel[
        since: "22"
    ]
    public operator func -(r: Duration): MonoTime
    
    /**
     * @description Subtracts another MonoTime from this MonoTime to get the Duration difference
     * @param r the MonoTime to subtract
     * @returns the Duration difference between this MonoTime and the other MonoTime
     */
    @!APILevel[
        since: "22"
    ]
    public operator func -(r: MonoTime): Duration
    
    /**
     * @description Checks if this MonoTime is equal to another MonoTime
     * @param r the MonoTime to compare with
     * @returns true if both represent the same monotonic time, false otherwise
     */
    @!APILevel[
        since: "22"
    ]
    public operator func ==(r: MonoTime): Bool
    
    /**
     * @description Checks if this MonoTime is not equal to another MonoTime
     * @param r the MonoTime to compare with
     * @returns true if they represent different monotonic times, false otherwise
     */
    @!APILevel[
        since: "22"
    ]
    public operator func !=(r: MonoTime): Bool
    
    /**
     * @description Checks if this MonoTime is greater than or equal to another MonoTime
     * @param r the MonoTime to compare with
     * @returns true if this MonoTime is later than or equal to the other MonoTime, false otherwise
     */
    @!APILevel[
        since: "22"
    ]
    public operator func >=(r: MonoTime): Bool
    
    /**
     * @description Checks if this MonoTime is greater than another MonoTime
     * @param r the MonoTime to compare with
     * @returns true if this MonoTime is later than the other MonoTime, false otherwise
     */
    @!APILevel[
        since: "22"
    ]
    public operator func >(r: MonoTime): Bool
    
    /**
     * @description Checks if this MonoTime is less than or equal to another MonoTime
     * @param r the MonoTime to compare with
     * @returns true if this MonoTime is earlier than or equal to the other MonoTime, false otherwise
     */
    @!APILevel[
        since: "22"
    ]
    public operator func <=(r: MonoTime): Bool
    
    /**
     * @description Checks if this MonoTime is less than another MonoTime
     * @param r the MonoTime to compare with
     * @returns true if this MonoTime is earlier than the other MonoTime, false otherwise
     */
    @!APILevel[
        since: "22"
    ]
    public operator func <(r: MonoTime): Bool
    
    /**
     * @description Compares this MonoTime with another MonoTime
     * @param other the MonoTime to compare with
     * @returns Ordering.LT if this is earlier, Ordering.GT if this is later, Ordering.EQ if equal
     */
    @!APILevel[
        since: "22"
    ]
    public func compare(other: MonoTime): Ordering
    
    /**
     * @description Calculates the hash code for this MonoTime
     * @returns the hash code value for this MonoTime
     */
    @!APILevel[
        since: "22"
    ]
    public func hashCode(): Int64
}

/**
 * @description A class representing time zones with offset and transition information, supporting IANA time zone database
 */
@!APILevel[
    since: "22"
]
public class TimeZone <: ToString & Equatable<TimeZone> {
    /**
     * @description The UTC time zone constant
     */
    @!APILevel[
        since: "22"
    ]
    public static let UTC: TimeZone = TimeZone("UTC", 0)
    
    /**
     * @description The local system time zone constant
     */
    @!APILevel[
        since: "22"
    ]
    public static let Local: TimeZone = initLocal()
    
    /**
     * @description The time zone identifier property
     * @returns the string identifier of this time zone
     */
    @!APILevel[
        since: "22"
    ]
    public prop id: String
    
    /**
     * @description Creates a TimeZone with the specified identifier and offset
     * @param id the time zone identifier string
     * @param offset the time zone offset as a Duration from UTC
     * @throws IllegalArgumentException when the time zone id is invalid or offset is out of range
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public init(id: String, offset: Duration)
    
    /**
     * @description Loads a TimeZone from the system time zone database
     * @param id the time zone identifier to load
     * @returns the TimeZone object for the specified identifier
     * @throws InvalidDataException when time zone data is corrupted
     * @throws IllegalArgumentException when the time zone identifier is invalid
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public static func load(id: String): TimeZone
    
    /**
     * @description Loads a TimeZone from specified time zone database paths
     * @param id the time zone identifier to load
     * @param tzpaths array of file paths to search for time zone data
     * @returns the TimeZone object for the specified identifier
     * @throws InvalidDataException when time zone data is corrupted
     * @throws IllegalArgumentException when the time zone identifier is invalid
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public static func loadFromPaths(id: String, tzpaths: Array<String>): TimeZone
    
    /**
     * @description Loads a TimeZone from raw time zone data bytes
     * @param id the time zone identifier for the loaded zone
     * @param data the raw time zone data bytes
     * @returns the TimeZone object created from the data
     * @throws InvalidDataException when time zone data is corrupted
     * @throws IllegalArgumentException when the time zone identifier is invalid
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public static func loadFromTZData(id: String, data: Array<UInt8>): TimeZone
    
    /**
     * @description Returns the string representation of this TimeZone
     * @returns the time zone identifier string
     */
    @!APILevel[
        since: "22"
    ]
    public func toString(): String
    
    /**
     * @description Checks if this TimeZone is equal to another TimeZone
     * @param r the TimeZone to compare with
     * @returns true if both represent the same time zone, false otherwise
     */
    @!APILevel[
        since: "22"
    ]
    public operator func ==(r: TimeZone): Bool
    
    /**
     * @description Checks if this TimeZone is not equal to another TimeZone
     * @param r the TimeZone to compare with
     * @returns true if they represent different time zones, false otherwise
     */
    @!APILevel[
        since: "22"
    ]
    public operator func !=(r: TimeZone): Bool
}

/**
 * @description Exception thrown when time-related data is invalid or corrupted
 */
@!APILevel[
    since: "22"
]
public class InvalidDataException <: Exception {
    /**
     * @description Creates a new InvalidDataException with no message
     */
    @!APILevel[
        since: "22"
    ]
    public init()
    
    /**
     * @description Creates a new InvalidDataException with the specified error message
     * @param message the error message describing the invalid data condition
     */
    @!APILevel[
        since: "22"
    ]
    public init(message: String)
}