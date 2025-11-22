package std.net

import std.binary.SwapEndianOrder
import std.collection.HashSet
import std.sort.sort
import std.binary.*
import std.convert.*
import std.overflow.{CheckedOp, WrappingOp}
import std.convert.Parsable
import std.binary.{BigEndianOrder, LittleEndianOrder}
import std.binary.{SwapEndianOrder, BigEndianOrder, LittleEndianOrder}
import std.sync.*
import std.overflow.*
import std.io.*
import std.time.*
import std.math.*

/**
 * @description Represents a network address family.
 */
@!APILevel[
    since: "22"
]
public struct AddressFamily <: ToString & Equatable<AddressFamily> {
    /**
     * @description Unspecified address family.
     */
    @!APILevel[
        since: "22"
    ]
    public static const UNSPEC: AddressFamily = AddressFamily("UNSPEC", 0)
    
    /**
     * @description Unix domain sockets.
     */
    @!APILevel[
        since: "22"
    ]
    public static const UNIX: AddressFamily = AddressFamily("UNIX", 1)
    
    /**
     * @description Internet Protocol version 4 (IPv4).
     */
    @!APILevel[
        since: "22"
    ]
    public static const INET: AddressFamily = AddressFamily("INET", 2)
    
    /**
     * @description Internet Protocol version 6 (IPv6).
     */
    @!APILevel[
        since: "22"
    ]
    public static const INET6: AddressFamily = AddressFamily("INET6", 10)
    
    /**
     * @description Netlink sockets.
     */
    @!APILevel[
        since: "22"
    ]
    public static const NETLINK: AddressFamily = AddressFamily("NETLINK", 16)
    
    /**
     * @description The name of the address family (e.g., "INET").
     */
    @!APILevel[
        since: "22"
    ]
    public let name: String
    
    /**
     * @description The numeric value corresponding to the address family.
     */
    @!APILevel[
        since: "22"
    ]
    public let value: UInt16
    
    /**
     * @description Constructs an `AddressFamily` with a specified name and value.
     * @param name The name of the address family.
     * @param value The numeric value of the address family.
     */
    @!APILevel[
        since: "22"
    ]
    public const init(name: String, value: UInt16)
    
    /**
     * @description Checks if this `AddressFamily` is equal to another.
     * @param other The `AddressFamily` to compare against.
     * @returns `true` if the address families are equal, `false` otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    public operator func ==(other: AddressFamily): Bool
    
    /**
     * @description Checks if this `AddressFamily` is not equal to another.
     * @param other The `AddressFamily` to compare against.
     * @returns `true` if the address families are not equal, `false` otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    public operator func !=(other: AddressFamily): Bool
    
    /**
     * @description Returns a string representation of the address family.
     * @returns The name of the address family.
     */
    @!APILevel[
        since: "22"
    ]
    public func toString(): String
}

/**
 * @description Represents an IP address (both IPv4 and IPv6). This is the base class for `IPv4Address` and `IPv6Address`.
 */
@!APILevel[
    since: "22"
]
sealed abstract class IPAddress <: ToString & Equatable<IPAddress> & Hashable & BigEndianOrder<IPAddress> {
    /**
     * @description The size of the IP address in bytes (4 for IPv4, 16 for IPv6).
     */
    @!APILevel[
        since: "22"
    ]
    public prop size: Int64
    
    /**
     * @description The host name associated with the IP address, if available.
     * @throws UnsupportedException if the host name cannot be resolved.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public prop hostName: ?String
    
    /**
     * @description Parses a string representation of an IP address.
     * @param s The string to parse.
     * @returns An `IPAddress` object.
     * @throws IllegalArgumentException if the string is not a valid IP address.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public static func parse(s: String): IPAddress
    
    /**
     * @description Tries to parse a string representation of an IP address, returning `None` on failure.
     * @param s The string to parse.
     * @returns An optional `IPAddress` object; `None` if parsing fails.
     */
    @!APILevel[
        since: "22"
    ]
    public static func tryParse(s: String): ?IPAddress
    
    /**
     * @description Resolves a domain name to an array of IP addresses for a specific address family.
     * @param family The address family to resolve (e.g., `AddressFamily.INET`).
     * @param domain The domain name to resolve.
     * @returns An array of `IPAddress` objects.
     */
    @!APILevel[
        since: "22",
        permission: "ohos.permission.GET_NETWORK_INFO" & "ohos.permission.INTERNET"
    ]
    public static func resolve(family: AddressFamily, domain: String): Array<IPAddress>
    
    /**
     * @description Resolves a domain name to an array of IP addresses, trying all supported address families.
     * @param domain The domain name to resolve.
     * @returns An array of `IPAddress` objects.
     */
    @!APILevel[
        since: "22",
        permission: "ohos.permission.GET_NETWORK_INFO" & "ohos.permission.INTERNET"
    ]
    public static func resolve(domain: String): Array<IPAddress>
    
    /**
     * @description Gets the raw byte representation of the IP address.
     * @returns An array of bytes representing the address.
     */
    @!APILevel[
        since: "22"
    ]
    public func getAddressBytes(): Array<Byte>
    
    /**
     * @description Checks if this is an IPv4 address.
     * @returns `true` if it is an IPv4 address, `false` otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    public func isIPv4(): Bool
    
    /**
     * @description Checks if this is an IPv6 address.
     * @returns `true` if it is an IPv6 address, `false` otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    public func isIPv6(): Bool
    
    /**
     * @description Checks if this is the unspecified "any" address.
     * @returns `true` if the address is unspecified, `false` otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    public open func isUnspecified(): Bool
    
    /**
     * @description Checks if this is a loopback address.
     * @returns `true` if it is a loopback address, `false` otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    public open func isLoopback(): Bool
    
    /**
     * @description Checks if this is a multicast address.
     * @returns `true` if it is a multicast address, `false` otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    public open func isMulticast(): Bool
    
    /**
     * @description Checks if this is a private (site-local) address.
     * @returns `true` if it is a private address, `false` otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    public open func isPrivate(): Bool
    
    /**
     * @description Checks if this is a link-local address.
     * @returns `true` if it is a link-local address, `false` otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    public open func isLinkLocal(): Bool
    
    /**
     * @description Checks if this is a global unicast address.
     * @returns `true` if it is a global unicast address, `false` otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    public open func isGlobalUnicast(): Bool
    
    /**
     * @description Creates an `IPPrefix` from this address and a given prefix length.
     * @param prefixLen The length of the network prefix.
     * @returns An `IPPrefix` object.
     * @throws IllegalArgumentException if the size of prefixLen is out of range.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public open func getPrefix(prefixLen: UInt8): IPPrefix
    
    /**
     * @description Writes the IP address to a buffer in big-endian byte order.
     * @param buffer The destination byte array.
     * @returns The number of bytes written.
     * @throws IllegalArgumentException if the buffer is too small to write the value.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public open func writeBigEndian(buffer: Array<Byte>): Int64
    
    /**
     * @description Reads an IP address from a buffer in big-endian byte order.
     * @param buffer The source byte array.
     * @returns An `IPAddress` object.
     * @throws IllegalArgumentException if the buffer is too small to read the value.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public static func readBigEndian(buffer: Array<Byte>): IPAddress
    
    /**
     * @description Checks if this `IPAddress` is equal to another.
     * @param other The `IPAddress` to compare against.
     * @returns `true` if the addresses are equal, `false` otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    public operator func ==(other: IPAddress): Bool
    
    /**
     * @description Checks if this `IPAddress` is not equal to another.
     * @param other The `IPAddress` to compare against.
     * @returns `true` if the addresses are not equal, `false` otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    public operator func !=(other: IPAddress): Bool
    
    /**
     * @description Computes the hash code for this `IPAddress`.
     * @returns The hash code.
     */
    @!APILevel[
        since: "22"
    ]
    public func hashCode(): Int64
}

/**
 * @description Represents an IP network prefix, consisting of an IP address and a prefix length (e.g., 192.168.1.0/24).
 */
@!APILevel[
    since: "22"
]
sealed abstract class IPPrefix <: Equatable<IPPrefix> & Hashable & ToString {
    /**
     * @description The IP address part of the prefix.
     */
    @!APILevel[
        since: "22"
    ]
    public prop address: IPAddress
    
    /**
     * @description The length of the network prefix in bits.
     */
    @!APILevel[
        since: "22"
    ]
    public prop prefixLength: UInt8
    
    /**
     * @description Parses a string representation of an IP prefix (e.g., "192.168.1.0/24").
     * @param s The string to parse.
     * @returns An `IPPrefix` object.
     * @throws IllegalFormatException if the string format is invalid.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public static func parse(s: String): IPPrefix
    
    /**
     * @description Tries to parse a string representation of an IP prefix, returning `None` on failure.
     * @param s The string to parse.
     * @returns An optional `IPPrefix` object; `None` if parsing fails.
     */
    @!APILevel[
        since: "22"
    ]
    public static func tryParse(s: String): ?IPPrefix
    
    /**
     * @description Checks if the given `IPAddress` is contained within this network prefix.
     * @param other The `IPAddress` to check.
     * @returns `true` if the address is within the prefix, `false` otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    public func contains(other: IPAddress): Bool
    
    /**
     * @description Checks if the given `IPPrefix` is completely contained within this network prefix.
     * @param other The `IPPrefix` to check.
     * @returns `true` if the other prefix is a sub-prefix of this one, `false` otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    public func contains(other: IPPrefix): Bool
    
    /**
     * @description Checks if this network prefix overlaps with another one.
     * @param other The `IPPrefix` to check for overlap.
     * @returns `true` if the prefixes overlap, `false` otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    public func overlaps(other: IPPrefix): Bool
    
    /**
     * @description Calculates the netmask for this prefix.
     * @returns An `IPAddress` representing the netmask.
     */
    @!APILevel[
        since: "22"
    ]
    public open func netmask(): IPAddress
    
    /**
     * @description Calculates the hostmask for this prefix.
     * @returns An `IPAddress` representing the hostmask.
     */
    @!APILevel[
        since: "22"
    ]
    public open func hostmask(): IPAddress
    
    /**
     * @description Calculates the broadcast address for this prefix.
     * @returns An `IPAddress` representing the broadcast address.
     */
    @!APILevel[
        since: "22"
    ]
    public open func broadcast(): IPAddress
    
    /**
     * @description Calculates the network address for this prefix.
     * @returns An `IPAddress` representing the network address.
     */
    @!APILevel[
        since: "22"
    ]
    public open func network(): IPAddress
    
    /**
     * @description Returns a new `IPPrefix` with the address masked by the prefix length.
     * @returns A new, masked `IPPrefix`.
     */
    @!APILevel[
        since: "22"
    ]
    public open func masked(): IPPrefix
    
    /**
     * @description Checks if this `IPPrefix` is equal to another.
     * @param other The `IPPrefix` to compare against.
     * @returns `true` if the prefixes are equal, `false` otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    public operator func ==(other: IPPrefix): Bool
    
    /**
     * @description Checks if this `IPPrefix` is not equal to another.
     * @param other The `IPPrefix` to compare against.
     * @returns `true` if the prefixes are not equal, `false` otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    public operator func !=(other: IPPrefix): Bool
    
    /**
     * @description Returns a string representation of the IP prefix.
     * @returns A string in the format "address/prefixLength".
     */
    @!APILevel[
        since: "22"
    ]
    public func toString(): String
}

/**
 * @description Represents a socket address, combining an IP address and a port number.
 */
@!APILevel[
    since: "22"
]
public class IPSocketAddress <: SocketAddress & Equatable<IPSocketAddress> {
    /**
     * @description Creates an `IPSocketAddress` from a raw byte array and a port.
     * @param address The IP address as a byte array.
     * @param port The port number.
     * @throws IllegalArgumentException if arguments are invalid.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public init(address: Array<Byte>, port: UInt16)
    
    /**
     * @description Creates an `IPSocketAddress` from a string representation of an IP address and a port.
     * @param address The IP address as a string.
     * @param port The port number.
     * @throws IllegalFormatException if the address format is invalid.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public init(address: String, port: UInt16)
    
    /**
     * @description Creates an `IPSocketAddress` from an `IPAddress` object and a port.
     * @param address The `IPAddress` object.
     * @param port The port number.
     */
    @!APILevel[
        since: "22"
    ]
    public init(address: IPAddress, port: UInt16)
    
    /**
     * @description The size of the socket address structure in bytes.
     */
    @!APILevel[
        since: "22"
    ]
    public prop size: Int64
    
    /**
     * @description The address family of the socket address.
     */
    @!APILevel[
        since: "22"
    ]
    public prop family: AddressFamily
    
    /**
     * @description Parses a string representation of a socket address (e.g., "127.0.0.1:8080").
     * @param s The string to parse.
     * @returns An `IPSocketAddress` object.
     * @throws IllegalFormatException if the string format is invalid.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public static func parse(s: String): IPSocketAddress
    
    /**
     * @description Tries to parse a string representation of a socket address, returning `None` on failure.
     * @param s The string to parse.
     * @returns An optional `IPSocketAddress` object; `None` if parsing fails.
     */
    @!APILevel[
        since: "22"
    ]
    public static func tryParse(s: String): ?IPSocketAddress
    
    /**
     * @description The `IPAddress` part of the socket address.
     */
    @!APILevel[
        since: "22"
    ]
    public prop address: IPAddress
    
    /**
     * @description The port number of the socket address.
     */
    @!APILevel[
        since: "22"
    ]
    public prop port: UInt16
    
    /**
     * @description Gets the raw byte representation of the IP address part.
     * @returns An array of bytes representing the IP address.
     */
    @!APILevel[
        since: "22"
    ]
    public func getAddressBytes(): Array<Byte>
    
    /**
     * @description Checks if the IP address is an IPv4 address.
     * @returns `true` if it is an IPv4 address, `false` otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    public func isIPv4(): Bool
    
    /**
     * @description Checks if the IP address is an IPv6 address.
     * @returns `true` if it is an IPv6 address, `false` otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    public func isIPv6(): Bool
    
    /**
     * @description Checks if this `IPSocketAddress` is equal to another.
     * @param other The `IPSocketAddress` to compare against.
     * @returns `true` if they are equal, `false` otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    public operator func ==(other: IPSocketAddress): Bool
    
    /**
     * @description Checks if this `IPSocketAddress` is not equal to another.
     * @param other The `IPSocketAddress` to compare against.
     * @returns `true` if they are not equal, `false` otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    public operator func !=(other: IPSocketAddress): Bool
    
    /**
     * @description Computes the hash code for this `IPSocketAddress`.
     * @returns The hash code.
     */
    @!APILevel[
        since: "22"
    ]
    public func hashCode(): Int64
    
    /**
     * @description Returns a string representation of the socket address.
     * @returns A string in the format "address:port".
     */
    @!APILevel[
        since: "22"
    ]
    public func toString(): String
}

/**
 * @description Represents an Internet Protocol version 4 (IPv4) address.
 */
@!APILevel[
    since: "22"
]
public class IPv4Address <: IPAddress & ToString & Equatable<IPv4Address> & LessOrEqual<IPv4Address> {
    /**
     * @description The standard loopback address: 127.0.0.1.
     */
    @!APILevel[
        since: "22"
    ]
    public static let localhost: IPv4Address = IPv4Address(0x7F, 0, 0, 0x01)
    
    /**
     * @description The unspecified "any" address: 0.0.0.0.
     */
    @!APILevel[
        since: "22"
    ]
    public static let unspecified: IPv4Address = IPv4Address(0, 0, 0, 0)
    
    /**
     * @description The broadcast address: 255.255.255.255.
     */
    @!APILevel[
        since: "22"
    ]
    public static let broadcast: IPv4Address = IPv4Address(0xFF, 0xFF, 0xFF, 0xFF)
    
    /**
     * @description Constructs an `IPv4Address` from a 32-bit integer.
     * @param bits The 32-bit integer representing the IPv4 address.
     */
    @!APILevel[
        since: "22"
    ]
    public init(bits: UInt32)
    
    /**
     * @description Constructs an `IPv4Address` from four byte octets.
     * @param a The first octet.
     * @param b The second octet.
     * @param c The third octet.
     * @param d The fourth octet.
     */
    @!APILevel[
        since: "22"
    ]
    public init(a: Byte, b: Byte, c: Byte, d: Byte)
    
    /**
     * @description Converts the `IPv4Address` to its 32-bit integer representation.
     * @returns A `UInt32` representing the address.
     */
    @!APILevel[
        since: "22"
    ]
    public func toBits(): UInt32
    
    /**
     * @description Writes the IPv4 address to a buffer in big-endian byte order.
     * @param buffer The destination byte array.
     * @returns The number of bytes written (4).
     * @throws IllegalArgumentException if the buffer is too small to write the value.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func writeBigEndian(buffer: Array<Byte>): Int64
    
    /**
     * @description Reads an IPv4 address from a buffer in big-endian byte order.
     * @param buffer The source byte array.
     * @returns An `IPv4Address` object.
     * @throws IllegalArgumentException if the buffer is too small to write the value. 
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public static func readBigEndian(buffer: Array<Byte>): IPv4Address
    
    /**
     * @description Checks if this is the broadcast address (255.255.255.255).
     * @returns `true` if it is the broadcast address, `false` otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    public func isBroadcast(): Bool
    
    /**
     * @description Checks if this is a global unicast address.
     * @returns `true` if it is a global unicast address, `false` otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    public func isGlobalUnicast(): Bool
    
    /**
     * @description Checks if this is a link-local address (169.254.0.0/16).
     * @returns `true` if it is a link-local address, `false` otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    public func isLinkLocal(): Bool
    
    /**
     * @description Checks if this is a loopback address (127.0.0.0/8).
     * @returns `true` if it is a loopback address, `false` otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    public func isLoopback(): Bool
    
    /**
     * @description Checks if this is a multicast address (224.0.0.0/4).
     * @returns `true` if it is a multicast address, `false` otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    public func isMulticast(): Bool
    
    /**
     * @description Checks if this is a private address (e.g., 10.0.0.0/8, 172.16.0.0/12, 192.168.0.0/16).
     * @returns `true` if it is a private address, `false` otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    public func isPrivate(): Bool
    
    /**
     * @description Checks if this is the unspecified "any" address (0.0.0.0).
     * @returns `true` if the address is unspecified, `false` otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    public func isUnspecified(): Bool
    
    /**
     * @description Converts this IPv4 address to an IPv4-compatible IPv6 address.
     * @returns An `IPv6Address` object.
     */
    @!APILevel[
        since: "22"
    ]
    public func toIPv6Compatible(): IPv6Address
    
    /**
     * @description Converts this IPv4 address to an IPv4-mapped IPv6 address.
     * @returns An `IPv6Address` object.
     */
    @!APILevel[
        since: "22"
    ]
    public func toIPv6Mapped(): IPv6Address
    
    /**
     * @description Creates an `IPPrefix` from this address and a given prefix length.
     * @param prefixLen The length of the network prefix (0-32).
     * @returns An `IPPrefix` object.
     * @throws IllegalArgumentException if the prefix length is > 32.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func getPrefix(prefixLen: UInt8): IPPrefix
    
    /**
     * @description Compares this `IPv4Address` with another to determine if it is less than or equal.
     * @param other The `IPv4Address` to compare against.
     * @returns `true` if this address is less than or equal to `rhs`, `false` otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    public operator func <=(other: IPv4Address): Bool
    
    /**
     * @description Checks if this `IPv4Address` is equal to another.
     * @param other The `IPv4Address` to compare against.
     * @returns `true` if the addresses are equal, `false` otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    public operator func ==(other: IPv4Address): Bool
    
    /**
     * @description Checks if this `IPv4Address` is not equal to another.
     * @param other The `IPv4Address` to compare against.
     * @returns `true` if the addresses are not equal, `false` otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    public operator func !=(other: IPv4Address): Bool
    
    /**
     * @description Returns a string representation of the IPv4 address.
     * @returns A string in the format "a.b.c.d".
     */
    @!APILevel[
        since: "22"
    ]
    public func toString(): String
}

/**
 * @description Represents an Internet Protocol version 6 (IPv6) address.
 */
@!APILevel[
    since: "22"
]
public class IPv6Address <: IPAddress & ToString & Equatable<IPv6Address> & LessOrEqual<IPv6Address> {
    /**
     * @description The standard loopback address: ::1.
     */
    @!APILevel[
        since: "22"
    ]
    public static let localhost: IPv6Address = IPv6Address(0u16, 0, 0, 0, 0, 0, 0, 1)
    
    /**
     * @description The unspecified "any" address: ::.
     */
    @!APILevel[
        since: "22"
    ]
    public static let unspecified: IPv6Address = IPv6Address(0u16, 0, 0, 0, 0, 0, 0, 0)
    
    /**
     * @description Constructs an `IPv6Address` from a 16-byte array and an optional scope ID.
     * @param octets The 16-byte array representing the IPv6 address.
     * @param scopeId An optional scope ID for link-local addresses.
     * @throws IllegalArgumentException if octets is less than 16.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public init(octets: Array<Byte>, scopeId!: ?UInt32 = None)
    
    /**
     * @description Constructs an `IPv6Address` from eight 16-bit segments and an optional scope ID.
     * @param a The first 16-bit segment.
     * @param b The second 16-bit segment.
     * @param c The third 16-bit segment.
     * @param d The fourth 16-bit segment.
     * @param e The fifth 16-bit segment.
     * @param f The sixth 16-bit segment.
     * @param g The seventh 16-bit segment.
     * @param h The eighth 16-bit segment.
     * @param scopeId An optional scope ID for link-local addresses.
     */
    @!APILevel[
        since: "22"
    ]
    public init(a: UInt16, b: UInt16, c: UInt16, d: UInt16, e: UInt16, f: UInt16, g: UInt16, h: UInt16,
        scopeId!: ?UInt32 = None)
    
    /**
     * @description The scope ID of the address, used for link-local addresses.
     */
    @!APILevel[
        since: "22"
    ]
    public prop scopeId: ?UInt32
    
    /**
     * @description Creates an `IPPrefix` from this address and a given prefix length.
     * @param prefixLen The length of the network prefix (0-128).
     * @returns An `IPPrefix` object.
     * @throws IllegalFormatException if the prefix length is > 128.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func getPrefix(prefixLen: UInt8): IPPrefix
    
    /**
     * @description Converts this IPv6 address to an `IPv4Address` if it is an IPv4-compatible or IPv4-mapped address.
     * @returns An optional `IPv4Address`; `None` if it cannot be converted.
     */
    @!APILevel[
        since: "22"
    ]
    public func toIPv4(): ?IPv4Address
    
    /**
     * @description Converts this IPv6 address to an `IPv4Address` if it is an IPv4-mapped address.
     * @returns An optional `IPv4Address`; `None` if it's not an IPv4-mapped address.
     */
    @!APILevel[
        since: "22"
    ]
    public func toIPv4Mapped(): ?IPv4Address
    
    /**
     * @description Creates a new `IPv6Address` with a different scope ID.
     * @param scopeId The new scope ID.
     * @returns A new `IPv6Address` with the updated scope ID.
     */
    @!APILevel[
        since: "22"
    ]
    public func scope(scopeId: ?UInt32): IPv6Address
    
    /**
     * @description Writes the IPv6 address to a buffer in big-endian byte order.
     * @param buffer The destination byte array.
     * @returns The number of bytes written (16).
     * @throws IllegalArgumentException if the buffer is too small to write the value.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func writeBigEndian(buffer: Array<Byte>): Int64
    
    /**
     * @description Reads an IPv6 address from a buffer in big-endian byte order.
     * @param buffer The source byte array.
     * @returns An `IPv6Address` object.
     * @throws IllegalArgumentException if the buffer is too small to read the value. 
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public static func readBigEndian(buffer: Array<Byte>): IPv6Address
    
    /**
     * @description Checks if this is a global unicast address.
     * @returns `true` if it is a global unicast address, `false` otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    public func isGlobalUnicast(): Bool
    
    /**
     * @description Checks if this is an IPv4-mapped address (::ffff:x:x).
     * @returns `true` if it is an IPv4-mapped address, `false` otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    public func isIPv4Mapped(): Bool
    
    /**
     * @description Checks if this is a link-local address (fe80::/10).
     * @returns `true` if it is a link-local address, `false` otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    public func isLinkLocal(): Bool
    
    /**
     * @description Checks if this is a loopback address (::1).
     * @returns `true` if it is a loopback address, `false` otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    public func isLoopback(): Bool
    
    /**
     * @description Checks if this is a multicast address (ff00::/8).
     * @returns `true` if it is a multicast address, `false` otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    public func isMulticast(): Bool
    
    /**
     * @description Checks if this is a private (unique local) address (fc00::/7).
     * @returns `true` if it is a private address, `false` otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    public func isPrivate(): Bool
    
    /**
     * @description Checks if this is a Teredo tunneling address (2001::/32).
     * @returns `true` if it is a Teredo address, `false` otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    public func isTeredo(): Bool
    
    /**
     * @description Checks if this is the unspecified "any" address (::).
     * @returns `true` if the address is unspecified, `false` otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    public func isUnspecified(): Bool
    
    /**
     * @description Compares this `IPv6Address` with another to determine if it is less than or equal.
     * @param other The `IPv6Address` to compare against.
     * @returns `true` if this address is less than or equal to `rhs`, `false` otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    public operator func <=(other: IPv6Address): Bool
    
    /**
     * @description Checks if this `IPv6Address` is equal to another.
     * @param other The `IPv6Address` to compare against.
     * @returns `true` if the addresses are equal, `false` otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    public operator func ==(other: IPv6Address): Bool
    
    /**
     * @description Checks if this `IPv6Address` is not equal to another.
     * @param other The `IPv6Address` to compare against.
     * @returns `true` if the addresses are not equal, `false` otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    public operator func !=(other: IPv6Address): Bool
    
    /**
     * @description Returns a string representation of the IPv6 address.
     * @returns A string in the canonical compressed format.
     */
    @!APILevel[
        since: "22"
    ]
    public func toString(): String
}

/**
 * @description Represents a generic socket address. This is the base class for specific socket address types like `IPSocketAddress`.
 */
@!APILevel[
    since: "22"
]
sealed abstract class SocketAddress <: ToString & Equatable<SocketAddress> & Hashable {
    /**
     * @description The size of the socket address structure in bytes.
     */
    @!APILevel[
        since: "22"
    ]
    public prop size: Int64
    
    /**
     * @description The address family of the socket address.
     */
    @!APILevel[
        since: "22"
    ]
    public prop family: AddressFamily
    
    /**
     * @description Gets the raw byte representation of the socket address.
     * @returns An array of bytes representing the address.
     */
    @!APILevel[
        since: "22"
    ]
    public func getAddressBytes(): Array<Byte>
    
    /**
     * @description Checks if this `SocketAddress` is equal to another.
     * @param other The `SocketAddress` to compare against.
     * @returns `true` if they are equal, `false` otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    public operator func ==(other: SocketAddress): Bool
    
    /**
     * @description Checks if this `SocketAddress` is not equal to another.
     * @param other The `SocketAddress` to compare against.
     * @returns `true` if they are not equal, `false` otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    public operator func !=(other: SocketAddress): Bool
}

/**
 * @description Represents a connected, stream-oriented socket (like TCP). Provides input and output streams.
 */
@!APILevel[
    since: "22"
]
public interface StreamingSocket <: IOStream & Resource & ToString {
    /**
     * @description The local address to which the socket is bound.
     */
    @!APILevel[
        since: "22"
    ]
    prop localAddress: SocketAddress
    
    /**
     * @description The remote address to which the socket is connected.
     */
    @!APILevel[
        since: "22"
    ]
    prop remoteAddress: SocketAddress
    
    /**
     * @description The timeout for read operations. `None` means an infinite timeout.
     */
    @!APILevel[
        since: "22"
    ]
    mut prop readTimeout: ?Duration
    
    /**
     * @description The timeout for write operations. `None` means an infinite timeout.
     */
    @!APILevel[
        since: "22"
    ]
    mut prop writeTimeout: ?Duration
}

/**
 * @description Represents a datagram-oriented socket (like UDP).
 */
@!APILevel[
    since: "22"
]
public interface DatagramSocket <: Resource & ToString {
    /**
     * @description The local address to which the socket is bound.
     */
    @!APILevel[
        since: "22"
    ]
    prop localAddress: SocketAddress
    
    /**
     * @description The remote address if the socket is connected.
     */
    @!APILevel[
        since: "22"
    ]
    prop remoteAddress: ?SocketAddress
    
    /**
     * @description The timeout for receive operations. `None` means an infinite timeout.
     */
    @!APILevel[
        since: "22"
    ]
    mut prop receiveTimeout: ?Duration
    
    /**
     * @description The timeout for send operations. `None` means an infinite timeout.
     */
    @!APILevel[
        since: "22"
    ]
    mut prop sendTimeout: ?Duration
    
    /**
     * @description Receives a datagram into a buffer.
     * @param buffer The buffer to store the received data.
     * @returns A tuple containing the source `SocketAddress` and the number of bytes received.
     */
    @!APILevel[
        since: "22",
        permission: "ohos.permission.GET_NETWORK_INFO" & "ohos.permission.INTERNET"
    ]
    func receiveFrom(buffer: Array<Byte>): (SocketAddress, Int64)
    
    /**
     * @description Sends a datagram to a specified address.
     * @param address The destination `SocketAddress`.
     * @param payload The byte array of data to send.
     */
    @!APILevel[
        since: "22",
        permission: "ohos.permission.GET_NETWORK_INFO" & "ohos.permission.INTERNET"
    ]
    func sendTo(address: SocketAddress, payload: Array<Byte>): Unit
}

/**
 * @description Represents a server-side socket that listens for incoming connections (like a TCP listener).
 */
@!APILevel[
    since: "22"
]
public interface ServerSocket <: Resource & ToString {
    /**
     * @description The local address and port the server socket is listening on.
     */
    @!APILevel[
        since: "22"
    ]
    prop localAddress: SocketAddress
    
    /**
     * @description Binds the server socket to its configured local address.
     */
    @!APILevel[
        since: "22",
        permission: "ohos.permission.GET_NETWORK_INFO" & "ohos.permission.INTERNET"
    ]
    func bind(): Unit
    
    /**
     * @description Accepts an incoming connection, waiting up to the specified timeout.
     * @param timeout An optional duration to wait for a connection. `None` means wait indefinitely.
     * @returns A `StreamingSocket` for the new connection.
     */
    @!APILevel[
        since: "22",
        permission: "ohos.permission.GET_NETWORK_INFO" & "ohos.permission.INTERNET"
    ]
    func accept(timeout!: ?Duration): StreamingSocket
    
    /**
     * @description Accepts an incoming connection, waiting indefinitely.
     * @returns A `StreamingSocket` for the new connection.
     */
    @!APILevel[
        since: "22",
        permission: "ohos.permission.GET_NETWORK_INFO" & "ohos.permission.INTERNET"
    ]
    func accept(): StreamingSocket
}

/**
 * @description An enumeration of common socket network protocols.
 */
@!APILevel[
    since: "22"
]
public enum SocketNet <: ToString & Equatable<SocketNet> {
    /**
     * @description Transmission Control Protocol (TCP).
     */
    @!APILevel[
        since: "22"
    ]
    TCP |
    /**
     * @description User Datagram Protocol (UDP).
     */
    @!APILevel[
        since: "22"
    ]
    UDP |
    /**
     * @description Unix Domain Sockets.
     */
    @!APILevel[
        since: "22"
    ]
    UNIX
    /**
     * @description Returns a string representation of the socket network type.
     * @returns The name of the protocol (e.g., "TCP").
     */
    @!APILevel[
        since: "22"
    ]
    public func toString(): String
    
    /**
     * @description Checks if this `SocketNet` is equal to another.
     * @param other The `SocketNet` to compare against.
     * @returns `true` if they are equal, `false` otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    public operator func ==(other: SocketNet): Bool
    
    /**
     * @description Checks if this `SocketNet` is not equal to another.
     * @param other The `SocketNet` to compare against.
     * @returns `true` if they are not equal, `false` otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    public operator func !=(other: SocketNet): Bool
}

/**
 * @description An exception indicating an error occurred on a socket operation.
 */
@!APILevel[
    since: "22"
]
public class SocketException <: IOException {
    /**
     * @description Constructs a `SocketException` with no detail message.
     */
    @!APILevel[
        since: "22"
    ]
    public init()
    
    /**
     * @description Constructs a `SocketException` with the specified detail message.
     * @param message The detail message.
     */
    @!APILevel[
        since: "22"
    ]
    public init(message: String)
}

/**
 * @description An exception indicating that a timeout has occurred on a socket read or accept operation.
 */
@!APILevel[
    since: "22"
]
public class SocketTimeoutException <: Exception {
    /**
     * @description Constructs a `SocketTimeoutException` with no detail message.
     */
    @!APILevel[
        since: "22"
    ]
    public init()
    
    /**
     * @description Constructs a `SocketTimeoutException` with the specified detail message.
     * @param message The detail message.
     */
    @!APILevel[
        since: "22"
    ]
    public init(message: String)
}

/**
 * @description Configuration for TCP keep-alive behavior.
 */
@!APILevel[
    since: "22"
]
public struct SocketKeepAliveConfig <: ToString & Equatable<SocketKeepAliveConfig> {
    /**
     * @description The duration of inactivity before sending a keep-alive probe.
     */
    @!APILevel[
        since: "22"
    ]
    public let idle: Duration
    
    /**
     * @description The interval between keep-alive probes.
     */
    @!APILevel[
        since: "22"
    ]
    public let interval: Duration
    
    /**
     * @description The number of keep-alive probes to send before dropping the connection.
     */
    @!APILevel[
        since: "22"
    ]
    public let count: UInt32
    
    /**
     * @description Constructs a `SocketKeepAliveConfig`.
     * @param idle The idle time before sending probes. Defaults to 45 seconds.
     * @param interval The interval between probes. Defaults to 5 seconds.
     * @param count The number of probes before failure. Defaults to 5.
     * @throws IllegalArgumentException if configured to the idle state or when the set interval is less than 0.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public init(
        idle!: Duration = Duration.second * 45,
        interval!: Duration = Duration.second * 5,
        count!: UInt32 = 5
    )
    
    /**
     * @description Returns a string representation of the keep-alive configuration.
     * @returns A string detailing the idle time, interval, and count.
     */
    @!APILevel[
        since: "22"
    ]
    public override func toString(): String
    
    /**
     * @description Checks if this `SocketKeepAliveConfig` is equal to another.
     * @param other The config to compare against.
     * @returns `true` if they are equal, `false` otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    public override operator func ==(other: SocketKeepAliveConfig): Bool
    
    /**
     * @description Checks if this `SocketKeepAliveConfig` is not equal to another.
     * @param other The config to compare against.
     * @returns `true` if they are not equal, `false` otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    public override operator func !=(other: SocketKeepAliveConfig): Bool
}

/**
 * @description A collection of constants for common socket options.
 */
@!APILevel[
    since: "22"
]
public struct SocketOptions {
    /**
     * @description Socket-level options.
     */
    @!APILevel[
        since: "22"
    ]
    public static const SOL_SOCKET: Int32 = SOL_SOCKET
    
    /**
     * @description TCP-level options.
     */
    @!APILevel[
        since: "22"
    ]
    public static const IPPROTO_TCP: Int32 = IPPROTO_TCP
    
    /**
     * @description UDP-level options.
     */
    @!APILevel[
        since: "22"
    ]
    public static const IPPROTO_UDP: Int32 = IPPROTO_UDP
    
    /**
     * @description Socket option: Enable keep-alive probes.
     */
    @!APILevel[
        since: "22"
    ]
    public static const SO_KEEPALIVE: Int32 = SOCK_KEEPALIVE
    
    /**
     * @description Socket option: Disable Nagle's algorithm (TCP_NODELAY).
     */
    @!APILevel[
        since: "22"
    ]
    public static const TCP_NODELAY: Int32 = SOCK_TCP_NODELAY
    
    /**
     * @description Socket option: Enable quick ACK for TCP.
     */
    @!APILevel[
        since: "22"
    ]
    public static const TCP_QUICKACK: Int32 = SOCK_TCP_QUICKACK
    
    /**
     * @description Socket option: Configure lingering on close.
     */
    @!APILevel[
        since: "22"
    ]
    public static const SO_LINGER: Int32 = SOCK_LINGER
    
    /**
     * @description Socket option: Set send buffer size.
     */
    @!APILevel[
        since: "22"
    ]
    public static const SO_SNDBUF: Int32 = SOCK_SNDBUF
    
    /**
     * @description Socket option: Set receive buffer size.
     */
    @!APILevel[
        since: "22"
    ]
    public static const SO_RCVBUF: Int32 = SOCK_RCVBUF
    
    /**
     * @description Socket option: Allow reuse of local addresses.
     */
    @!APILevel[
        since: "22"
    ]
    public static const SO_REUSEADDR: Int32 = SOCK_REUSEADDR
    
    /**
     * @description Socket option: Allow reuse of local ports.
     */
    @!APILevel[
        since: "22"
    ]
    public static const SO_REUSEPORT: Int32 = SOCK_REUSEPORT
    
    /**
     * @description Socket option: Bind socket to a specific network device.
     */
    @!APILevel[
        since: "22"
    ]
    public static const SO_BINDTODEVICE: Int32 = SOCK_BINDTODEVICE
}

/**
 * @description Provides a low-level, platform-agnostic interface for raw socket operations.
 */
@!APILevel[
    since: "22"
]
public class RawSocket {
    /**
     * @description The local address to which the socket is bound.
     * @throws SocketException on socket-related errors.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public prop localAddr: RawAddress
    
    /**
     * @description The local address to which the socket is bound.
     * @throws SocketException on socket-related errors.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public prop localAddress: RawAddress
    
    /**
     * @description The remote address to which the socket is connected.
     * @throws SocketException on socket-related errors.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public prop remoteAddr: RawAddress
    
    /**
     * @description The remote address to which the socket is connected.
     * @throws SocketException on socket-related errors.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public prop remoteAddress: RawAddress
    
    /**
     * @description The timeout for read operations. `None` means an infinite timeout.
     * @throws SocketException on socket-related errors.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public mut prop readTimeout: ?Duration
    
    /**
     * @description The timeout for write operations. `None` means an infinite timeout.
     * @throws SocketException on socket-related errors.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public mut prop writeTimeout: ?Duration
    
    /**
     * @description Creates a new raw socket.
     * @param domain The socket domain (e.g., `SocketDomain.INET`).
     * @param type The socket type (e.g., `SocketType.STREAM`).
     * @param protocol The protocol type (e.g., `ProtocolType.TCP`).
     * @throws SocketException on failure to create the socket.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public init(domain: SocketDomain, `type`: SocketType, protocol: ProtocolType)
    
    /**
     * @description Binds the socket to a specific local address.
     * @param addr The `RawAddress` to bind to.
     * @throws SocketTimeoutException if a timeout occurs.
     * @throws SocketException on binding failure.
     */
    @!APILevel[
        since: "22",
        permission: "ohos.permission.GET_NETWORK_INFO" & "ohos.permission.INTERNET",
        throwexception: true
    ]
    public func bind(addr: RawAddress): Unit
    
    /**
     * @description Puts the socket in a listening state for incoming connections.
     * @param backlog The maximum length of the pending connection queue.
     * @throws SocketException on failure to listen.
     * @throws SocketTimeoutException if a timeout occurs.
     */
    @!APILevel[
        since: "22",
        permission: "ohos.permission.GET_NETWORK_INFO" & "ohos.permission.INTERNET",
        throwexception: true
    ]
    public func listen(backlog: Int32): Unit
    
    /**
     * @description Accepts an incoming connection.
     * @param timeout An optional duration to wait for a connection. `None` means wait indefinitely.
     * @returns A new `RawSocket` for the accepted connection.
     * @throws SocketTimeoutException if the timeout is reached before a connection is accepted.
     * @throws SocketException on accept failure.
     */
    @!APILevel[
        since: "22",
        permission: "ohos.permission.GET_NETWORK_INFO" & "ohos.permission.INTERNET",
        throwexception: true
    ]
    public func accept(timeout!: ?Duration = None): RawSocket
    
    /**
     * @description Connects the socket to a remote address.
     * @param addr The remote `RawAddress` to connect to.
     * @param timeout An optional duration to wait for the connection to be established.
     * @throws SocketException on connection failure.
     * @throws SocketTimeoutException if the timeout is reached.
     */
    @!APILevel[
        since: "22",
        permission: "ohos.permission.GET_NETWORK_INFO" & "ohos.permission.INTERNET",
        throwexception: true
    ]
    public func connect(addr: RawAddress, timeout!: ?Duration = None): Unit
    
    /**
     * @description Closes the socket, releasing any associated resources.
     */
    @!APILevel[
        since: "22",
        permission: "ohos.permission.GET_NETWORK_INFO" & "ohos.permission.INTERNET"
    ]
    public func close(): Unit
    
    /**
     * @description Sends data to a specific destination address (for connectionless sockets).
     * @param addr The destination `RawAddress`.
     * @param buffer The data to send.
     * @param flags Optional flags to control send behavior.
     * @throws SocketTimeoutException if a timeout occurs.
     * @throws SocketException on send failure.
     */
    @!APILevel[
        since: "22",
        permission: "ohos.permission.GET_NETWORK_INFO" & "ohos.permission.INTERNET",
        throwexception: true
    ]
    public func sendTo(addr: RawAddress, buffer: Array<Byte>, flags: Int32): Unit
    
    /**
     * @description Receives data, capturing the source address (for connectionless sockets).
     * @param buffer The buffer to store the received data.
     * @param flags Optional flags to control receive behavior.
     * @returns A tuple containing the source `RawAddress` and the number of bytes received.
     * @throws SocketTimeoutException if a timeout occurs.
     * @throws SocketException on receive failure.
     */
    @!APILevel[
        since: "22",
        permission: "ohos.permission.GET_NETWORK_INFO" & "ohos.permission.INTERNET",
        throwexception: true
    ]
    public func receiveFrom(buffer: Array<Byte>, flags: Int32): (RawAddress, Int64)
    
    /**
     * @description Sends data on a connected socket.
     * @param buffer The data to send.
     * @param flags Optional flags to control send behavior.
     * @throws SocketTimeoutException if a timeout occurs.
     * @throws SocketException on send failure.
     */
    @!APILevel[
        since: "22",
        permission: "ohos.permission.GET_NETWORK_INFO" & "ohos.permission.INTERNET",
        throwexception: true
    ]
    public func send(buffer: Array<Byte>, flags: Int32): Unit
    
    /**
     * @description Receives data from a connected socket.
     * @param buffer The buffer to store the received data.
     * @param flags Optional flags to control receive behavior.
     * @returns The number of bytes received.
     * @throws SocketException on receive failure.
     * @throws SocketTimeoutException if a timeout occurs.
     */
    @!APILevel[
        since: "22",
        permission: "ohos.permission.GET_NETWORK_INFO" & "ohos.permission.INTERNET",
        throwexception: true
    ]
    public func receive(buffer: Array<Byte>, flags: Int32): Int64
    
    /**
     * @description Sets a low-level socket option. This is an unsafe operation.
     * @param level The option level (e.g., `SocketOptions.SOL_SOCKET`).
     * @param option The option to set (e.g., `SocketOptions.SO_KEEPALIVE`).
     * @param value A C pointer to the option value.
     * @param len The length of the option value.
     * @throws SocketException on failure to set the option.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public unsafe func setSocketOption(level: Int32, option: Int32, value: CPointer<Byte>, len: Int32): Unit
    
    /**
     * @description Gets a low-level socket option. This is an unsafe operation.
     * @param level The option level.
     * @param option The option to get.
     * @param value A C pointer to a buffer to store the option value.
     * @param len A C pointer to an integer holding the buffer length, which will be updated with the actual value length.
     * @throws SocketException on failure to get the option.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public unsafe func getSocketOption(level: Int32, option: Int32, value: CPointer<Byte>, len: CPointer<Int32>): Unit
}


/**
 * @description Represents the communication domain for a socket, defining the protocol family.
 */
@!APILevel[
    since: "22"
]
public struct SocketDomain <: Equatable<SocketDomain> & ToString & Hashable {
    /**
     * @description IPv4 Internet protocols.
     */
    @!APILevel[
        since: "22"
    ]
    public static let IPV4: SocketDomain = SocketDomain(AF_INET)
    
    /**
     * @description IPv6 Internet protocols.
     */
    @!APILevel[
        since: "22"
    ]
    public static let IPV6: SocketDomain = SocketDomain(AF_INET6)
    
    /**
     * @description Local communication (Unix domain sockets).
     */
    @!APILevel[
        since: "22"
    ]
    public static let UNIX: SocketDomain = SocketDomain(AF_UNIX)
    
    /**
     * @description Netlink sockets, for communication between kernel and user-space processes.
     */
    @!APILevel[
        since: "22"
    ]
    public static let NETLINK: SocketDomain = SocketDomain(AF_NETLINK)
    
    /**
     * @description Low-level packet interface.
     */
    @!APILevel[
        since: "22"
    ]
    public static let PACKET: SocketDomain = SocketDomain(AF_PACKET)
    
    /**
     * @description Constructs a `SocketDomain` from a raw integer value.
     * @param domain The low-level integer constant for the domain (e.g., `AF_INET`).
     */
    @!APILevel[
        since: "22"
    ]
    public init(domain: Int32)
    
    /**
     * @description Checks if this `SocketDomain` is equal to another.
     * @param r The `SocketDomain` to compare against.
     * @returns `true` if they are equal, `false` otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    public operator func ==(r: SocketDomain): Bool
    
    /**
     * @description Checks if this `SocketDomain` is not equal to another.
     * @param r The `SocketDomain` to compare against.
     * @returns `true` if they are not equal, `false` otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    public operator func !=(r: SocketDomain): Bool
    
    /**
     * @description Returns a string representation of the socket domain.
     * @returns A string representing the domain (e.g., "IPV4").
     */
    @!APILevel[
        since: "22"
    ]
    public func toString(): String
    
    /**
     * @description Computes the hash code for this `SocketDomain`.
     * @returns The hash code.
     */
    @!APILevel[
        since: "22"
    ]
    public func hashCode(): Int64
}

/**
 * @description Specifies the communication semantics for a socket.
 */
@!APILevel[
    since: "22"
]
public struct SocketType <: Equatable<SocketType> & ToString & Hashable {
    /**
     * @description Provides sequenced, reliable, two-way, connection-based byte streams (e.g., TCP).
     */
    @!APILevel[
        since: "22"
    ]
    public static let STREAM: SocketType = SocketType(SOCKET_STREAM)
    
    /**
     * @description Supports datagrams (connectionless, unreliable messages of a fixed maximum length) (e.g., UDP).
     */
    @!APILevel[
        since: "22"
    ]
    public static let DATAGRAM: SocketType = SocketType(SOCKET_DGRAM)
    
    /**
     * @description Provides raw network protocol access.
     */
    @!APILevel[
        since: "22"
    ]
    public static let RAW: SocketType = SocketType(SOCKET_RAW)
    
    /**
     * @description Provides a sequenced, reliable, two-way connection-based data transmission path for datagrams of a fixed maximum length.
     */
    @!APILevel[
        since: "22"
    ]
    public static let SEQPACKET: SocketType = SocketType(SOCKET_SEQPACKET)
    
    /**
     * @description Constructs a `SocketType` from a raw integer value.
     * @param type The low-level integer constant for the socket type (e.g., `SOCKET_STREAM`).
     */
    @!APILevel[
        since: "22"
    ]
    public init(`type`: Int32)
    
    /**
     * @description Checks if this `SocketType` is equal to another.
     * @param r The `SocketType` to compare against.
     * @returns `true` if they are equal, `false` otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    public operator func ==(r: SocketType): Bool
    
    /**
     * @description Checks if this `SocketType` is not equal to another.
     * @param r The `SocketType` to compare against.
     * @returns `true` if they are not equal, `false` otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    public operator func !=(r: SocketType): Bool
    
    /**
     * @description Returns a string representation of the socket type.
     * @returns A string representing the type (e.g., "STREAM").
     */
    @!APILevel[
        since: "22"
    ]
    public func toString(): String
    
    /**
     * @description Computes the hash code for this `SocketType`.
     * @returns The hash code.
     */
    @!APILevel[
        since: "22"
    ]
    public func hashCode(): Int64
}

/**
 * @description Specifies a particular protocol to be used with the socket.
 */
@!APILevel[
    since: "22"
]
public struct ProtocolType <: Equatable<ProtocolType> & ToString & Hashable {
    /**
     * @description Unspecified protocol. The system will select a default protocol.
     */
    @!APILevel[
        since: "22"
    ]
    public static let Unspecified: ProtocolType = ProtocolType(0)
    
    /**
     * @description Internet Protocol version 4.
     */
    @!APILevel[
        since: "22"
    ]
    public static let IPV4: ProtocolType = ProtocolType(IPPROTO_IPV4)
    
    /**
     * @description Internet Protocol version 6.
     */
    @!APILevel[
        since: "22"
    ]
    public static let IPV6: ProtocolType = ProtocolType(IPPROTO_IPV6)
    
    /**
     * @description Internet Control Message Protocol.
     */
    @!APILevel[
        since: "22"
    ]
    public static let ICMP: ProtocolType = ProtocolType(IPPROTO_ICMP)
    
    /**
     * @description Transmission Control Protocol.
     */
    @!APILevel[
        since: "22"
    ]
    public static let TCP: ProtocolType = ProtocolType(IPPROTO_TCP)
    
    /**
     * @description User Datagram Protocol.
     */
    @!APILevel[
        since: "22"
    ]
    public static let UDP: ProtocolType = ProtocolType(IPPROTO_UDP)
    
    /**
     * @description Raw IP packets.
     */
    @!APILevel[
        since: "22"
    ]
    public static let RAW: ProtocolType = ProtocolType(IPPROTO_RAW)
    
    /**
     * @description Constructs a `ProtocolType` from a raw integer value.
     * @param protocol The low-level integer constant for the protocol (e.g., `IPPROTO_TCP`).
     */
    @!APILevel[
        since: "22"
    ]
    public init(protocol: Int32)
    
    /**
     * @description Checks if this `ProtocolType` is equal to another.
     * @param r The `ProtocolType` to compare against.
     * @returns `true` if they are equal, `false` otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    public operator func ==(r: ProtocolType): Bool
    
    /**
     * @description Checks if this `ProtocolType` is not equal to another.
     * @param r The `ProtocolType` to compare against.
     * @returns `true` if they are not equal, `false` otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    public operator func !=(r: ProtocolType): Bool
    
    /**
     * @description Returns a string representation of the protocol type.
     * @returns A string representing the protocol (e.g., "TCP").
     */
    @!APILevel[
        since: "22"
    ]
    public func toString(): String
    
    /**
     * @description Computes the hash code for this `ProtocolType`.
     * @returns The hash code.
     */
    @!APILevel[
        since: "22"
    ]
    public func hashCode(): Int64
}

/**
 * @description Defines constants for the `level` parameter in `getSocketOption` and `setSocketOption`.
 */
@!APILevel[
    since: "22"
]
public struct OptionLevel {
    /**
     * @description Options at the IP protocol level.
     */
    @!APILevel[
        since: "22"
    ]
    public static const IP: Int32 = IPPROTO_IP
    
    /**
     * @description Options for TCP sockets.
     */
    @!APILevel[
        since: "22"
    ]
    public static const TCP: Int32 = IPPROTO_TCP
    
    /**
     * @description Options for UDP sockets.
     */
    @!APILevel[
        since: "22"
    ]
    public static const UDP: Int32 = IPPROTO_UDP
    
    /**
     * @description Options for ICMP sockets.
     */
    @!APILevel[
        since: "22"
    ]
    public static const ICMP: Int32 = IPPROTO_ICMP
    
    /**
     * @description Options for raw sockets.
     */
    @!APILevel[
        since: "22"
    ]
    public static const RAW: Int32 = IPPROTO_RAW
    
    /**
     * @description Options at the socket level.
     */
    @!APILevel[
        since: "22"
    ]
    public static const SOCKET: Int32 = SOL_SOCKET
}

/**
 * @description Defines constants for the `option` parameter in `getSocketOption` and `setSocketOption`.
 */
@!APILevel[
    since: "22"
]
public struct OptionName {
    /**
     * @description IP level: Header is included with data.
     */
    @!APILevel[
        since: "22"
    ]
    public static const IP_HDRINCL: Int32 = SOCK_IP_HDRINCL
    
    /**
     * @description IP level: Type of service.
     */
    @!APILevel[
        since: "22"
    ]
    public static const IP_TOS: Int32 = SOCK_IP_TOS
    
    /**
     * @description IP level: Time to live.
     */
    @!APILevel[
        since: "22"
    ]
    public static const IP_TTL: Int32 = SOCK_IP_TTL
    
    /**
     * @description TCP level: Number of keep-alive probes.
     */
    @!APILevel[
        since: "22"
    ]
    public static const TCP_KEEPCNT: Int32 = SOCK_TCP_KEEPCNT
    
    /**
     * @description TCP level: Idle time before starting keep-alive probes.
     */
    @!APILevel[
        since: "22"
    ]
    public static const TCP_KEEPIDLE: Int32 = SOCK_TCP_KEEPIDLE
    
    /**
     * @description TCP level: Interval between keep-alive probes.
     */
    @!APILevel[
        since: "22"
    ]
    public static const TCP_KEEPINTVL: Int32 = SOCK_TCP_KEEPINTVL
    
    /**
     * @description TCP level: Disable Nagle's algorithm.
     */
    @!APILevel[
        since: "22"
    ]
    public static const TCP_NODELAY: Int32 = SOCK_TCP_NODELAY
    
    /**
     * @description Socket level: Enable debugging.
     */
    @!APILevel[
        since: "22"
    ]
    public static const SO_DEBUG: Int32 = SOCK_DEBUG
    
    /**
     * @description Socket level: Socket has been marked to accept connections.
     */
    @!APILevel[
        since: "22"
    ]
    public static const SO_ACCEPTCONN: Int32 = SOCK_ACCEPTCONN
    
    /**
     * @description Socket level: Allow reuse of local addresses.
     */
    @!APILevel[
        since: "22"
    ]
    public static const SO_REUSEADDR: Int32 = SOCK_REUSEADDR
    
    /**
     * @description Socket level: Enable keep-alive probes.
     */
    @!APILevel[
        since: "22"
    ]
    public static const SO_KEEPALIVE: Int32 = SOCK_KEEPALIVE
    
    /**
     * @description Socket level: Bypass routing, use direct interface.
     */
    @!APILevel[
        since: "22"
    ]
    public static const SO_DONTROUTE: Int32 = SOCK_DONTROUTE
    
    /**
     * @description Socket level: Allow sending of broadcast messages.
     */
    @!APILevel[
        since: "22"
    ]
    public static const SO_BROADCAST: Int32 = SOCK_BROADCAST
    
    /**
     * @description Socket level: Linger on close if data is present.
     */
    @!APILevel[
        since: "22"
    ]
    public static const SO_LINGER: Int32 = SOCK_LINGER
    
    /**
     * @description Socket level: Receive out-of-band data in-line.
     */
    @!APILevel[
        since: "22"
    ]
    public static const SO_OOBINLINE: Int32 = SOCK_OOBINLINE
    
    /**
     * @description Socket level: Set send buffer size.
     */
    @!APILevel[
        since: "22"
    ]
    public static const SO_SNDBUF: Int32 = SOCK_SNDBUF
    
    /**
     * @description Socket level: Set receive buffer size.
     */
    @!APILevel[
        since: "22"
    ]
    public static const SO_RCVBUF: Int32 = SOCK_RCVBUF
    
    /**
     * @description Socket level: Set send timeout.
     */
    @!APILevel[
        since: "22"
    ]
    public static const SO_SNDTIMEO: Int32 = SOCK_SNDTIMEO
    
    /**
     * @description Socket level: Set receive timeout.
     */
    @!APILevel[
        since: "22"
    ]
    public static const SO_RCVTIMEO: Int32 = SOCK_RCVTIMEO
    
    /**
     * @description Socket level: Get socket error status.
     */
    @!APILevel[
        since: "22"
    ]
    public static const SO_ERROR: Int32 = SOCK_ERROR
}

/**
 * @description Represents a raw, low-level socket address, typically used for interoperability with native code.
 */
@!APILevel[
    since: "22"
]
public struct RawAddress {
    /**
     * @description The raw byte array representing the address.
     */
    @!APILevel[
        since: "22"
    ]
    public prop addr: Array<Byte>
    
    /**
     * @description Constructs a `RawAddress` from a byte array.
     * @param addr The byte array containing the address data.
     */
    @!APILevel[
        since: "22"
    ]
    public init(addr: Array<Byte>)
}

/**
 * @description Represents a TCP socket for stream-based communication.
 */
@!APILevel[
    since: "22"
]
public class TcpSocket <: StreamingSocket & Equatable<TcpSocket> & Hashable {
    /**
     * @description Creates a TCP socket and connects it to the specified address and port.
     * @param address The destination host name or IP address string.
     * @param port The destination port number.
     * @throws SocketException if address is invalid or all-zero on the Windows platform.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public init(address: String, port: UInt16)
    
    /**
     * @description Creates a TCP socket and connects it to the specified socket address.
     * @param address The destination `SocketAddress`.
     * @throws SocketException if address is invalid or all-zero on the Windows platform.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public init(address: SocketAddress)
    
    /**
     * @description Creates a TCP socket, binds it to a local address, and connects it to a remote address.
     * @param address The destination `SocketAddress`.
     * @param localAddress An optional `SocketAddress` to bind the socket to locally.
     * @throws SocketException if address is invalid or all-zero on the Windows platform.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public init(address: SocketAddress, localAddress!: ?SocketAddress)
    
    /**
     * @description The remote address to which the socket is connected.
     * @throws SocketException on socket-related errors.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public override prop remoteAddress: SocketAddress
    
    /**
     * @description The local address to which the socket is bound.
     * @throws SocketException on socket-related errors.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public override prop localAddress: SocketAddress
    
    /**
     * @description The timeout for read operations. `None` means an infinite timeout.
     * @throws SocketException on socket-related errors.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public override mut prop readTimeout: ?Duration
    
    /**
     * @description The timeout for write operations. `None` means an infinite timeout.
     * @throws SocketException on socket-related errors.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public override mut prop writeTimeout: ?Duration
    
    /**
     * @description Binds the socket to a specific network device by name.
     * @throws SocketException on socket-related errors.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public mut prop bindToDevice: ?String
    
    /**
     * @description The TCP keep-alive configuration. Setting to `None` disables keep-alive.
     * @throws SocketException on socket-related errors.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public mut prop keepAlive: ?SocketKeepAliveConfig
    
    /**
     * @description Enables or disables Nagle's algorithm (TCP_NODELAY). `true` disables the algorithm.
     * @throws SocketException on socket-related errors.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public mut prop noDelay: Bool
    
    /**
     * @description Enables or disables quick acknowledgment.
     * @throws SocketException on socket-related errors.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public mut prop quickAcknowledge: Bool
    
    /**
     * @description The linger-on-close timeout. `None` disables lingering.
     * @throws SocketException on socket-related errors.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public mut prop linger: ?Duration
    
    /**
     * @description The size of the socket send buffer in bytes.
     * @throws SocketException on socket-related errors.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public mut prop sendBufferSize: Int64
    
    /**
     * @description The size of the socket receive buffer in bytes.
     * @throws SocketException on socket-related errors.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public mut prop receiveBufferSize: Int64
    
    /**
     * @description Reads data from the socket into the provided buffer.
     * @param buffer The buffer to read data into.
     * @returns The number of bytes read, or -1 if the end of the stream is reached.
     * @throws SocketException on read errors.
     * @throws IllegalArgumentException if the buffer is too small to read.
     */
    @!APILevel[
        since: "22",
        permission: "ohos.permission.GET_NETWORK_INFO" & "ohos.permission.INTERNET",
        throwexception: true
    ]
    public override func read(buffer: Array<Byte>): Int64
    
    /**
     * @description Writes data from the provided payload to the socket.
     * @param payload The byte array of data to write.
     * @throws IllegalArgumentException if the buffer size is zero or write fails.
     * @throws SocketException on write errors.
     */
    @!APILevel[
        since: "22",
        permission: "ohos.permission.GET_NETWORK_INFO" & "ohos.permission.INTERNET",
        throwexception: true
    ]
    public override func write(payload: Array<Byte>): Unit
    
    /**
     * @description Connects the socket to its configured remote address, with an optional timeout.
     * @param timeout An optional duration to wait for the connection.
     * @throws IllegalArgumentException if the remote address is invalid, or the connection timeout is less than 0, or the timeout is less than 0.
     * @throws SocketException on connection failure.
     */
    @!APILevel[
        since: "22",
        permission: "ohos.permission.GET_NETWORK_INFO" & "ohos.permission.INTERNET",
        throwexception: true
    ]
    public func connect(timeout!: ?Duration = None): Unit
    
    /**
     * @description Gets a raw socket option value.
     * @param level The option level (e.g., `OptionLevel.SOCKET`).
     * @param option The option name (e.g., `OptionName.SO_KEEPALIVE`).
     * @param value A C pointer to a buffer to store the option value.
     * @param valueLength A C pointer to the length of the value buffer.
     * @throws SocketException on failure to get the option.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func getSocketOption(
        level: Int32,
        option: Int32,
        value: CPointer<Unit>,
        valueLength: CPointer<UIntNative>
    ): Unit
    
    /**
     * @description Sets a raw socket option value.
     * @param level The option level.
     * @param option The option name.
     * @param value A C pointer to the option value.
     * @param valueLength The length of the option value.
     * @throws SocketException on failure to set the option.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func setSocketOption(
        level: Int32,
        option: Int32,
        value: CPointer<Unit>,
        valueLength: UIntNative
    ): Unit
    
    /**
     * @description Gets a socket option value of type `IntNative`.
     * @param level The option level.
     * @param option The option name.
     * @returns The integer value of the socket option.
     * @throws SocketException on failure to get the option.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func getSocketOptionIntNative(
        level: Int32,
        option: Int32
    ): IntNative
    
    /**
     * @description Sets a socket option value of type `IntNative`.
     * @param level The option level.
     * @param option The option name.
     * @param value The integer value to set.
     * @throws SocketException on failure to set the option.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func setSocketOptionIntNative(
        level: Int32,
        option: Int32,
        value: IntNative
    ): Unit
    
    /**
     * @description Gets a boolean socket option value.
     * @param level The option level.
     * @param option The option name.
     * @returns The boolean value of the socket option.
     * @throws SocketException on failure to get the option.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func getSocketOptionBool(
        level: Int32,
        option: Int32
    ): Bool
    
    /**
     * @description Sets a boolean socket option value.
     * @param level The option level.
     * @param option The option name.
     * @param value The boolean value to set.
     * @throws SocketException on failure to set the option.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func setSocketOptionBool(
        level: Int32,
        option: Int32,
        value: Bool
    ): Unit
    
    /**
     * @description Closes the socket, releasing any associated resources.
     */
    @!APILevel[
        since: "22",
        permission: "ohos.permission.GET_NETWORK_INFO" & "ohos.permission.INTERNET"
    ]
    public func close(): Unit
    
    /**
     * @description Checks if the socket is closed.
     * @returns `true` if the socket is closed, `false` otherwise.
     */
    @!APILevel[
        since: "22",
        permission: "ohos.permission.GET_NETWORK_INFO" & "ohos.permission.INTERNET"
    ]
    public func isClosed(): Bool
    
    /**
     * @description Checks if this `TcpSocket` is equal to another.
     * @param other The `TcpSocket` to compare against.
     * @returns `true` if they are equal, `false` otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    public override operator func ==(other: TcpSocket): Bool
    
    /**
     * @description Checks if this `TcpSocket` is not equal to another.
     * @param other The `TcpSocket` to compare against.
     * @returns `true` if they are not equal, `false` otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    public override operator func !=(other: TcpSocket): Bool
    
    /**
     * @description Computes the hash code for this `TcpSocket`.
     * @returns The hash code.
     */
    @!APILevel[
        since: "22"
    ]
    public override func hashCode(): Int64
    
    /**
     * @description Returns a string representation of the TCP socket.
     * @returns A string detailing the socket's state and addresses.
     */
    @!APILevel[
        since: "22"
    ]
    public override func toString(): String
}

/**
 * @description Represents a server socket that listens for incoming TCP connections.
 */
@!APILevel[
    since: "22"
]
public class TcpServerSocket <: ServerSocket {
    /**
     * @description The local address and port the server socket is listening on.
     * @throws SocketException on socket-related errors.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public override prop localAddress: SocketAddress
    
    /**
     * @description Creates a server socket that will bind to the specified port on the wildcard address.
     * @param bindAt The port number to listen on.
     * @throws IllegalArgumentException if the port is invalid.
     * @throws SocketException on socket creation or binding errors.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public init(bindAt!: UInt16)
    
    /**
     * @description Creates a server socket and binds it to the specified local socket address.
     * @param bindAt The `SocketAddress` to bind to.
     */
    @!APILevel[
        since: "22"
    ]
    public init(bindAt!: SocketAddress)
    
    /**
     * @description Enables or disables the SO_REUSEADDR socket option.
     * @throws SocketException on socket-related errors.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public mut prop reuseAddress: Bool
    
    /**
     * @description Enables or disables the SO_REUSEPORT socket option.
     * @throws SocketException on socket-related errors.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public mut prop reusePort: Bool
    
    /**
     * @description The size of the socket send buffer in bytes.
     * @throws SocketException on socket-related errors.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public mut prop sendBufferSize: Int64
    
    /**
     * @description The size of the socket receive buffer in bytes.
     * @throws SocketException on socket-related errors.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public mut prop receiveBufferSize: Int64
    
    /**
     * @description The network interface to bind to.
     */
    @!APILevel[
        since: "22"
    ]
    public mut prop bindToDevice: ?String
    
    /**
     * @description backlog size.
     * @throws SocketException if use backlogSize after bind.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public mut prop backlogSize: Int64
    
    /**
     * @description Binds the server socket to its configured address and begins listening.
     * @throws SocketException on binding or listening failure.
     */
    @!APILevel[
        since: "22",
        permission: "ohos.permission.GET_NETWORK_INFO" & "ohos.permission.INTERNET",
        throwexception: true
    ]
    public override func bind(): Unit
    
    /**
     * @description Accepts an incoming connection, waiting up to the specified timeout.
     * @param timeout An optional duration to wait for a connection. `None` means wait indefinitely.
     * @returns A `TcpSocket` for the new connection.
     * @throws SocketException on accept failure or timeout.
     */
    @!APILevel[
        since: "22",
        permission: "ohos.permission.GET_NETWORK_INFO" & "ohos.permission.INTERNET",
        throwexception: true
    ]
    public override func accept(timeout!: ?Duration): TcpSocket
    
    /**
     * @description Accepts an incoming connection, waiting indefinitely.
     * @returns A `TcpSocket` for the new connection.
     * @throws SocketException on accept failure.
     */
    @!APILevel[
        since: "22",
        permission: "ohos.permission.GET_NETWORK_INFO" & "ohos.permission.INTERNET",
        throwexception: true
    ]
    public override func accept(): TcpSocket
    
    /**
     * @description Closes the server socket, releasing any associated resources.
     */
    @!APILevel[
        since: "22",
        permission: "ohos.permission.GET_NETWORK_INFO" & "ohos.permission.INTERNET"
    ]
    public override func close(): Unit
    
    /**
     * @description Checks if the server socket is closed.
     * @returns `true` if the socket is closed, `false` otherwise.
     */
    @!APILevel[
        since: "22",
        permission: "ohos.permission.GET_NETWORK_INFO" & "ohos.permission.INTERNET"
    ]
    public override func isClosed(): Bool
    
    /**
     * @description Gets a raw socket option value.
     * @param level The option level.
     * @param option The option name.
     * @param value A C pointer to a buffer to store the option value.
     * @param valueLength A C pointer to the length of the value buffer.
     * @throws SocketException on failure to get the option.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func getSocketOption(
        level: Int32,
        option: Int32,
        value: CPointer<Unit>,
        valueLength: CPointer<UIntNative>
    ): Unit
    
    /**
     * @description Sets a raw socket option value.
     * @param level The option level.
     * @param option The option name.
     * @param value A C pointer to the option value.
     * @param valueLength The length of the option value.
     * @throws SocketException on failure to set the option.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func setSocketOption(
        level: Int32,
        option: Int32,
        value: CPointer<Unit>,
        valueLength: UIntNative
    ): Unit
    
    /**
     * @description Gets a socket option value of type `IntNative`.
     * @param level The option level.
     * @param option The option name.
     * @returns The integer value of the socket option.
     * @throws SocketException on failure to get the option.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func getSocketOptionIntNative(
        level: Int32,
        option: Int32
    ): IntNative
    
    /**
     * @description Sets a socket option value of type `IntNative`.
     * @param level The option level.
     * @param option The option name.
     * @param value The integer value to set.
     * @throws SocketException on failure to set the option.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func setSocketOptionIntNative(
        level: Int32,
        option: Int32,
        value: IntNative
    ): Unit
    
    /**
     * @description Gets a boolean socket option value.
     * @param level The option level.
     * @param option The option name.
     * @returns The boolean value of the socket option.
     * @throws SocketException on failure to get the option.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func getSocketOptionBool(
        level: Int32,
        option: Int32
    ): Bool
    
    /**
     * @description Sets a boolean socket option value.
     * @param level The option level.
     * @param option The option name.
     * @param value The boolean value to set.
     * @throws SocketException on failure to set the option.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func setSocketOptionBool(
        level: Int32,
        option: Int32,
        value: Bool
    ): Unit
    
    /**
     * @description Returns a string representation of the socket.
     * @returns A string representation of the socket.
     */
    @!APILevel[
        since: "22"
    ]
    public override func toString(): String
}

/**
 * @description Represents a UDP socket for datagram-based communication.
 */
@!APILevel[
    since: "22"
]
public class UdpSocket <: DatagramSocket {
    /**
     * @description Creates a UDP socket and binds it to the specified port on the wildcard address.
     * @param bindAt The port number to bind to.
     * @throws SocketException on socket creation or binding errors.
     * @throws IllegalArgumentException if the port is invalid.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public init(bindAt!: UInt16)
    
    /**
     * @description Creates a UDP socket and binds it to the specified local socket address.
     * @param bindAt The `SocketAddress` to bind to.
     * @throws SocketException on socket creation or binding errors.
     * @throws IllegalArgumentException if the address is invalid.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public init(bindAt!: SocketAddress)
    
    /**
     * @description The remote address if the socket is connected.
     * @throws SocketException on socket-related errors.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public override prop remoteAddress: ?SocketAddress
    
    /**
     * @description The local address to which the socket is bound.
     * @throws SocketException on socket-related errors.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public override prop localAddress: SocketAddress
    
    /**
     * @description The timeout for receive operations. `None` means an infinite timeout.
     * @throws SocketException on socket-related errors.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public override mut prop receiveTimeout: ?Duration
    
    /**
     * @description The timeout for send operations. `None` means an infinite timeout.
     * @throws SocketException on socket-related errors.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public override mut prop sendTimeout: ?Duration
    
    /**
     * @description Closes the UDP socket.
     */
    @!APILevel[
        since: "22",
        permission: "ohos.permission.GET_NETWORK_INFO" & "ohos.permission.INTERNET"
    ]
    public override func close(): Unit
    
    /**
     * @description Checks if the UDP socket is closed.
     * @returns `true` if the socket is closed, `false` otherwise.
     */
    @!APILevel[
        since: "22",
        permission: "ohos.permission.GET_NETWORK_INFO" & "ohos.permission.INTERNET"
    ]
    public override func isClosed(): Bool
    
    /**
     * @description Binds the socket to its configured local address.
     * @throws SocketException on binding failure.
     */
    @!APILevel[
        since: "22",
        permission: "ohos.permission.GET_NETWORK_INFO" & "ohos.permission.INTERNET",
        throwexception: true
    ]
    public func bind(): Unit
    
    /**
     * @description Connects the socket to a specific remote address, allowing `send` and `receive` to be used.
     * @param remote The remote `SocketAddress` to connect to.
     * @throws SocketException on connection failure.
     * @throws IllegalArgumentException if the address is invalid.
     */
    @!APILevel[
        since: "22",
        permission: "ohos.permission.GET_NETWORK_INFO" & "ohos.permission.INTERNET",
        throwexception: true
    ]
    public func connect(remote: SocketAddress): Unit
    
    /**
     * @description Disconnects the socket from its remote address.
     * @throws SocketException on disconnection failure.
     */
    @!APILevel[
        since: "22",
        permission: "ohos.permission.GET_NETWORK_INFO" & "ohos.permission.INTERNET",
        throwexception: true
    ]
    public func disconnect(): Unit
    
    /**
     * @description Receives a datagram, storing the data and source address.
     * @param buffer The buffer to store the received data.
     * @returns A tuple containing the source `SocketAddress` and the number of bytes received.
     * @throws SocketException if the buffer is too small.
     */
    @!APILevel[
        since: "22",
        permission: "ohos.permission.GET_NETWORK_INFO" & "ohos.permission.INTERNET",
        throwexception: true
    ]
    public override func receiveFrom(buffer: Array<Byte>): (SocketAddress, Int64)
    
    /**
     * @description Sends a datagram to a specified recipient.
     * @param recipient The destination `SocketAddress`.
     * @param payload The byte array of data to send.
     * @throws SocketException on send failure.
     */
    @!APILevel[
        since: "22",
        permission: "ohos.permission.GET_NETWORK_INFO" & "ohos.permission.INTERNET",
        throwexception: true
    ]
    public override func sendTo(recipient: SocketAddress, payload: Array<Byte>): Unit
    
    /**
     * @description Sends a datagram on a connected socket.
     * @param payload The byte array of data to send.
     * @throws SocketException if the payload is too large or send fails.
     */
    @!APILevel[
        since: "22",
        permission: "ohos.permission.GET_NETWORK_INFO" & "ohos.permission.INTERNET",
        throwexception: true
    ]
    public func send(payload: Array<Byte>): Unit
    
    /**
     * @description Receives a datagram from a connected socket.
     * @param buffer The buffer to store the received data.
     * @returns The number of bytes received.
     */
    @!APILevel[
        since: "22",
        permission: "ohos.permission.GET_NETWORK_INFO" & "ohos.permission.INTERNET"
    ]
    public func receive(buffer: Array<Byte>): Int64
    
    /**
     * @description Enables or disables the SO_REUSEPORT socket option.
     * @throws SocketException on socket-related errors.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public mut prop reusePort: Bool
    
    /**
     * @description Enables or disables the SO_REUSEADDR socket option.
     * @throws SocketException on socket-related errors.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public mut prop reuseAddress: Bool
    
    /**
     * @description The size of the socket send buffer in bytes.
     * @throws SocketException on socket-related errors.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public mut prop sendBufferSize: Int64
    
    /**
     * @description The size of the socket receive buffer in bytes.
     * @throws SocketException on socket-related errors.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public mut prop receiveBufferSize: Int64
    
    /**
     * @description Gets a raw socket option value.
     * @param level The option level.
     * @param option The option name.
     * @param value A C pointer to a buffer to store the option value.
     * @param valueLength A C pointer to the length of the value buffer.
     * @throws SocketException on failure to get the option.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func getSocketOption(
        level: Int32,
        option: Int32,
        value: CPointer<Unit>,
        valueLength: CPointer<UIntNative>
    ): Unit
    
    /**
     * @description Sets a raw socket option value.
     * @param level The option level.
     * @param option The option name.
     * @param value A C pointer to the option value.
     * @param valueLength The length of the option value.
     * @throws SocketException on failure to set the option.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func setSocketOption(
        level: Int32,
        option: Int32,
        value: CPointer<Unit>,
        valueLength: UIntNative
    ): Unit
    
    /**
     * @description Gets a socket option value of type `IntNative`.
     * @param level The option level.
     * @param option The option name.
     * @returns The integer value of the socket option.
     * @throws SocketException on failure to get the option.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func getSocketOptionIntNative(
        level: Int32,
        option: Int32
    ): IntNative
    
    /**
     * @description Sets a socket option value of type `IntNative`.
     * @param level The option level.
     * @param option The option name.
     * @param value The integer value to set.
     * @throws SocketException on failure to set the option.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func setSocketOptionIntNative(
        level: Int32,
        option: Int32,
        value: IntNative
    ): Unit
    
    /**
     * @description Gets a boolean socket option value.
     * @param level The option level.
     * @param option The option name.
     * @returns The boolean value of the socket option.
     * @throws SocketException on failure to get the option.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func getSocketOptionBool(
        level: Int32,
        option: Int32
    ): Bool
    
    /**
     * @description Sets a boolean socket option value.
     * @param level The option level.
     * @param option The option name.
     * @param value The boolean value to set.
     * @throws SocketException on failure to set the option.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func setSocketOptionBool(
        level: Int32,
        option: Int32,
        value: Bool
    ): Unit
    
    /**
     * @description Returns a string representation of the socket.
     * @returns A string representation of the socket.
     */
    @!APILevel[
        since: "22"
    ]
    public override func toString(): String
}

/**
 * @description Represents a Unix domain socket for inter-process communication on the same host.
 */
@!APILevel[
    since: "22"
]
public class UnixSocket <: StreamingSocket {
    /**
     * @description Creates a Unix socket and connects it to the specified path.
     * @param path The filesystem path to connect to.
     * @param localPath An optional local path to bind to before connecting.
     * @throws SocketException on socket creation or connection errors.
     * @throws IllegalArgumentException if arguments are invalid.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public init(path: String, localPath!: ?String = None)
    
    /**
     * @description Creates a Unix socket and connects it to the specified socket address.
     * @param address The destination `SocketAddress` (must be a Unix domain address).
     * @param localAddress An optional local `SocketAddress` to bind to.
     * @throws SocketException on socket creation or connection errors.
     * @throws IllegalArgumentException if arguments are invalid.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public init(address: SocketAddress, localAddress!: ?SocketAddress = None)
    
    /**
     * @description The remote address to which the socket is connected.
     * @throws SocketException on socket-related errors.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public override prop remoteAddress: SocketAddress
    
    /**
     * @description The local address to which the socket is bound.
     * @throws SocketException on socket-related errors.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public override prop localAddress: SocketAddress
    
    /**
     * @description The timeout for read operations. `None` means an infinite timeout.
     * @throws SocketException on socket-related errors.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public override mut prop readTimeout: ?Duration
    
    /**
     * @description The timeout for write operations. `None` means an infinite timeout.
     * @throws SocketException on socket-related errors.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public override mut prop writeTimeout: ?Duration
    
    /**
     * @description The size of the socket send buffer in bytes.
     * @throws SocketException on socket-related errors.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public mut prop sendBufferSize: Int64
    
    /**
     * @description The size of the socket receive buffer in bytes.
     * @throws SocketException on socket-related errors.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public mut prop receiveBufferSize: Int64
    
    /**
     * @description Reads data from the socket into the provided buffer.
     * @param buffer The buffer to read data into.
     * @returns The number of bytes read, or -1 if the end of the stream is reached.
     * @throws SocketException if the buffer is too small.
     */
    @!APILevel[
        since: "22",
        permission: "ohos.permission.GET_NETWORK_INFO" & "ohos.permission.INTERNET",
        throwexception: true
    ]
    public override func read(buffer: Array<Byte>): Int64
    
    /**
     * @description Writes data from the provided payload to the socket.
     * @param buffer The byte array of data to write.
     * @throws SocketException if the buffer size is zero or write fails.
     */
    @!APILevel[
        since: "22",
        permission: "ohos.permission.GET_NETWORK_INFO" & "ohos.permission.INTERNET",
        throwexception: true
    ]
    public override func write(buffer: Array<Byte>): Unit
    
    /**
     * @description Connects the socket to its configured remote address, with an optional timeout.
     * @param timeout An optional duration to wait for the connection.
     * @throws IllegalArgumentException if timeout is negative.
     * @throws SocketException on connection failure.
     */
    @!APILevel[
        since: "22",
        permission: "ohos.permission.GET_NETWORK_INFO" & "ohos.permission.INTERNET",
        throwexception: true
    ]
    public func connect(timeout!: ?Duration = None): Unit
    
    /**
     * @description Gets a raw socket option value.
     * @param level The option level (e.g., `OptionLevel.SOCKET`).
     * @param option The option name (e.g., `OptionName.SO_KEEPALIVE`).
     * @param value A C pointer to a buffer to store the option value.
     * @param valueLength A C pointer to the length of the value buffer.
     * @throws SocketException on failure to get the option.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func getSocketOption(
        level: Int32,
        option: Int32,
        value: CPointer<Unit>,
        valueLength: CPointer<UIntNative>
    ): Unit
    
    /**
     * @description Sets a raw socket option value.
     * @param level The option level.
     * @param option The option name.
     * @param value A C pointer to the option value.
     * @param valueLength The length of the option value.
     * @throws SocketException on failure to set the option.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func setSocketOption(
        level: Int32,
        option: Int32,
        value: CPointer<Unit>,
        valueLength: UIntNative
    ): Unit
    
    /**
     * @description Gets a socket option value of type `IntNative`.
     * @param level The option level.
     * @param option The option name.
     * @returns The integer value of the socket option.
     * @throws SocketException on failure to get the option.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func getSocketOptionIntNative(
        level: Int32,
        option: Int32
    ): IntNative
    
    /**
     * @description Sets a socket option value of type `IntNative`.
     * @param level The option level.
     * @param option The option name.
     * @param value The integer value to set.
     * @throws SocketException on failure to set the option.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func setSocketOptionIntNative(
        level: Int32,
        option: Int32,
        value: IntNative
    ): Unit
    
    /**
     * @description Gets a boolean socket option value.
     * @param level The option level.
     * @param option The option name.
     * @returns The boolean value of the socket option.
     * @throws SocketException on failure to get the option.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func getSocketOptionBool(
        level: Int32,
        option: Int32
    ): Bool
    
    /**
     * @description Sets a boolean socket option value.
     * @param level The option level.
     * @param option The option name.
     * @param value The boolean value to set.
     * @throws SocketException on failure to set the option.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func setSocketOptionBool(
        level: Int32,
        option: Int32,
        value: Bool
    ): Unit
    
    /**
     * @description Closes the socket, releasing any associated resources.
     */
    @!APILevel[
        since: "22",
        permission: "ohos.permission.GET_NETWORK_INFO" & "ohos.permission.INTERNET"
    ]
    public func close(): Unit
    
    /**
     * @description Checks if the socket is closed.
     * @returns `true` if the socket is closed, `false` otherwise.
     */
    @!APILevel[
        since: "22",
        permission: "ohos.permission.GET_NETWORK_INFO" & "ohos.permission.INTERNET"
    ]
    public func isClosed(): Bool
    
    /**
     * @description Returns a string representation of the Unix socket.
     * @returns A string detailing the socket's state and addresses.
     */
    @!APILevel[
        since: "22"
    ]
    public override func toString(): String
}

/**
 * @description Represents a server socket that listens for incoming Unix domain socket connections.
 */
@!APILevel[
    since: "22"
]
public class UnixServerSocket <: ServerSocket {
    /**
     * @description The local address (filesystem path) the server socket is listening on.
     * @throws SocketException on socket-related errors.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public override prop localAddress: SocketAddress
    
    /**
     * @description Creates a Unix server socket and binds it to the specified filesystem path.
     * @param bindAt The path to bind to.
     * @throws SocketException on socket creation or binding errors.
     * @throws IllegalArgumentException if the path is invalid.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public init(bindAt!: String)
    
    /**
     * @description Creates a Unix server socket and binds it to the specified socket address.
     * @param bindAt The `SocketAddress` to bind to (must be a Unix domain address).
     * @throws SocketException on socket creation or binding errors.
     * @throws IllegalArgumentException if the address is invalid.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public init(bindAt!: SocketAddress)
    
    /**
     * @description The size of the socket send buffer in bytes.
     * @throws SocketException on socket-related errors.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public mut prop sendBufferSize: Int64
    
    /**
     * @description The size of the socket receive buffer in bytes.
     * @throws SocketException on socket-related errors.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public mut prop receiveBufferSize: Int64
    
    /**
     * @description backlog size.
     * @throws SocketException if use backlogSize after bind.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public mut prop backlogSize: Int64
    
    /**
     * @description Binds the server socket to its configured address and begins listening.
     * @throws SocketException on binding or listening failure.
     */
    @!APILevel[
        since: "22",
        permission: "ohos.permission.GET_NETWORK_INFO" & "ohos.permission.INTERNET",
        throwexception: true
    ]
    public override func bind(): Unit
    
    /**
     * @description Accepts an incoming connection, waiting up to the specified timeout.
     * @param timeout An optional duration to wait for a connection. `None` means wait indefinitely.
     * @returns A `UnixSocket` for the new connection.
     * @throws SocketException on accept failure or timeout.
     */
    @!APILevel[
        since: "22",
        permission: "ohos.permission.GET_NETWORK_INFO" & "ohos.permission.INTERNET",
        throwexception: true
    ]
    public override func accept(timeout!: ?Duration): UnixSocket
    
    /**
     * @description Accepts an incoming connection, waiting indefinitely.
     * @returns A `UnixSocket` for the new connection.
     * @throws SocketException on accept failure.
     */
    @!APILevel[
        since: "22",
        permission: "ohos.permission.GET_NETWORK_INFO" & "ohos.permission.INTERNET",
        throwexception: true
    ]
    public override func accept(): UnixSocket
    
    /**
     * @description Closes the server socket, releasing any associated resources.
     */
    @!APILevel[
        since: "22",
        permission: "ohos.permission.GET_NETWORK_INFO" & "ohos.permission.INTERNET"
    ]
    public override func close(): Unit
    
    /**
     * @description Checks if the server socket is closed.
     * @returns `true` if the socket is closed, `false` otherwise.
     */
    @!APILevel[
        since: "22",
        permission: "ohos.permission.GET_NETWORK_INFO" & "ohos.permission.INTERNET"
    ]
    public override func isClosed(): Bool
    
    /**
     * @description Gets a raw socket option value.
     * @param level The option level.
     * @param option The option name.
     * @param value A C pointer to a buffer to store the option value.
     * @param valueLength A C pointer to the length of the value buffer.
     * @throws SocketException on failure to get the option.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func getSocketOption(
        level: Int32,
        option: Int32,
        value: CPointer<Unit>,
        valueLength: CPointer<UIntNative>
    ): Unit
    
    /**
     * @description Sets a raw socket option value.
     * @param level The option level.
     * @param option The option name.
     * @param value A C pointer to the option value.
     * @param valueLength The length of the option value.
     * @throws SocketException on failure to set the option.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func setSocketOption(
        level: Int32,
        option: Int32,
        value: CPointer<Unit>,
        valueLength: UIntNative
    ): Unit
    
    /**
     * @description Gets a socket option value of type `IntNative`.
     * @param level The option level.
     * @param option The option name.
     * @returns The integer value of the socket option.
     * @throws SocketException on failure to get the option.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func getSocketOptionIntNative(
        level: Int32,
        option: Int32
    ): IntNative
    
    /**
     * @description Sets a socket option value of type `IntNative`.
     * @param level The option level.
     * @param option The option name.
     * @param value The integer value to set.
     * @throws SocketException on failure to set the option.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func setSocketOptionIntNative(
        level: Int32,
        option: Int32,
        value: IntNative
    ): Unit
    
    /**
     * @description Gets a boolean socket option value.
     * @param level The option level.
     * @param option The option name.
     * @returns The boolean value of the socket option.
     * @throws SocketException on failure to get the option.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func getSocketOptionBool(
        level: Int32,
        option: Int32
    ): Bool
    
    /**
     * @description Sets a boolean socket option value.
     * @param level The option level.
     * @param option The option name.
     * @param value The boolean value to set.
     * @throws SocketException on failure to set the option.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func setSocketOptionBool(
        level: Int32,
        option: Int32,
        value: Bool
    ): Unit
    
    /**
     * @description Returns a string representation of the socket.
     * @returns A string representation of the socket.
     */
    @!APILevel[
        since: "22"
    ]
    public override func toString(): String
}


/**
 * @description Represents a Unix domain datagram socket that can optionally be bound and/or connected to a single peer. Unlike a stream socket it preserves datagram message boundaries and may stay unconnected to communicate with multiple peers.
 */
@!APILevel[
    since: "22"
]
public class UnixDatagramSocket <: DatagramSocket {
    /**
     * @description Create an unbound Unix datagram socket with an intended local filesystem path. The actual bind happens when bind() is invoked later.
     * @param bindAt local path to bind at later; must refer to a non‑existing entry that will be created on bind
     * @throws SocketException when underlying socket creation failure
     * @throws IllegalArgumentException when path invalid (e.g. empty or contains illegal bytes)
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public init(bindAt!: String)
    
    /**
     * @description Create an unbound Unix datagram socket with an already constructed Unix socket address.
     * @param bindAt Unix socket address that will be used when bind() is invoked
     * @throws SocketException when underlying socket creation failure
     * @throws IllegalArgumentException when address family or value is invalid
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public init(bindAt!: SocketAddress)
    
    /**
     * @description Remote peer address this socket is connected to, or None when the socket is currently unconnected.
     * @returns Optional remote socket address; None means no peer filtering is applied
     * @throws SocketException when socket already closed
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public override prop remoteAddress: ?SocketAddress
    
    /**
     * @description Local address this socket is (or will be) bound at. Accessing before bind() may raise an error if not yet bound.
     * @returns Local socket address; throws if not bound yet
     * @throws SocketException when socket closed or not yet bound
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public override prop localAddress: SocketAddress
    
    /**
     * @description Receive operation timeout. None means infinite wait. Set value is normalized to clock granularity and validated to be non‑negative.
     * @returns Current timeout duration or None
     * @throws SocketException when socket already closed
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public override mut prop receiveTimeout: ?Duration
    
    /**
     * @description Send operation timeout. None means infinite wait. Set value is normalized to clock granularity and validated to be non‑negative.
     * @returns Current timeout duration or None
     * @throws SocketException when socket already closed
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public override mut prop sendTimeout: ?Duration
    
    /**
     * @description Close the socket releasing all underlying resources. Safe to invoke multiple times (reentrant).
     */
    @!APILevel[
        since: "22",
        permission: "ohos.permission.GET_NETWORK_INFO" & "ohos.permission.INTERNET"
    ]
    public override func close(): Unit
    
    /**
     * @description Checks if the socket is closed.
     * @returns `true` if the socket is closed, `false` otherwise.
     */
    @!APILevel[
        since: "22",
        permission: "ohos.permission.GET_NETWORK_INFO" & "ohos.permission.INTERNET"
    ]
    public override func isClosed(): Bool
    
    /**
     * @description Bind the socket to its configured local address creating the filesystem entry atomically.
     * @throws SocketException when native bind failure or path already exists
     */
    @!APILevel[
        since: "22",
        permission: "ohos.permission.GET_NETWORK_INFO" & "ohos.permission.INTERNET",
        throwexception: true
    ]
    public func bind(): Unit
    
    /**
     * @description Connects the socket to a specific peer path, restricting subsequent send/receive operations to that peer until disconnect().
     * @param remotePath filesystem path to an existing bound Unix datagram socket file
     * @throws IllegalArgumentException when invalid remote path
     * @throws SocketException when native connect failure
     */
    @!APILevel[
        since: "22",
        permission: "ohos.permission.GET_NETWORK_INFO" & "ohos.permission.INTERNET",
        throwexception: true
    ]
    public func connect(remotePath: String): Unit
    
    /**
     * @description Connect the socket to a specific peer address object, restricting subsequent send/receive operations to that peer until disconnect().
     * @param remote Unix socket address of an existing bound datagram peer
     * @throws IllegalArgumentException when invalid remote address
     * @throws SocketException when native connect failure
     */
    @!APILevel[
        since: "22",
        permission: "ohos.permission.GET_NETWORK_INFO" & "ohos.permission.INTERNET",
        throwexception: true
    ]
    public func connect(remote: SocketAddress): Unit
    
    /**
     * @description Disconnect from the previously connected peer so the socket can communicate with any peer again. No effect if not connected.
     * @throws SocketException when native disconnect failure or not bound
     */
    @!APILevel[
        since: "22",
        permission: "ohos.permission.GET_NETWORK_INFO" & "ohos.permission.INTERNET",
        throwexception: true
    ]
    public func disconnect(): Unit
    
    /**
     * @description Receive a datagram from any peer writing data into buffer and returning sender address and actual datagram size. Size may exceed buffer length indicating truncation.
     * @param buffer target byte array to store the datagram (must not be empty)
     * @returns Pair (sender address, received datagram size in bytes) — size may be greater than buffer.size if truncated
     * @throws SocketException when read failure or timeout
     */
    @!APILevel[
        since: "22",
        permission: "ohos.permission.GET_NETWORK_INFO" & "ohos.permission.INTERNET",
        throwexception: true
    ]
    public override func receiveFrom(buffer: Array<Byte>): (SocketAddress, Int64)
    
    /**
     * @description Send a datagram with the provided payload to the specified recipient address.
     * @param recipient target peer address
     * @param payload datagram bytes to send
     * @throws SocketException when native send failure
     */
    @!APILevel[
        since: "22",
        permission: "ohos.permission.GET_NETWORK_INFO" & "ohos.permission.INTERNET",
        throwexception: true
    ]
    public override func sendTo(recipient: SocketAddress, payload: Array<Byte>): Unit
    
    /**
     * @description Send a datagram payload to the preconfigured peer set via connect().
     * @param payload datagram bytes to send
     * @throws SocketException when native send failure
     */
    @!APILevel[
        since: "22",
        permission: "ohos.permission.GET_NETWORK_INFO" & "ohos.permission.INTERNET",
        throwexception: true
    ]
    public func send(payload: Array<Byte>): Unit
    
    /**
     * @description Receive a datagram payload from the preconfigured peer into buffer. Fails if not connected.
     * @param buffer destination byte array (must not be empty)
     * @returns Size of received datagram; may exceed buffer length if truncated
     */
    @!APILevel[
        since: "22",
        permission: "ohos.permission.GET_NETWORK_INFO" & "ohos.permission.INTERNET"
    ]
    public func receive(buffer: Array<Byte>): Int64
    
    /**
     * @description Hint for native send buffer size (SO_SNDBUF). May not reflect actual buffer size due to OS policies.
     * @returns Configured or reported send buffer size in bytes
     * @throws SocketException when failed to query or set option / socket closed
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public mut prop sendBufferSize: Int64
    
    /**
     * @description Hint for native receive buffer size (SO_RCVBUF). May not reflect actual buffer size due to OS policies.
     * @returns Configured or reported receive buffer size in bytes
     * @throws SocketException when failed to query or set option / socket closed
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public mut prop receiveBufferSize: Int64
    
    /**
     * @description Read a raw socket option value into the supplied buffer writing resulting size to valueLength.
     * @param level protocol level at which the option resides
     * @param option numeric option identifier
     * @param value pointer to memory where option value will be written
     * @param valueLength pointer to size variable (in/out) describing buffer size then actual value size
     * @throws SocketException when native getsockopt failure
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func getSocketOption(
        level: Int32,
        option: Int32,
        value: CPointer<Unit>,
        valueLength: CPointer<UIntNative>
    ): Unit
    
    /**
     * @description Set a raw socket option value from the supplied buffer.
     * @param level protocol level at which the option resides
     * @param option numeric option identifier
     * @param value pointer to memory containing option value
     * @param valueLength size (in bytes) of value buffer
     * @throws SocketException when native setsockopt failure
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func setSocketOption(
        level: Int32,
        option: Int32,
        value: CPointer<Unit>,
        valueLength: UIntNative
    ): Unit
    
    /**
     * @description Read a numeric socket option (fits IntNative) and return its value.
     * @param level protocol level at which the option resides
     * @param option numeric option identifier
     * @returns Option value as IntNative
     * @throws SocketException when native getsockopt failure
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func getSocketOptionIntNative(
        level: Int32,
        option: Int32
    ): IntNative
    
    /**
     * @description Set a numeric IntNative value for the specified socket option.
     * @param level protocol level at which the option resides
     * @param option numeric option identifier
     * @param value numeric value to set
     * @throws SocketException when native setsockopt failure
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func setSocketOptionIntNative(
        level: Int32,
        option: Int32,
        value: IntNative
    ): Unit
    
    /**
     * @description Read a boolean socket option converting non‑zero integer to true and zero to false.
     * @param level protocol level at which the option resides
     * @param option numeric option identifier
     * @returns Boolean interpretation of the option value
     * @throws SocketException when native getsockopt failure
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func getSocketOptionBool(
        level: Int32,
        option: Int32
    ): Bool
    
    /**
     * @description Set a boolean socket option converting true->1 and false->0.
     * @param level protocol level at which the option resides
     * @param option numeric option identifier
     * @param value boolean value to set
     * @throws SocketException when native setsockopt failure
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func setSocketOptionBool(
        level: Int32,
        option: Int32,
        value: Bool
    ): Unit
    
    /**
     * @description Human readable representation including internal implementation info for debugging.
     * @returns String form UnixDatagramSocket(<internal state>)
     */
    @!APILevel[
        since: "22"
    ]
    public override func toString(): String
}

/**
 * @description Represents a Unix domain socket address, which can be unnamed, abstract, or path-based.
 */
@!APILevel[
    since: "22"
]
public class UnixSocketAddress <: SocketAddress & Equatable<UnixSocketAddress> {
    /**
     * @description Construct an address from a raw byte array (UTF‑8) trimming trailing zeros.
     * @param path raw bytes representing an address; length must be <= 108
     * @throws IllegalArgumentException when path too long or contains interior NULs
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public init(path: Array<Byte>)
    
    /**
     * @description Construct an address from a String verifying format: may be empty (unnamed), abstract (leading NUL) or regular pathname without interior NULs.
     * @param path string path representation (<=108 bytes)
     * @throws IllegalArgumentException when path too long or contains interior NULs
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public init(path: String)
    
    /**
     * @description The size of the socket address structure in bytes.
     */
    @!APILevel[
        since: "22"
    ]
    public prop size: Int64
    
    /**
     * @description The address family of the socket address (always `UNIX`).
     */
    @!APILevel[
        since: "22"
    ]
    public prop family: AddressFamily
    
    /**
     * @description Equality comparison by underlying path bytes up to effective length.
     * @param other address to compare with
     */
    @!APILevel[
        since: "22"
    ]
    public operator func ==(other: UnixSocketAddress): Bool
    
    /**
     * @description Inequality comparison, logical negation of ==.
     * @param other address to compare with
     */
    @!APILevel[
        since: "22"
    ]
    public operator func !=(other: UnixSocketAddress): Bool
    
    /**
     * @description Serialize this address into the binary representation used by native sockaddr_un (family + path).
     * @returns Byte array containing serialized address
     */
    @!APILevel[
        since: "22"
    ]
    public func getAddressBytes(): Array<Byte>
    
    /**
     * @description Compute hash code based on path bytes.
     */
    @!APILevel[
        since: "22"
    ]
    public func hashCode(): Int64
    
    /**
     * @description Human readable string form of this Unix socket address (effective path substring).
     * @returns Path string (could be empty or begin with NUL for abstract addresses)
     */
    @!APILevel[
        since: "22"
    ]
    public func toString(): String
}

