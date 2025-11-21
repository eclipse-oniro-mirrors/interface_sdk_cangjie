package std.unittest
import std.collection.ArrayList

import std.unittest.diff.AssertPrintable
import std.unittest.common.*
import std.time.DateTime
import std.unittest.common.PrettyText
import std.collection.*
import std.math.abs
import std.runtime.ProcessorInfo
import std.random.Random
import std.unittest.common.Color
import std.convert.Formattable
import std.math.*
import std.runtime.GC
import std.sort.*
import std.sync.AtomicOptionReference
import std.process.Process
import std.unicode.*
import std.unittest.prop_test.*
import std.unittest.common.KeyTags
import std.fs.*
import std.process.*
import std.sync.Semaphore
import std.collection.concurrent.ConcurrentLinkedQueue
import std.sync.ReentrantMutex
import std.unittest.common.optionsInfo
import std.unittest.prop_test.RandomSource
import std.math.round
import std.regex.Regex
import std.convert.Parsable
public import std.unittest.common.Configuration
public import std.unittest.common.ConfigurationKey
public import std.unittest.common.DataProvider
public import std.unittest.common.DataStrategy
public import std.unittest.common.DataShrinker
public import std.unittest.common.registerOptionValidator
public import std.unittest.common.setOptionInfo
public import std.unittest.common.OptionValidity
public import std.unittest.common.KeyFor
public import std.unittest.common.KeyTags
public import std.unittest.prop_test.Arbitrary
public import std.unittest.prop_test.Shrink
public import std.unittest.prop_test.random
public import std.unittest.prop_test.KeyRandom
import std.unittest.mock.PrettyException
import std.fs.Path
import std.unittest.common.PrettyPrinter
import std.collection.concurrent.NonBlockingQueue
import std.env.atExit
import std.sync.AtomicBool
import std.time.MonoTime
import std.time.*
import std.sort.SortExtension
import std.sync.*
import std.unittest.common.DataStrategy
import std.unittest.prop_test.ShrinkHelpers
import std.unittest.common.toStringOrPlaceholder
import std.unittest.mock.*
import std.collection.concurrent.LinkedBlockingQueue
import std.env.exit
import std.env.getTempDirectory
import std.binary.BigEndianOrder
import std.io.IOException
import std.net.*
import std.core.println as corePrintln
import std.core.print as corePrint

/**
 * @description Defines a test suite, which is a collection of test cases.
 */
@!APILevel[
    since: "22"
]
public class TestSuite {
    /**
     * @description The name of the test suite.
     */
    @!APILevel[
        since: "22"
    ]
    public prop name: String

    /**
     * @description Runs all tests in this suite.
     * @returns Returns a `TestReport` containing the results of the test run.
     */
    @!APILevel[
        since: "22"
    ]
    public func runTests(): TestReport

    /**
     * @description Runs all tests in this suite with the given configuration.
     * @param configuration - The configuration to use for the test run.
     * @returns Returns a `TestReport` containing the results of the test run.
     */
    @!APILevel[
        since: "22"
    ]
    public func runTests(configuration: Configuration): TestReport

    /**
     * @description Runs all benchmarks in this suite.
     * @returns Returns a `BenchReport` containing the results of the benchmark run.
     */
    @!APILevel[
        since: "22"
    ]
    public func runBenchmarks(): BenchReport

    /**
     * @description Runs all benchmarks in this suite with the given configuration.
     * @param configuration - The configuration to use for the benchmark run.
     * @returns Returns a `BenchReport` containing the results of the benchmark run.
     */
    @!APILevel[
        since: "22"
    ]
    public func runBenchmarks(configuration: Configuration): BenchReport

    /**
     * @description Creates a `TestSuiteBuilder` with the given name.
     * @param name - The name of the test suite.
     * @returns Returns a new `TestSuiteBuilder` instance.
     */
    @!APILevel[
        since: "22"
    ]
    public static func builder(name: String): TestSuiteBuilder

    /**
     * @description Creates a `TestSuiteBuilder` from an existing `TestSuite`.
     * @param suite - The test suite to use as a template.
     * @returns Returns a new `TestSuiteBuilder` instance initialized with the properties of the given suite.
     */
    @!APILevel[
        since: "22"
    ]
    public static func builder(suite: TestSuite): TestSuiteBuilder
}

/**
 * @description Defines a test group, which is a collection of test suites.
 */
@!APILevel[
    since: "22"
]
public class TestGroup {
    /**
     * @description The name of the test group.
     */
    @!APILevel[
        since: "22"
    ]
    public prop name: String

    /**
     * @description Runs all tests in this group.
     * @returns Returns a `TestReport` containing the results of the test run.
     */
    @!APILevel[
        since: "22"
    ]
    public func runTests(): TestReport

    /**
     * @description Runs all tests in this group with the given configuration.
     * @param configuration - The configuration to use for the test run.
     * @returns Returns a `TestReport` containing the results of the test run.
     */
    @!APILevel[
        since: "22"
    ]
    public func runTests(configuration: Configuration): TestReport

    /**
     * @description Runs all benchmarks in this group.
     * @returns Returns a `BenchReport` containing the results of the benchmark run.
     */
    @!APILevel[
        since: "22"
    ]
    public func runBenchmarks(): BenchReport

    /**
     * @description Runs all benchmarks in this group with the given configuration.
     * @param configuration - The configuration to use for the benchmark run.
     * @returns Returns a `BenchReport` containing the results of the benchmark run.
     */
    @!APILevel[
        since: "22"
    ]
    public func runBenchmarks(configuration: Configuration): BenchReport

    /**
     * @description Creates a `TestGroupBuilder` with the given name.
     * @param name - The name of the test group.
     * @returns Returns a new `TestGroupBuilder` instance.
     */
    @!APILevel[
        since: "22"
    ]
    public static func builder(name: String): TestGroupBuilder

    /**
     * @description Creates a `TestGroupBuilder` from an existing `TestGroup`.
     * @param group - The test group to use as a template.
     * @returns Returns a new `TestGroupBuilder` instance initialized with the properties of the given group.
     */
    @!APILevel[
        since: "22"
    ]
    public static func builder(group: TestGroup): TestGroupBuilder
}

/**
 * @description A builder for creating `TestGroup` instances.
 */
@!APILevel[
    since: "22"
]
public class TestGroupBuilder {
    /**
     * @description Sets the name of the test group.
     * @param name - The name to set.
     * @returns Returns this `TestGroupBuilder` instance for chaining.
     */
    @!APILevel[
        since: "22"
    ]
    public func setName(name: String): TestGroupBuilder

    /**
     * @description Configures the test group with the given configuration.
     * @param configuration - The configuration to apply.
     * @returns Returns this `TestGroupBuilder` instance for chaining.
     */
    @!APILevel[
        since: "22"
    ]
    public func configure(configuration: Configuration): TestGroupBuilder

    /**
     * @description Adds a `UnitTestCase` to the test group.
     * @param test - The test case to add.
     * @returns Returns this `TestGroupBuilder` instance for chaining.
     */
    @!APILevel[
        since: "22"
    ]
    public func add(test: UnitTestCase): TestGroupBuilder

    /**
     * @description Adds a `Benchmark` to the test group.
     * @param benchmark - The benchmark to add.
     * @returns Returns this `TestGroupBuilder` instance for chaining.
     */
    @!APILevel[
        since: "22"
    ]
    public func add(benchmark: Benchmark): TestGroupBuilder

    /**
     * @description Adds a `TestSuite` to the test group.
     * @param suite - The test suite to add.
     * @returns Returns this `TestGroupBuilder` instance for chaining.
     */
    @!APILevel[
        since: "22"
    ]
    public func add(suite: TestSuite): TestGroupBuilder

    /**
     * @description Builds the `TestGroup`.
     * @returns Returns the new `TestGroup` instance.
     */
    @!APILevel[
        since: "22"
    ]
    public func build(): TestGroup
}

/**
 * @description A builder for creating `TestSuite` instances.
 */
@!APILevel[
    since: "22"
]
public class TestSuiteBuilder {
    /**
     * @description Sets the name of the test suite.
     * @param name - The name to set.
     * @returns Returns this `TestSuiteBuilder` instance for chaining.
     */
    @!APILevel[
        since: "22"
    ]
    public func setName(name: String): TestSuiteBuilder

    /**
     * @description Configures the test suite with the given configuration.
     * @param configuration - The configuration to apply.
     * @returns Returns this `TestSuiteBuilder` instance for chaining.
     */
    @!APILevel[
        since: "22"
    ]
    public func configure(configuration: Configuration): TestSuiteBuilder

    /**
     * @description Adds a function to be executed before each test case in the suite.
     * @param body - The function to execute, which takes the test case name as a parameter.
     * @returns Returns this `TestSuiteBuilder` instance for chaining.
     */
    @!APILevel[
        since: "22"
    ]
    public func beforeEach(body: (String) -> Unit): TestSuiteBuilder

    /**
     * @description Adds a function to be executed after each test case in the suite.
     * @param body - The function to execute, which takes the test case name as a parameter.
     * @returns Returns this `TestSuiteBuilder` instance for chaining.
     */
    @!APILevel[
        since: "22"
    ]
    public func afterEach(body: (String) -> Unit): TestSuiteBuilder

    /**
     * @description Adds a function to be executed before each test case in the suite.
     * @param body - The function to execute.
     * @returns Returns this `TestSuiteBuilder` instance for chaining.
     */
    @!APILevel[
        since: "22"
    ]
    public func beforeEach(body: () -> Unit): TestSuiteBuilder

    /**
     * @description Adds a function to be executed after each test case in the suite.
     * @param body - The function to execute.
     * @returns Returns this `TestSuiteBuilder` instance for chaining.
     */
    @!APILevel[
        since: "22"
    ]
    public func afterEach(body: () -> Unit): TestSuiteBuilder

    /**
     * @description Adds a function to be executed once before all test cases in the suite.
     * @param body - The function to execute.
     * @returns Returns this `TestSuiteBuilder` instance for chaining.
     */
    @!APILevel[
        since: "22"
    ]
    public func beforeAll(body: () -> Unit): TestSuiteBuilder

    /**
     * @description Adds a function to be executed once after all test cases in the suite.
     * @param body - The function to execute.
     * @returns Returns this `TestSuiteBuilder` instance for chaining.
     */
    @!APILevel[
        since: "22"
    ]
    public func afterAll(body: () -> Unit): TestSuiteBuilder

    /**
     * @description Adds a `UnitTestCase` to the test suite.
     * @param test - The test case to add.
     * @returns Returns this `TestSuiteBuilder` instance for chaining.
     */
    @!APILevel[
        since: "22"
    ]
    public func add(test: UnitTestCase): TestSuiteBuilder

    /**
     * @description Adds a `Benchmark` to the test suite.
     * @param benchmark - The benchmark to add.
     * @returns Returns this `TestSuiteBuilder` instance for chaining.
     */
    @!APILevel[
        since: "22"
    ]
    public func add(benchmark: Benchmark): TestSuiteBuilder

    /**
     * @description Uses another `TestSuite` as a template for this builder.
     * @param template - The test suite to use as a template.
     * @returns Returns this `TestSuiteBuilder` instance for chaining.
     */
    @!APILevel[
        since: "22"
    ]
    public func template(template: TestSuite): TestSuiteBuilder

    /**
     * @description Builds the `TestSuite`.
     * @returns Returns the new `TestSuite` instance.
     */
    @!APILevel[
        since: "22"
    ]
    public func build(): TestSuite
}

/**
 * @description Represents a single unit test case.
 */
@!APILevel[
    since: "22"
]
public class UnitTestCase {
    /**
     * @description The name of the test case.
     */
    @!APILevel[
        since: "22"
    ]
    public prop name: String

    /**
     * @description Runs this test case.
     * @returns Returns a `TestReport` containing the results of the test run.
     */
    @!APILevel[
        since: "22"
    ]
    public func run(): TestReport

    /**
     * @description Creates a parameterized test case with a data strategy.
     * @param name - The name of the test case.
     * @param strategy - The data strategy to use for providing test data.
     * @param configuration - The configuration for the test case.
     * @param body - The test case body, which takes a parameter of type `T`.
     * @returns Returns a new `UnitTestCase` instance.
     */
    @!APILevel[
        since: "22"
    ]
    public static func createParameterized<T>(name: String, strategy: DataStrategy<T>,
        configuration!: Configuration = Configuration(), body!: (T) -> Unit): UnitTestCase

    /**
     * @description Creates a parameterized test case with a data strategy processor.
     * @param name - The name of the test case.
     * @param strategy - The data strategy processor to use for providing test data.
     * @param configuration - The configuration for the test case.
     * @param body - The test case body, which takes a parameter of type `T`.
     * @returns Returns a new `UnitTestCase` instance.
     */
    @!APILevel[
        since: "22"
    ]
    public static func createParameterized<T>(name: String, strategy: DataStrategyProcessor<T>,
        configuration!: Configuration = Configuration(), body!: (T) -> Unit): UnitTestCase

    /**
     * @description Creates a simple test case.
     * @param name - The name of the test case.
     * @param configuration - The configuration for the test case.
     * @param body - The test case body.
     * @returns Returns a new `UnitTestCase` instance.
     */
    @!APILevel[
        since: "22"
    ]
    public static func create(name: String, configuration!: Configuration = Configuration(), body!: () -> Unit): UnitTestCase
}

/**
 * @description Represents a single benchmark case.
 */
@!APILevel[
    since: "22"
]
public class Benchmark {
    /**
     * @description The name of the benchmark.
     */
    @!APILevel[
        since: "22"
    ]
    public prop name: String

    /**
     * @description Runs this benchmark.
     * @returns Returns a `BenchReport` containing the results of the benchmark run.
     */
    @!APILevel[
        since: "22"
    ]
    public func run(): BenchReport

    /**
     * @description Creates a parameterized benchmark with a data strategy.
     * @param name - The name of the benchmark.
     * @param strategy - The data strategy to use for providing benchmark data.
     * @param configuration - The configuration for the benchmark.
     * @param measurement - The measurement method to use.
     * @param body - The benchmark body, which takes a parameter of type `T`.
     * @returns Returns a new `Benchmark` instance.
     */
    @!APILevel[
        since: "22"
    ]
    public static func createParameterized<T>(
        name: String,
        strategy: DataStrategy<T>,
        configuration!: Configuration = Configuration(),
        measurement!: Measurement = TimeNow(),
        body!: (T) -> Unit
    ): Benchmark

    /**
     * @description Creates a parameterized benchmark with a data strategy processor.
     * @param name - The name of the benchmark.
     * @param strategy - The data strategy processor to use for providing benchmark data.
     * @param configuration - The configuration for the benchmark.
     * @param measurement - The measurement method to use.
     * @param body - The benchmark body, which takes a parameter of type `T`.
     * @returns Returns a new `Benchmark` instance.
     */
    @!APILevel[
        since: "22"
    ]
    public static func createParameterized<T>(
        name: String,
        strategy: DataStrategyProcessor<T>,
        configuration!: Configuration = Configuration(),
        measurement!: Measurement = TimeNow(),
        body!: (T) -> Unit
    ): Benchmark

    /**
     * @description Creates a simple benchmark.
     * @param name - The name of the benchmark.
     * @param configuration - The configuration for the benchmark.
     * @param measurement - The measurement method to use.
     * @param body - The benchmark body.
     * @returns Returns a new `Benchmark` instance.
     */
    @!APILevel[
        since: "22"
    ]
    public static func create(
        name: String,
        configuration!: Configuration = Configuration(),
        measurement!: Measurement = TimeNow(),
        body!: () -> Unit
    ): Benchmark
}

/**
 * @description Provides information about a test case.
 */
@!APILevel[
    since: "22"
]
public struct TestCaseInfo {
}

/**
 * @description An abstract base class for test and benchmark reports.
 */
@!APILevel[
    since: "22"
]
sealed abstract class Report {
    /**
     * @description The total number of errors.
     */
    @!APILevel[
        since: "22"
    ]
    public prop errorCount:   Int64

    /**
     * @description The total number of cases.
     */
    @!APILevel[
        since: "22"
    ]
    public prop caseCount:    Int64

    /**
     * @description The number of passed cases.
     */
    @!APILevel[
        since: "22"
    ]
    public prop passedCount:  Int64

    /**
     * @description The number of failed cases.
     */
    @!APILevel[
        since: "22"
    ]
    public prop failedCount:  Int64

    /**
     * @description The number of skipped cases.
     */
    @!APILevel[
        since: "22"
    ]
    public prop skippedCount: Int64
}

/**
 * @description A report for a test run.
 */
@!APILevel[
    since: "22"
]
public class TestReport <: Report {
    /**
     * @description Exports the report using the given reporter.
     * @param reporter - The reporter to use for exporting the report.
     * @returns Returns the exported report data.
     */
    @!APILevel[
        since: "22"
    ]
    public func reportTo<T>(reporter: Reporter<TestReport, T>): T
}

/**
 * @description A report for a benchmark run.
 */
@!APILevel[
    since: "22"
]
public class BenchReport <: Report {
    /**
     * @description Exports the report using the given reporter.
     * @param reporter - The reporter to use for exporting the report.
     * @returns Returns the exported report data.
     */
    @!APILevel[
        since: "22"
    ]
    public func reportTo<T>(reporter: Reporter<BenchReport, T>): T
}

/**
 * @description An interface for classes that can be converted to a `TestSuite`.
 */
@!APILevel[
    since: "22"
]
public interface TestClass {
    /**
     * @description Converts this object to a `TestSuite`.
     * @returns Returns the `TestSuite` representation of this object.
     */
    @!APILevel[
        since: "22"
    ]
    func asTestSuite(): TestSuite
}

/**
 * @description Represents a package of tests, used internally by the compiler.
 */
@!APILevel[
    since: "22"
]
public class TestPackage {
    /**
     * @description Creates a new `TestPackage` with the given name.
     * @param name - The name of the test package.
     */
    @!APILevel[
        since: "22"
    ]
    public TestPackage(
        let name: String
    )

    /**
     * @description Registers a test case with the package.
     * @param testCase - A function that returns the `UnitTestCase` to register.
     */
    @!APILevel[
        since: "22"
    ]
    public func registerCase(testCase: () -> UnitTestCase): Unit

    /**
     * @description Registers a test suite with the package.
     * @param suite - A function that returns the `TestSuite` to register.
     */
    @!APILevel[
        since: "22"
    ]
    public func registerSuite(suite: () -> TestSuite): Unit

    /**
     * @description Registers a benchmark with the package.
     * @param bench - A function that returns the `Benchmark` to register.
     */
    @!APILevel[
        since: "22"
    ]
    public func registerBench(bench: () -> Benchmark): Unit
}



/**
 * @description Asserts that two values are equal.
 * @param leftStr - A string representation of the expected value.
 * @param rightStr - A string representation of the actual value.
 * @param expected - The expected value.
 * @param actual - The actual value.
 * @param optParentCtx - An optional parent assertion context.
 */
@!APILevel[
    since: "22"
]
public func assertEqual<T>(
    leftStr: String,
    rightStr: String,
    expected: T,
    actual: T,
    optParentCtx!: ?AssertionCtx = None
): Unit where T <: Equatable<T>

/**
 * @description Asserts that two values are equal.
 * @param leftStr - A string representation of the expected value.
 * @param rightStr - A string representation of the actual value.
 * @param expected - The expected value.
 * @param actual - The actual value.
 * @param isDelta - A boolean indicating if this is a delta comparison.
 * @param optParentCtx - An optional parent assertion context.
 */
@!APILevel[
    since: "22"
]
public func assertEqual<T>(
    leftStr: String,
    rightStr: String,
    expected: T,
    actual: T,
    isDelta!: Bool,
    optParentCtx!: ?AssertionCtx = None
): Unit where T <: Equatable<T>

/**
 * @description Expects that two values are equal. Does not throw an exception immediately on failure.
 * @param leftStr - A string representation of the expected value.
 * @param rightStr - A string representation of the actual value.
 * @param expected - The expected value.
 * @param actual - The actual value.
 * @param optParentCtx - An optional parent assertion context.
 */
@!APILevel[
    since: "22"
]
public func expectEqual<T>(
    leftStr: String,
    rightStr: String,
    expected: T,
    actual: T,
    optParentCtx!: ?AssertionCtx = None
): Unit where T <: Equatable<T>

/**
 * @description Expects that two values are equal. Does not throw an exception immediately on failure.
 * @param leftStr - A string representation of the expected value.
 * @param rightStr - A string representation of the actual value.
 * @param expected - The expected value.
 * @param actual - The actual value.
 * @param isDelta - A boolean indicating if this is a delta comparison.
 * @param optParentCtx - An optional parent assertion context.
 */
@!APILevel[
    since: "22"
]
public func expectEqual<T>(
    leftStr: String,
    rightStr: String,
    expected: T,
    actual: T,
    isDelta!: Bool,
    optParentCtx!: ?AssertionCtx = None
): Unit where T <: Equatable<T>

/**
 * @description An exception thrown when an assertion fails.
 */
@!APILevel[
    since: "22"
]
public class AssertException <: Exception {
    /**
     * @description Creates a new `AssertException`.
     */
    @!APILevel[
        since: "22"
    ]
    public init()

    /**
     * @description Creates a new `AssertException` with a message.
     * @param message - The exception message.
     */
    @!APILevel[
        since: "22"
    ]
    public init(message: String)
}

/**
 * @description An exception thrown for intermediate assertion failures, containing more context.
 */
@!APILevel[
    since: "22"
]
public class AssertIntermediateException <: Exception {
    /**
     * @description The expression that failed.
     */
    @!APILevel[
        since: "22"
    ]
    public let expression: String

    /**
     * @description The original exception that caused the failure.
     */
    @!APILevel[
        since: "22"
    ]
    public let originalException: Exception

    /**
     * @description Gets the stack trace of the original exception.
     * @returns Returns a string representation of the original stack trace.
     */
    @!APILevel[
        since: "22"
    ]
    public func getOriginalStackTrace(): String
}

/**
 * @description A marker interface for benchmark input providers.
 */
@!APILevel[
    since: "22"
]
public interface BenchmarkInputMarker {
}

/**
 * @description An interface for providing input data to benchmarks.
 */
@!APILevel[
    since: "22"
]
public interface BenchInputProvider<T> <: BenchmarkInputMarker {
    /**
     * @description Resets the provider.
     * @param max The maximum number of inputs.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    mut func reset(max: Int64)

    /**
     * @description Gets the input data for the given index.
     * @param idx The index of the input.
     * @returns The input data.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    mut func get(idx: Int64): T
}

/**
 * @description Provides an input that is created only once and reused for all benchmark iterations.
 * This is useful for providing complex objects that are expensive to create.
 */
@!APILevel[
    since: "22"
]
public struct ImmutableInputProvider<T> <: BenchInputProvider<T> {
    /**
     * @description Creates an `ImmutableInputProvider` with the given data.
     * @param data The data to be provided as input for the benchmark.
     */
    @!APILevel[
        since: "22"
    ]
    public ImmutableInputProvider(let data: T)

    /**
     * @description Gets the input data.
     * @returns The input data.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public mut func get(_: Int64): T

    /**
     * @description Creates an `ImmutableInputProvider` if the argument is not already a provider.
     * @param arg The input data.
     * @param x An unused parameter for overload resolution.
     * @returns A new `ImmutableInputProvider` instance.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public static func createOrExisting(arg: T, x!: Int64 = 0): ImmutableInputProvider<T>

    /**
     * @description Returns the existing provider if the argument is already a `BenchInputProvider`.
     * @param arg The input provider.
     * @returns The given input provider.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public static func createOrExisting<U>(arg: U): U where U <: BenchInputProvider<T>
}

/**
 * @description Provides input data in batches for benchmarks. A new batch is created for each benchmark trial.
 */
@!APILevel[
    since: "22"
]
public struct BatchInputProvider<T> <: BenchInputProvider<T> {
    /**
     * @description Creates a `BatchInputProvider` with a builder function.
     * @param builder A function that builds the input data.
     */
    @!APILevel[
        since: "22"
    ]
    public BatchInputProvider(let builder: () -> T)

    /**
     * @description Resets the provider.
     * @param max The maximum number of inputs.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public mut func reset(max: Int64)

    /**
     * @description Gets the input data for the given index.
     * @param idx The index of the input.
     * @returns The input data.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public mut func get(idx: Int64): T
}

/**
 * @description Provides input data for benchmarks with a batch size of one.
 */
    @!APILevel[
        since: "22"
    ]
public struct BatchSizeOneInputProvider<T> <: BenchInputProvider<T> {
    /**
     * @description Creates a `BatchSizeOneInputProvider` with a builder function.
     * @param builder A function that builds the input data.
     */
    @!APILevel[
        since: "22"
    ]
    public BatchSizeOneInputProvider(let builder: () -> T)

    /**
     * @description Resets the provider.
     * @param max The maximum number of inputs.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public mut func reset(max: Int64)

    /**
     * @description Gets the input data.
     * @returns The input data.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public mut func get(_: Int64): T
}

/**
 * @description Provides input data by generating a new value for each request.
 */
@!APILevel[
    since: "22"
]
public struct GenerateEachInputProvider<T> <: BenchInputProvider<T> {
    /**
     * @description Creates a `GenerateEachInputProvider` with a builder function.
     * @param builder A function that builds the input data.
     */
    @!APILevel[
        since: "22"
    ]
    public GenerateEachInputProvider(let builder: () -> T)

    /**
     * @description Resets the provider.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public mut func reset(_: Int64)

    /**
     * @description Gets the input data by invoking the builder function.
     * @returns The newly generated input data.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public mut func get(_: Int64): T
}

/**
 * @description Defines the configuration for benchmarks.
 */
@!APILevel[
    since: "22"
]
public interface BenchmarkConfig {
    /**
     * @description Sets the batch size for the benchmark.
     * @param b The batch size.
     */
    @!APILevel[
        since: "22"
    ]
    func batchSize(b: Int64): Unit

    /**
     * @description Sets a range of batch sizes for the benchmark to iterate over.
     * @param x The range of batch sizes.
     */
    @!APILevel[
        since: "22"
    ]
    func batchSize(x: Range<Int64>): Unit

    /**
     * @description Sets the number of warmup iterations.
     * @param x The number of warmup iterations.
     */
    @!APILevel[
        since: "22"
    ]
    func warmup(x: Int64): Unit

    /**
     * @description Sets the duration for warmup.
     * @param x The duration of the warmup phase.
     */
    @!APILevel[
        since: "22"
    ]
    func warmup(x: Duration): Unit

    /**
     * @description Sets the minimum duration for the benchmark measurement phase.
     * @param x The minimum duration.
     */
    @!APILevel[
        since: "22"
    ]
    func minDuration(x: Duration): Unit

    /**
     * @description Configures explicit garbage collection during the benchmark.
     * @param x The type of explicit garbage collection.
     */
    @!APILevel[
        since: "22"
    ]
    func explicitGC(x: ExplicitGcType): Unit

    /**
     * @description Sets the minimum number of batches to execute.
     * @param x The minimum number of batches.
     */
    @!APILevel[
        since: "22"
    ]
    func minBatches(x: Int64): Unit
}

extend Configuration <: BenchmarkConfig {
    /**
     * @description Sets the batch size for the benchmark.
     * @param b The batch size.
     */
    @!APILevel[
        since: "22"
    ]
    public func batchSize(b: Int64)

    /**
     * @description Sets a range of batch sizes for the benchmark to iterate over.
     * @param x The range of batch sizes.
     */
    @!APILevel[
        since: "22"
    ]
    public func batchSize(x: Range<Int64>)

    /**
     * @description Sets the number of warmup iterations.
     * @param x The number of warmup iterations.
     */
    @!APILevel[
        since: "22"
    ]
    public func warmup(x: Int64)

    /**
     * @description Sets the duration for warmup.
     * @param x The duration of the warmup phase.
     */
    @!APILevel[
        since: "22"
    ]
    public func warmup(x: Duration)

    /**
     * @description Sets the minimum duration for the benchmark measurement phase.
     * @param x The minimum duration.
     */
    @!APILevel[
        since: "22"
    ]
    public func minDuration(x: Duration)

    /**
     * @description Configures explicit garbage collection during the benchmark.
     * @param x The type of explicit garbage collection.
     */
    @!APILevel[
        since: "22"
    ]
    public func explicitGC(x: ExplicitGcType)

    /**
     * @description Sets the minimum number of batches to execute.
     * @param x The minimum number of batches.
     */
    @!APILevel[
        since: "22"
    ]
    public func minBatches(x: Int64)
}



/**
 * @description Represents a measurement to be performed during a benchmark.
 */
@!APILevel[
    since: "22"
]
public interface Measurement {
    /**
     * @description Sets up the measurement. This is called before the measurement starts.
     */
    @!APILevel[
        since: "22"
    ]
    func setup()

    /**
     * @description Performs the measurement.
     * @returns The result of the measurement.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    func measure(): Float64

    /**
     * @description A table for converting measurement units.
     */
    @!APILevel[
        since: "22"
    ]
    prop conversionTable: MeasurementUnitTable

    /**
     * @description The name of the measurement.
     */
    @!APILevel[
        since: "22"
    ]
    prop name: String

    /**
     * @description A textual description of the measurement.
     */
    @!APILevel[
        since: "22"
    ]
    prop textDescription: String

    /**
     * @description Additional information about the measurement.
     */
    @!APILevel[
        since: "22"
    ]
    prop info: MeasurementInfo
}

/**
 * @description Provides additional information about a measurement. This is currently a placeholder.
 */
@!APILevel[
    since: "22"
]
public struct MeasurementInfo {
    /**
     * @description Creates a measurement
     * @param conversionTable A table for converting measurement units.
     * @param name The name of the measurement.
     * @param textDescription A textual description of the measurement.
     */
    @!APILevel[
        since: "22"
    ]
    public init(conversionTable: MeasurementUnitTable, name: String, textDescription: String)

    /**
     * @description A table for converting measurement units.
     */
    @!APILevel[
        since: "22"
    ]
    public let conversionTable: MeasurementUnitTable

    /**
     * @description The name of the measurement.
     */
    @!APILevel[
        since: "22"
    ]
    public let name: String

    /**
     * @description A textual description of the measurement.
     */
    @!APILevel[
        since: "22"
    ]
    public let textDescription: String
}

/**
 * @description A type alias for a table that defines conversions between measurement units.
 * It is an array of tuples, where each tuple contains a conversion factor and a unit name.
 */
public type MeasurementUnitTable = Array<(Float64, String)>


/**
 * @description A measurement that captures the current time.
 */
@!APILevel[
    since: "22"
]
public struct TimeNow <: Measurement {
    /**
     * @description Creates a `TimeNow` measurement with a specific time unit.
     * @param unit The time unit to use for the measurement.
     */
    @!APILevel[
        since: "22"
    ]
    public init(unit: ?TimeUnit)

    /**
     * @description Creates a `TimeNow` measurement with the default time unit.
     */
    @!APILevel[
        since: "22"
    ]
    public init()

    /**
     * @description Measures the current time.
     * @returns The current time as a `Float64`.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func measure(): Float64

    /**
     * @description The conversion table for time units.
     */
    @!APILevel[
        since: "22"
    ]
    public prop conversionTable: MeasurementUnitTable

    /**
     * @description The name of the measurement, which is "Time".
     */
    @!APILevel[
        since: "22"
    ]
    public prop name: String

    /**
     * @description A description of the measurement.
     */
    @!APILevel[
        since: "22"
    ]
    public prop textDescription: String
}

/**
 * @description Represents time units for measurements.
 */
@!APILevel[
    since: "22"
]
public enum TimeUnit <: ToString {
    /**
     * @description Nanoseconds.
     */
    @!APILevel[
        since: "22"
    ]
    Nanos |
    /**
     * @description Microseconds.
     */
    @!APILevel[
        since: "22"
    ]
    Micros |
    /**
     * @description Milliseconds.
     */
    @!APILevel[
        since: "22"
    ]
    Millis |
    /**
     * @description Seconds.
     */
    @!APILevel[
        since: "22"
    ]
    Seconds
    /**
     * @description Converts the time unit to a string.
     * @returns The string representation of the time unit.
     */
    @!APILevel[
        since: "22"
    ]
    public func toString(): String
}

/**
 * @description Specifies the type of explicit garbage collection to be performed during a benchmark.
 */
@!APILevel[
    since: "22"
]
public enum ExplicitGcType <: ToString {
    /**
     * @description Garbage collection is disabled.
     */
    @!APILevel[
        since: "22"
    ]
    Disabled |
    /**
     * @description A light garbage collection cycle is performed.
     */
    @!APILevel[
        since: "22"
    ]
    Light |
    /**
     * @description A heavy (full) garbage collection cycle is performed.
     */
    @!APILevel[
        since: "22"
    ]
    Heavy
    /**
     * @description Converts the GC type to a string.
     * @returns The string representation of the GC type.
     */
    @!APILevel[
        since: "22"
    ]
    public func toString(): String
}

/**
 * @description A measurement that captures CPU cycles.
 */
@!APILevel[
    since: "22"
]

/**
 * @description A measurement that uses performance counters.
 */
@!APILevel[
    since: "22"
]
public struct Perf <: Measurement {
    /**
     * @description Creates a `Perf` measurement with a specific performance counter.
     * @param counter The performance counter to use.
     */
    @!APILevel[
        since: "22"
    ]
    public Perf(var counter: PerfCounter)

    /**
     * @description Creates a `Perf` measurement with the default performance counter.
     */
    @!APILevel[
        since: "22"
    ]
    public init()

    /**
     * @description Sets up the performance counter measurement.
     */
    @!APILevel[
        since: "22"
    ]
    public func setup()

    /**
     * @description Performs the measurement using the performance counter.
     * @returns The result of the measurement.
     */
    @Frozen
    @!APILevel[
        since: "22"
    ]
    public func measure(): Float64

    /**
     * @description The conversion table for the performance counter.
     */
    @!APILevel[
        since: "22"
    ]
    public prop conversionTable: MeasurementUnitTable

    /**
     * @description The name of the measurement.
     */
    @!APILevel[
        since: "22"
    ]
    public prop name: String

    /**
     * @description A description of the measurement.
     */
    @!APILevel[
        since: "22"
    ]
    public prop textDescription: String
}

/**
 * @description Represents hardware and software performance counters.
 */
@!APILevel[
    since: "22"
]
public enum PerfCounter <: ToString {
    /**
     * @description Hardware CPU cycles.
     */
    @!APILevel[
        since: "22"
    ]
    HW_CPU_CYCLES |
    /**
     * @description Hardware instructions.
     */
    @!APILevel[
        since: "22"
    ]
    HW_INSTRUCTIONS |
    /**
     * @description Hardware cache references.
     */
    @!APILevel[
        since: "22"
    ]
    HW_CACHE_REFERENCES |
    /**
     * @description Hardware cache misses.
     */
    @!APILevel[
        since: "22"
    ]
    HW_CACHE_MISSES |
    /**
     * @description Hardware branch instructions.
     */
    @!APILevel[
        since: "22"
    ]
    HW_BRANCH_INSTRUCTIONS |
    /**
     * @description Hardware branch misses.
     */
    @!APILevel[
        since: "22"
    ]
    HW_BRANCH_MISSES |
    /**
     * @description Hardware bus cycles.
     */
    @!APILevel[
        since: "22"
    ]
    HW_BUS_CYCLES |
    /**
     * @description Hardware stalled cycles in the frontend.
     */
    @!APILevel[
        since: "22"
    ]
    HW_STALLED_CYCLES_FRONTEND |
    /**
     * @description Hardware stalled cycles in the backend.
     */
    @!APILevel[
        since: "22"
    ]
    HW_STALLED_CYCLES_BACKEND |
    /**
     * @description Hardware reference CPU cycles.
     */
    @!APILevel[
        since: "22"
    ]
    HW_REF_CPU_CYCLES |
    /**
     * @description Software CPU clock.
     */
    @!APILevel[
        since: "22"
    ]
    SW_CPU_CLOCK |
    /**
     * @description Software task clock.
     */
    @!APILevel[
        since: "22"
    ]
    SW_TASK_CLOCK |
    /**
     * @description Software page faults.
     */
    @!APILevel[
        since: "22"
    ]
    SW_PAGE_FAULTS |
    /**
     * @description Software context switches.
     */
    @!APILevel[
        since: "22"
    ]
    SW_CONTEXT_SWITCHES |
    /**
     * @description Software CPU migrations.
     */
    @!APILevel[
        since: "22"
    ]
    SW_CPU_MIGRATIONS |
    /**
     * @description Software minor page faults.
     */
    @!APILevel[
        since: "22"
    ]
    SW_PAGE_FAULTS_MIN |
    /**
     * @description Software major page faults.
     */
    @!APILevel[
        since: "22"
    ]
    SW_PAGE_FAULTS_MAJ |
    /**
     * @description Software emulation faults.
     */
    @!APILevel[
        since: "22"
    ]
    SW_EMULATION_FAULTS
    /**
     * @description Converts the performance counter to a string.
     * @returns The string representation of the performance counter.
     */
    @!APILevel[
        since: "22"
    ]
    public func toString(): String
}

/**
 * @description Provides context for custom assertions.
 */
@!APILevel[
    since: "22"
]
public class AssertionCtx {
    /**
     * @description The name of the caller of the assertion.
     */
    @!APILevel[
        since: "22"
    ]
    public prop caller: String

    /**
     * @description Indicates whether there have been any errors in the assertion context.
     */
    @!APILevel[
        since: "22"
    ]
    public prop hasErrors: Bool

    /**
     * @description Gets the value of an argument by its key.
     * @param key The key of the argument.
     * @returns The value of the argument.
     */
    @!APILevel[
        since: "22"
    ]
    public func arg(key: String): String

    /**
     * @description The arguments passed to the assertion.
     */
    @!APILevel[
        since: "22"
    ]
    public prop args: String

    /**
     * @description Sets aliases for the arguments.
     * @param aliases An array of aliases.
     */
    @!APILevel[
        since: "22"
    ]
    public func setArgsAliases(aliases: Array<String>)

    /**
     * @description Fails the assertion with a message.
     * @param message The failure message.
     * @returns This function does not return.
     */
    @!APILevel[
        since: "22"
    ]
    public func fail(message: String): Nothing

    /**
     * @description Fails the assertion with a pretty-printable object.
     * @param pt The pretty-printable object.
     * @returns This function does not return.
     * @throws AssertException
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func fail<PP>(pt: PP): Nothing where PP <: PrettyPrintable

    /**
     * @description Records an expected failure with a message.
     * @param message The failure message.
     */
    @!APILevel[
        since: "22"
    ]
    public func failExpect(message: String): Unit

    /**
     * @description Records an expected failure with a pretty-printable object.
     * @param pt The pretty-printable object.
     */
    @!APILevel[
        since: "22"
    ]
    public func failExpect<PP>(pt: PP): Unit where PP <: PrettyPrintable
}

/**
 * @description Invokes a custom assertion.
 * @param passedArgs The arguments passed to the assertion.
 * @param caller The name of the caller.
 * @param assert The assertion function to invoke.
 * @param optParentCtx An optional parent assertion context.
 * @returns The result of the assertion function.
 */
@!APILevel[
    since: "22"
]
public func invokeCustomAssert<T>(
    passedArgs: Array<String>,
    caller: String,
    assert: (AssertionCtx) -> T,
    optParentCtx!: ?AssertionCtx = None
): T

/**
 * @description Invokes a custom expectation.
 * @param passedArgs The arguments passed to the expectation.
 * @param caller The name of the caller.
 * @param expect The expectation function to invoke.
 * @param optParentCtx An optional parent assertion context.
 */
@!APILevel[
    since: "22"
]
public func invokeCustomExpect(
    passedArgs: Array<String>,
    caller: String,
    expect: (AssertionCtx) -> Any,
    optParentCtx!: ?AssertionCtx = None
): Unit

/**
 * @description Creates a default configuration for the unittest framework.
 * @returns A `Configuration` object with default settings.
 */
@!APILevel[
    since: "22"
]
public func defaultConfiguration(): Configuration


/**
 * @description An interface for types that can be compared for near-equality.
 */
@!APILevel[
    since: "22"
]
public interface NearEquatable<CT, D> {
    /**
     * @description Checks if this object is nearly equal to another object within a given delta.
     * @param obj The object to compare with.
     * @param delta The allowed difference.
     * @returns `true` if the objects are nearly equal, `false` otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    func isNear(obj: CT, delta!: D): Bool
}

/**
 * @description Represents a relative delta for near-equality comparisons, consisting of an absolute and a relative part.
 */
@!APILevel[
    since: "22"
]
public struct RelativeDelta<T> {
    /**
     * @description Creates a `RelativeDelta`.
     * @param absolute The absolute delta.
     * @param relative The relative delta.
     */
    @!APILevel[
        since: "22"
    ]
    public RelativeDelta(let absolute!: T, let relative!: T)
}

/**
 * @description Expands the near-equality comparison for types that are both `NearEquatable` and `Comparable`.
 * @param l The left-hand side operand.
 * @param r The right-hand side operand.
 * @param delta The allowed difference.
 * @param cmpType The type of comparison.
 * @returns `true` if the operands are nearly equal, `false` otherwise.
 */
@!APILevel[
    since: "22",
    throwexception: true
]
public func isNearExpansion<CT, D>(l: CT, r: CT, delta!: D, cmpType!: String): Bool where CT <: NearEquatable<CT, D> & Comparable<CT>

/**
 * @description Expands the near-equality comparison for types that are `NearEquatable`.
 * @param l The left-hand side operand.
 * @param r The right-hand side operand.
 * @param delta The allowed difference.
 * @param cmpType The type of comparison.
 * @param overloadHack An unused parameter for overload resolution.
 * @returns `true` if the operands are nearly equal, `false` otherwise.
 */
@!APILevel[
    since: "22",
    throwexception: true
]
public func isNearExpansion<CT, D>(l: CT, r: CT, delta!: D, cmpType!: String, overloadHack!: Bool = true): Bool where CT <: NearEquatable<CT, D>

extend Float16 <: NearEquatable<Float16, Float16> & NearEquatable<Float16, RelativeDelta<Float16>> {
    /**
     * @description Checks if this `Float16` is nearly equal to another `Float16` within an absolute delta.
     * @param obj The `Float16` to compare with.
     * @param delta The absolute delta.
     * @returns `true` if the values are nearly equal, `false` otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    public func isNear(obj: Float16, delta!: Float16): Bool

    /**
     * @description Checks if this `Float16` is nearly equal to another `Float16` within a relative delta.
     * @param obj The `Float16` to compare with.
     * @param delta The relative delta.
     * @returns `true` if the values are nearly equal, `false` otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    public func isNear(obj: Float16, delta!: RelativeDelta<Float16>): Bool
}

extend Float32 <: NearEquatable<Float32, Float32> & NearEquatable<Float32, RelativeDelta<Float32>> {
    /**
     * @description Checks if this `Float32` is nearly equal to another `Float32` within an absolute delta.
     * @param obj The `Float32` to compare with.
     * @param delta The absolute delta.
     * @returns `true` if the values are nearly equal, `false` otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    public func isNear(obj: Float32, delta!: Float32): Bool

    /**
     * @description Checks if this `Float32` is nearly equal to another `Float32` within a relative delta.
     * @param obj The `Float32` to compare with.
     * @param delta The relative delta.
     * @returns `true` if the values are nearly equal, `false` otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    public func isNear(obj: Float32, delta!: RelativeDelta<Float32>): Bool
}

extend Float64 <: NearEquatable<Float64, Float64> & NearEquatable<Float64, RelativeDelta<Float64>> {
    /**
     * @description Checks if this `Float64` is nearly equal to another `Float64` within an absolute delta.
     * @param obj The `Float64` to compare with.
     * @param delta The absolute delta.
     * @returns `true` if the values are nearly equal, `false` otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    public func isNear(obj: Float64, delta!: Float64): Bool

    /**
     * @description Checks if this `Float64` is nearly equal to another `Float64` within a relative delta.
     * @param obj The `Float64` to compare with.
     * @param delta The relative delta.
     * @returns `true` if the values are nearly equal, `false` otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    public func isNear(obj: Float64, delta!: RelativeDelta<Float64>): Bool
}


/**
 * @description The main entry point for running tests.
 * @param testPackage The test package to run.
 * @returns The exit code of the test run.
 */
@!APILevel[
    since: "22"
]
public func entryMain(testPackage: TestPackage): Int64
/**
 * @description Records an expected failure with a message. This function is used within a test case to indicate that a failure is expected at this point, but the test execution should continue. It does not throw an exception itself but contributes to the overall test result.
 * @param message The failure message to be recorded.
 */
@!APILevel[
    since: "22"
]
public func failExpect(message: String): Unit

/**
 * @param message The message detailing the reason for the failure.
 */
@!APILevel[
    since: "22"
]
public func fail(message: String): Nothing

/**
 * @description Asserts that an unexpected exception was caught. This function is used in exception testing to fail a test when an exception is caught that was not in the list of expected exceptions.
 * @param message A descriptive message for the assertion failure.
 * @param expectedExceptions A string representing the set of expected exception types.
 * @param caughtException A string representing the type of the exception that was actually caught.
 * @param optParentCtx An optional parent assertion context for nested assertions.
 */
@!APILevel[
    since: "22"
]
public func assertCaughtUnexpectedE(
    message: String,
    expectedExceptions: String,
    caughtException: String,
    optParentCtx!: ?AssertionCtx = None
): Nothing

/**
 * @description Records an expected failure when an unexpected exception is caught. Similar to `assertCaughtUnexpectedE`, but it records the failure without stopping the test execution.
 * @param message A descriptive message for the expectation failure.
 * @param expectedExceptions A string representing the set of expected exception types.
 * @param caughtException A string representing the type of the exception that was actually caught.
 * @param optParentCtx An optional parent assertion context for nested expectations.
 */
@!APILevel[
    since: "22"
]
public func expectCaughtUnexpectedE(
    message: String,
    expectedExceptions: String,
    caughtException: String,
    optParentCtx!: ?AssertionCtx = None
): Unit


extend UInt8 <: Torcable<UInt8> {
    /**
     * @description Gets a random entry from a list of recently used value pairs for property-based testing.
     * @returns A tuple containing a pair of recently used `UInt8` values, or `None` if the list is empty.
     */
    @!APILevel[
        since: "22"
    ]
    public static func randomRecentEntry(): ?(UInt8, UInt8)

    /**
     * @description Gets a random value that was recently compared to the given value.
     * @param value The value to find a recent comparison for.
     * @returns A recently used `UInt8` value, or `None` if no such value is found.
     */
    @!APILevel[
        since: "22"
    ]
    public static func randomRecentValueComparedTo(value: UInt8): ?UInt8

    /**
     * @description Generates the next random `UInt8` value from a random source.
     * @param random The random number generator to use.
     * @returns A new random `UInt8` value.
     */
    @!APILevel[
        since: "22"
    ]
    public static func nextFrom(random: Random): UInt8

    /**
     * @description Generates a "suggested" `UInt8` value from a set of interesting or edge-case values.
     * @param random The random number generator to use for selection.
     * @returns A suggested `UInt8` value.
     */
    @!APILevel[
        since: "22"
    ]
    public static func suggestedFrom(random: Random): UInt8

    /**
     * @description Checks if the value is zero.
     */
    @!APILevel[
        since: "22"
    ]
    public func isZero()

    /**
     * @description Flips the bit at the specified position.
     * @param at The index of the bit to flip (0-7).
     * @returns A new `UInt8` value with the specified bit flipped.
     */
    @!APILevel[
        since: "22"
    ]
    public func bitFlip(at: UInt8): UInt8
}

extend UInt16 <: Torcable<UInt16> {
    /**
     * @description Gets a random entry from a list of recently used value pairs for property-based testing.
     * @returns A tuple containing a pair of recently used `UInt16` values, or `None` if the list is empty.
     */
    @!APILevel[
        since: "22"
    ]
    public static func randomRecentEntry(): ?(UInt16, UInt16)

    /**
     * @description Gets a random value that was recently compared to the given value.
     * @param value The value to find a recent comparison for.
     * @returns A recently used `UInt16` value, or `None` if no such value is found.
     */
    @!APILevel[
        since: "22"
    ]
    public static func randomRecentValueComparedTo(value: UInt16): ?UInt16

    /**
     * @description Generates the next random `UInt16` value from a random source.
     * @param random The random number generator to use.
     * @returns A new random `UInt16` value.
     */
    @!APILevel[
        since: "22"
    ]
    public static func nextFrom(random: Random): UInt16

    /**
     * @description Generates a "suggested" `UInt16` value from a set of interesting or edge-case values.
     * @param random The random number generator to use for selection.
     * @returns A suggested `UInt16` value.
     */
    @!APILevel[
        since: "22"
    ]
    public static func suggestedFrom(random: Random): UInt16

    /**
     * @description Checks if the value is zero.
     */
    @!APILevel[
        since: "22"
    ]
    public func isZero()

    /**
     * @description Flips the bit at the specified position.
     * @param at The index of the bit to flip (0-15).
     * @returns A new `UInt16` value with the specified bit flipped.
     */
    @!APILevel[
        since: "22"
    ]
    public func bitFlip(at: UInt8): UInt16

    /**
     * @description Adds a `UInt8` value, with overflow wrapping around.
     * @param arg The `UInt8` value to add.
     * @returns The result of the addition.
     */
    @OverflowWrapping
    @!APILevel[
        since: "22"
    ]
    public operator func+(arg: UInt8): UInt16

    /**
     * @description Subtracts a `UInt8` value, with overflow wrapping around.
     * @param arg The `UInt8` value to subtract.
     * @returns The result of the subtraction.
     */
    @OverflowWrapping
    @!APILevel[
        since: "22"
    ]
    public operator func-(arg: UInt8): UInt16
}

extend UInt32 <: Torcable<UInt32> {
    /**
     * @description Gets a random entry from a list of recently used value pairs for property-based testing.
     * @returns A tuple containing a pair of recently used `UInt32` values, or `None` if the list is empty.
     */
    @!APILevel[
        since: "22"
    ]
    public static func randomRecentEntry(): ?(UInt32, UInt32)

    /**
     * @description Gets a random value that was recently compared to the given value.
     * @param value The value to find a recent comparison for.
     * @returns A recently used `UInt32` value, or `None` if no such value is found.
     */
    @!APILevel[
        since: "22"
    ]
    public static func randomRecentValueComparedTo(value: UInt32): ?UInt32

    /**
     * @description Generates the next random `UInt32` value from a random source.
     * @param random The random number generator to use.
     * @returns A new random `UInt32` value.
     */
    @!APILevel[
        since: "22"
    ]
    public static func nextFrom(random: Random): UInt32

    /**
     * @description Generates a "suggested" `UInt32` value from a set of interesting or edge-case values.
     * @param random The random number generator to use for selection.
     * @returns A suggested `UInt32` value.
     */
    @!APILevel[
        since: "22"
    ]
    public static func suggestedFrom(random: Random): UInt32

    /**
     * @description Checks if the value is zero.
     */
    @!APILevel[
        since: "22"
    ]
    public func isZero()

    /**
     * @description Flips the bit at the specified position.
     * @param at The index of the bit to flip (0-31).
     * @returns A new `UInt32` value with the specified bit flipped.
     */
    @!APILevel[
        since: "22"
    ]
    public func bitFlip(at: UInt8): UInt32

    /**
     * @description Adds a `UInt8` value, with overflow wrapping around.
     * @param arg The `UInt8` value to add.
     * @returns The result of the addition.
     */
    @OverflowWrapping
    @!APILevel[
        since: "22"
    ]
    public operator func+(arg: UInt8): UInt32

    /**
     * @description Subtracts a `UInt8` value, with overflow wrapping around.
     * @param arg The `UInt8` value to subtract.
     * @returns The result of the subtraction.
     */
    @OverflowWrapping
    @!APILevel[
        since: "22"
    ]
    public operator func-(arg: UInt8): UInt32
}

extend UInt64 <: Torcable<UInt64> {
    /**
     * @description Gets a random entry from a list of recently used value pairs for property-based testing.
     * @returns A tuple containing a pair of recently used `UInt64` values, or `None` if the list is empty.
     */
    @!APILevel[
        since: "22"
    ]
    public static func randomRecentEntry(): ?(UInt64, UInt64)

    /**
     * @description Gets a random value that was recently compared to the given value.
     * @param value The value to find a recent comparison for.
     * @returns A recently used `UInt64` value, or `None` if no such value is found.
     */
    @!APILevel[
        since: "22"
    ]
    public static func randomRecentValueComparedTo(value: UInt64): ?UInt64

    /**
     * @description Generates the next random `UInt64` value from a random source.
     * @param random The random number generator to use.
     * @returns A new random `UInt64` value.
     */
    @!APILevel[
        since: "22"
    ]
    public static func nextFrom(random: Random): UInt64

    /**
     * @description Generates a "suggested" `UInt64` value from a set of interesting or edge-case values.
     * @param random The random number generator to use for selection.
     * @returns A suggested `UInt64` value.
     */
    @!APILevel[
        since: "22"
    ]
    public static func suggestedFrom(random: Random): UInt64

    /**
     * @description Checks if the value is zero.
     */
    @!APILevel[
        since: "22"
    ]
    public func isZero()

    /**
     * @description Flips the bit at the specified position.
     * @param at The index of the bit to flip (0-63).
     * @returns A new `UInt64` value with the specified bit flipped.
     */
    @!APILevel[
        since: "22"
    ]
    public func bitFlip(at: UInt8): UInt64

    /**
     * @description Adds a `UInt8` value, with overflow wrapping around.
     * @param arg The `UInt8` value to add.
     * @returns The result of the addition.
     */
    @OverflowWrapping
    @!APILevel[
        since: "22"
    ]
    public operator func+(arg: UInt8): UInt64

    /**
     * @description Subtracts a `UInt8` value, with overflow wrapping around.
     * @param arg The `UInt8` value to subtract.
     * @returns The result of the subtraction.
     */
    @OverflowWrapping
    @!APILevel[
        since: "22"
    ]
    public operator func-(arg: UInt8): UInt64
}

extend Float32 <: Torcable<Float32> {
    /**
     * @description Gets a random entry from a list of recently used value pairs for property-based testing.
     * @returns A tuple containing a pair of recently used `Float32` values, or `None` if the list is empty.
     */
    @!APILevel[
        since: "22"
    ]
    public static func randomRecentEntry(): ?(Float32, Float32)

    /**
     * @description Gets a random value that was recently compared to the given value.
     * @param value The value to find a recent comparison for.
     * @returns A recently used `Float32` value, or `None` if no such value is found.
     */
    @!APILevel[
        since: "22"
    ]
    public static func randomRecentValueComparedTo(value: Float32): ?Float32

    /**
     * @description Generates the next random `Float32` value from a random source.
     * @param random The random number generator to use.
     * @returns A new random `Float32` value.
     */
    @!APILevel[
        since: "22"
    ]
    public static func nextFrom(random: Random): Float32

    /**
     * @description Generates a "suggested" `Float32` value from a set of interesting or edge-case values.
     * @param random The random number generator to use for selection.
     * @returns A suggested `Float32` value.
     */
    @!APILevel[
        since: "22"
    ]
    public static func suggestedFrom(random: Random): Float32

    /**
     * @description Checks if the value is zero.
     */
    @!APILevel[
        since: "22"
    ]
    public func isZero()

    /**
     * @description Flips the bit at the specified position.
     * @param at The index of the bit to flip (0-31).
     * @returns A new `Float32` value with the specified bit flipped.
     */
    @!APILevel[
        since: "22"
    ]
    public func bitFlip(at: UInt8): Float32

    /**
     * @description Adds a `UInt8` value, with overflow wrapping around.
     * @param arg The `UInt8` value to add.
     * @returns The result of the addition.
     */
    @OverflowWrapping
    @!APILevel[
        since: "22"
    ]
    public operator func+(arg: UInt8): Float32

    /**
     * @description Subtracts a `UInt8` value, with overflow wrapping around.
     * @param arg The `UInt8` value to subtract.
     * @returns The result of the subtraction.
     */
    @OverflowWrapping
    @!APILevel[
        since: "22"
    ]
    public operator func-(arg: UInt8): Float32
}

extend Float64 <: Torcable<Float64> {
    /**
     * @description Gets a random entry from a list of recently used value pairs for property-based testing.
     * @returns A tuple containing a pair of recently used `Float64` values, or `None` if the list is empty.
     */
    @!APILevel[
        since: "22"
    ]
    public static func randomRecentEntry(): ?(Float64, Float64)

    /**
     * @description Gets a random value that was recently compared to the given value.
     * @param value The value to find a recent comparison for.
     * @returns A recently used `Float64` value, or `None` if no such value is found.
     */
    @!APILevel[
        since: "22"
    ]
    public static func randomRecentValueComparedTo(value: Float64): ?Float64

    /**
     * @description Generates the next random `Float64` value from a random source.
     * @param random The random number generator to use.
     * @returns A new random `Float64` value.
     */
    @!APILevel[
        since: "22"
    ]
    public static func nextFrom(random: Random): Float64

    /**
     * @description Generates a "suggested" `Float64` value from a set of interesting or edge-case values.
     * @param random The random number generator to use for selection.
     * @returns A suggested `Float64` value.
     */
    @!APILevel[
        since: "22"
    ]
    public static func suggestedFrom(random: Random): Float64

    /**
     * @description Checks if the value is zero.
     */
    @!APILevel[
        since: "22"
    ]
    public func isZero()

    /**
     * @description Flips the bit at the specified position.
     * @param at The index of the bit to flip (0-63).
     * @returns A new `Float64` value with the specified bit flipped.
     */
    @!APILevel[
        since: "22"
    ]
    public func bitFlip(at: UInt8): Float64

    /**
     * @description Adds a `UInt8` value, with overflow wrapping around.
     * @param arg The `UInt8` value to add.
     * @returns The result of the addition.
     */
    @OverflowWrapping
    @!APILevel[
        since: "22"
    ]
    public operator func+(arg: UInt8): Float64

    /**
     * @description Subtracts a `UInt8` value, with overflow wrapping around.
     * @param arg The `UInt8` value to subtract.
     * @returns The result of the subtraction.
     */
    @OverflowWrapping
    @!APILevel[
        since: "22"
    ]
    public operator func-(arg: UInt8): Float64
}

/**
 * @description A configuration key for the 'help' option, which is a boolean flag.
 */
@!APILevel[
    since: "22"
]
public struct KeyHelp <: KeyFor<Bool> {
    /**
     * @description The singleton instance of `KeyHelp`.
     */
    @!APILevel[
        since: "22"
    ]
    public static prop help: KeyHelp

    /**
     * @description The name of the configuration key, "--help".
     */
    @!APILevel[
        since: "22"
    ]
    public prop name: String
}

/**
 * @description A configuration key for the 'no-color' option, which is a boolean flag.
 */
@!APILevel[
    since: "22"
]
public struct KeyNoColor <: KeyFor<Bool> {
    /**
     * @description The singleton instance of `KeyNoColor`.
     */
    @!APILevel[
        since: "22"
    ]
    public static prop noColor: KeyNoColor

    /**
     * @description The name of the configuration key, "--no-color".
     */
    @!APILevel[
        since: "22"
    ]
    public prop name: String
}

/**
 * @description A configuration key indicating if the test is run from the top level, which is a boolean flag.
 */
@!APILevel[
    since: "22"
]
public struct KeyFromTopLevel <: KeyFor<Bool> {
    /**
     * @description The singleton instance of `KeyFromTopLevel`.
     */
    @!APILevel[
        since: "22"
    ]
    public static prop fromTopLevel: KeyFromTopLevel

    /**
     * @description The name of the configuration key, "fromTopLevel".
     */
    @!APILevel[
        since: "22"
    ]
    public prop name: String
}

/**
 * @description A configuration key for the 'random-seed' option, which is an `Int64`.
 */
@!APILevel[
    since: "22"
]
public struct KeyRandomSeed <: KeyFor<Int64> {
    /**
     * @description The singleton instance of `KeyRandomSeed`.
     */
    @!APILevel[
        since: "22"
    ]
    public static prop randomSeed: KeyRandomSeed

    /**
     * @description The name of the configuration key, "--random-seed".
     */
    @!APILevel[
        since: "22"
    ]
    public prop name: String
}

/**
 * @description A configuration key for the 'warmup' option, which can be an `Int64` or a `Duration`.
 */
@!APILevel[
    since: "22"
]
public struct KeyWarmup <: KeyFor<Int64> & KeyFor<Duration> {
    /**
     * @description The singleton instance of `KeyWarmup`.
     */
    @!APILevel[
        since: "22"
    ]
    public static prop warmup: KeyWarmup

    /**
     * @description The name of the configuration key, "--warmup".
     */
    @!APILevel[
        since: "22"
    ]
    public prop name: String
}

/**
 * @description A configuration key for the 'min-duration' option, which is a `Duration`.
 */
@!APILevel[
    since: "22"
]
public struct KeyMinDuration <: KeyFor<Duration> {
    /**
     * @description The singleton instance of `KeyMinDuration`.
     */
    @!APILevel[
        since: "22"
    ]
    public static prop minDuration: KeyMinDuration

    /**
     * @description The name of the configuration key, "--min-duration".
     */
    @!APILevel[
        since: "22"
    ]
    public prop name: String
}

/**
 * @description A configuration key for the 'explicit-gc' option, which is an `ExplicitGcType`.
 */
@!APILevel[
    since: "22"
]
public struct KeyExplicitGC <: KeyFor<ExplicitGcType> {
    /**
     * @description The singleton instance of `KeyExplicitGC`.
     */
    @!APILevel[
        since: "22"
    ]
    public static prop explicitGC: KeyExplicitGC

    /**
     * @description The name of the configuration key, "--explicit-gc".
     */
    @!APILevel[
        since: "22"
    ]
    public prop name: String
}

/**
 * @description A configuration key for the 'min-batches' option, which is an `Int64`.
 */
@!APILevel[
    since: "22"
]
public struct KeyMinBatches <: KeyFor<Int64> {
    /**
     * @description The singleton instance of `KeyMinBatches`.
     */
    @!APILevel[
        since: "22"
    ]
    public static prop minBatches: KeyMinBatches

    /**
     * @description The name of the configuration key, "--min-batches".
     */
    @!APILevel[
        since: "22"
    ]
    public prop name: String
}

/**
 * @description A configuration key for the 'batch-size' option, which can be an `Int64` or a `Range<Int64>`.
 */
@!APILevel[
    since: "22"
]
public struct KeyBatchSize <: KeyFor<Int64> & KeyFor<Range<Int64>> {
    /**
     * @description The singleton instance of `KeyBatchSize`.
     */
    @!APILevel[
        since: "22"
    ]
    public static prop batchSize: KeyBatchSize

    /**
     * @description The name of the configuration key, "--batch-size".
     */
    @!APILevel[
        since: "22"
    ]
    public prop name: String
}

/**
 * @description A configuration key for the 'parallel' option, which can be a `Bool`, `String`, or `Int64`.
 */
@!APILevel[
    since: "22"
]
public struct KeyParallel <: KeyFor<Bool> & KeyFor<String> & KeyFor<Int64> {
    /**
     * @description The singleton instance of `KeyParallel`.
     */
    @!APILevel[
        since: "22"
    ]
    public static prop parallel: KeyParallel

    /**
     * @description The name of the configuration key, "--parallel".
     */
    @!APILevel[
        since: "22"
    ]
    public prop name: String
}

/**
 * @description A configuration key for the 'generation-steps' option, which is an `Int64`.
 */
@!APILevel[
    since: "22"
]
public struct KeyGenerationSteps <: KeyFor<Int64> {
    /**
     * @description The singleton instance of `KeyGenerationSteps`.
     */
    @!APILevel[
        since: "22"
    ]
    public static prop generationSteps: KeyGenerationSteps

    /**
     * @description The name of the configuration key, "--generation-steps".
     */
    @!APILevel[
        since: "22"
    ]
    public prop name: String
}

/**
 * @description A configuration key for the 'reduction-steps' option, which is an `Int64`.
 */
@!APILevel[
    since: "22"
]
public struct KeyReductionSteps <: KeyFor<Int64> {
    /**
     * @description The singleton instance of `KeyReductionSteps`.
     */
    @!APILevel[
        since: "22"
    ]
    public static prop reductionSteps: KeyReductionSteps

    /**
     * @description The name of the configuration key, "--reduction-steps".
     */
    @!APILevel[
        since: "22"
    ]
    public prop name: String
}

/**
 * @description A configuration key for the 'skip' option, which is a boolean flag.
 */
@!APILevel[
    since: "22"
]
public struct KeySkip <: KeyFor<Bool> {
    /**
     * @description The singleton instance of `KeySkip`.
     */
    @!APILevel[
        since: "22"
    ]
    public static prop skip: KeySkip

    /**
     * @description The name of the configuration key, "skip".
     */
    @!APILevel[
        since: "22"
    ]
    public prop name: String
}

/**
 * @description A configuration key for the 'coverage-guided' option, which is a boolean flag.
 */
@!APILevel[
    since: "22"
]
public struct KeyCoverageGuided <: KeyFor<Bool> {
    /**
     * @description The singleton instance of `KeyCoverageGuided`.
     */
    @!APILevel[
        since: "22"
    ]
    public static prop coverageGuided: KeyCoverageGuided

    /**
     * @description The name of the configuration key, "--coverage-guided".
     */
    @!APILevel[
        since: "22"
    ]
    public prop name: String
}

/**
 * @description A configuration key for the 'coverage-guided-initial-seeds' option, which is an `Int64`.
 */
@!APILevel[
    since: "22"
]
public struct KeyCoverageGuidedInitialSeeds <: KeyFor<Int64> {
    /**
     * @description The singleton instance of `KeyCoverageGuidedInitialSeeds`.
     */
    @!APILevel[
        since: "22"
    ]
    public static prop coverageGuidedInitialSeeds: KeyCoverageGuidedInitialSeeds

    /**
     * @description The name of the configuration key, "--coverage-guided-initial-seeds".
     */
    @!APILevel[
        since: "22"
    ]
    public prop name: String
}

/**
 * @description A configuration key for the 'coverage-guided-max-candidates' option, which is an `Int64`.
 */
@!APILevel[
    since: "22"
]
public struct KeyCoverageGuidedMaxCandidates <: KeyFor<Int64> {
    /**
     * @description The singleton instance of `KeyCoverageGuidedMaxCandidates`.
     */
    @!APILevel[
        since: "22"
    ]
    public static prop coverageGuidedMaxCandidates: KeyCoverageGuidedMaxCandidates

    /**
     * @description The name of the configuration key, "--coverage-guided-max-candidates".
     */
    @!APILevel[
        since: "22"
    ]
    public prop name: String
}

/**
 * @description A configuration key for the 'coverage-guided-baseline-score' option, which is an `Int64`.
 */
@!APILevel[
    since: "22"
]
public struct KeyCoverageGuidedBaselineScore <: KeyFor<Int64> {
    /**
     * @description The singleton instance of `KeyCoverageGuidedBaselineScore`.
     */
    @!APILevel[
        since: "22"
    ]
    public static prop coverageGuidedBaselineScore: KeyCoverageGuidedBaselineScore

    /**
     * @description The name of the configuration key, "--coverage-guided-baseline-score".
     */
    @!APILevel[
        since: "22"
    ]
    public prop name: String
}

/**
 * @description A configuration key for the 'coverage-guided-new-coverage-score' option, which is an `Int64`.
 */
@!APILevel[
    since: "22"
]
public struct KeyCoverageGuidedNewCoverageScore <: KeyFor<Int64> {
    /**
     * @description The singleton instance of `KeyCoverageGuidedNewCoverageScore`.
     */
    @!APILevel[
        since: "22"
    ]
    public static prop coverageGuidedNewCoverageScore: KeyCoverageGuidedNewCoverageScore

    /**
     * @description The name of the configuration key, "--coverage-guided-new-coverage-score".
     */
    @!APILevel[
        since: "22"
    ]
    public prop name: String
}

/**
 * @description A configuration key for the 'coverage-guided-new-coverage-bonus' option, which is an `Int64`.
 */
@!APILevel[
    since: "22"
]
public struct KeyCoverageGuidedNewCoverageBonus <: KeyFor<Int64> {
    /**
     * @description The singleton instance of `KeyCoverageGuidedNewCoverageBonus`.
     */
    @!APILevel[
        since: "22"
    ]
    public static prop coverageGuidedNewCoverageBonus: KeyCoverageGuidedNewCoverageBonus

    /**
     * @description The name of the configuration key, "--coverage-guided-new-coverage-bonus".
     */
    @!APILevel[
        since: "22"
    ]
    public prop name: String
}

/**
 * @description A configuration key for the 'bench' option, which is a boolean flag to enable benchmark tests.
 */
@!APILevel[
    since: "22"
]
public struct KeyBench <: KeyFor<Bool> {
    /**
     * @description The singleton instance of `KeyBench`.
     */
    @!APILevel[
        since: "22"
    ]
    public static prop bench: KeyBench

    /**
     * @description The name of the configuration key, "--bench".
     */
    @!APILevel[
        since: "22"
    ]
    public prop name: String
}

/**
 * @description A configuration key for the 'timeout' option, which is a `Duration`.
 */
@!APILevel[
    since: "22"
]
public struct KeyTimeout <: KeyFor<Duration> {
    /**
     * @description The singleton instance of `KeyTimeout`.
     */
    @!APILevel[
        since: "22"
    ]
    public static prop timeout: KeyTimeout

    /**
     * @description The name of the configuration key, "timeout".
     */
    @!APILevel[
        since: "22"
    ]
    public prop name: String
}

/**
 * @description A configuration key for the 'timeout-each' option, which is a `String`.
 */
@!APILevel[
    since: "22"
]
public struct KeyTimeoutEach <: KeyFor<String> {
    /**
     * @description The singleton instance of `KeyTimeoutEach`.
     */
    @!APILevel[
        since: "22"
    ]
    public static prop timeoutEach: KeyTimeoutEach

    /**
     * @description The name of the configuration key, "timeout-each".
     */
    @!APILevel[
        since: "22"
    ]
    public prop name: String
}

/**
 * @description A configuration key for the 'timeout-handler' option, which is a function that handles timeouts.
 */
@!APILevel[
    since: "22"
]
public struct KeyTimeoutHandler <: KeyFor<(TestCaseInfo) -> Unit> {
    /**
     * @description The singleton instance of `KeyTimeoutHandler`.
     */
    @!APILevel[
        since: "22"
    ]
    public static prop timeoutHandler: KeyTimeoutHandler

    /**
     * @description The name of the configuration key, "timeout-handler".
     */
    @!APILevel[
        since: "22"
    ]
    public prop name: String
}

/**
 * @description A configuration key for the 'capture-output' option, which is a boolean flag.
 */
@!APILevel[
    since: "22"
]
public struct KeyCaptureOutput <: KeyFor<Bool> {
    /**
     * @description The singleton instance of `KeyCaptureOutput`.
     */
    @!APILevel[
        since: "22"
    ]
    public static prop captureOutput: KeyCaptureOutput

    /**
     * @description The name of the configuration key, "capture-output".
     */
    @!APILevel[
        since: "22"
    ]
    public prop name: String
}

/**
 * @description A configuration key for the 'no-capture-output' option, which is a boolean flag.
 */
@!APILevel[
    since: "22"
]
public struct KeyNoCaptureOutput <: KeyFor<Bool> {
    /**
     * @description The singleton instance of `KeyNoCaptureOutput`.
     */
    @!APILevel[
        since: "22"
    ]
    public static prop noCaptureOutput: KeyNoCaptureOutput

    /**
     * @description The name of the configuration key, "--no-capture-output".
     */
    @!APILevel[
        since: "22"
    ]
    public prop name: String
}

/**
 * @description A configuration key for the 'show-all-output' option, which is a boolean flag.
 */
@!APILevel[
    since: "22"
]
public struct KeyShowAllOutput <: KeyFor<Bool> {
    /**
     * @description The singleton instance of `KeyShowAllOutput`.
     */
    @!APILevel[
        since: "22"
    ]
    public static prop showAllOutput: KeyShowAllOutput

    /**
     * @description The name of the configuration key, "--show-all-output".
     */
    @!APILevel[
        since: "22"
    ]
    public prop name: String
}

/**
 * @description A configuration key for the 'verbose' option, which is a boolean flag.
 */
@!APILevel[
    since: "22"
]
public struct KeyVerbose <: KeyFor<Bool> {
    /**
     * @description The singleton instance of `KeyVerbose`.
     */
    @!APILevel[
        since: "22"
    ]
    public static prop verbose: KeyVerbose

    /**
     * @description The name of the configuration key, "--verbose".
     */
    @!APILevel[
        since: "22"
    ]
    public prop name: String
}

/**
 * @description A configuration key for the 'measurement' option, which is a `Measurement`.
 */
@!APILevel[
    since: "22"
]
public struct KeyMeasurement <: KeyFor<Measurement> {
    /**
     * @description The singleton instance of `KeyMeasurement`.
     */
    @!APILevel[
        since: "22"
    ]
    public static prop measurement: KeyMeasurement

    /**
     * @description The name of the configuration key, "measurement".
     */
    @!APILevel[
        since: "22"
    ]
    public prop name: String
}

/**
 * @description A configuration key for the 'measurement-info' option, which is a `MeasurementInfo`.
 */
@!APILevel[
    since: "22"
]
public struct KeyMeasurementInfo <: KeyFor<MeasurementInfo> {
    /**
     * @description The singleton instance of `KeyMeasurementInfo`.
     */
    @!APILevel[
        since: "22"
    ]
    public static prop measurementInfo: KeyMeasurementInfo

    /**
     * @description The name of the configuration key, "measurement-info".
     */
    @!APILevel[
        since: "22"
    ]
    public prop name: String
}

/**
 * @description A configuration key for the internal test runner input path, which is a `String`.
 */
@!APILevel[
    since: "22"
]
public struct KeyInternalTestrunnerInputPath <: KeyFor<String> {
    /**
     * @description The singleton instance of `KeyInternalTestrunnerInputPath`.
     */
    @!APILevel[
        since: "22"
    ]
    public static prop internalTestrunnerInputPath: KeyInternalTestrunnerInputPath

    /**
     * @description The name of the configuration key, "internal-testrunner-input-path".
     */
    @!APILevel[
        since: "22"
    ]
    public prop name: String
}

/**
 * @description A configuration key for the 'death-aware' option, which is a boolean flag.
 */
@!APILevel[
    since: "22"
]
public struct KeyDeathAware <: KeyFor<Bool> {
    /**
     * @description The singleton instance of `KeyDeathAware`.
     */
    @!APILevel[
        since: "22"
    ]
    public static prop deathAware: KeyDeathAware

    /**
     * @description The name of the configuration key, "death-aware".
     */
    @!APILevel[
        since: "22"
    ]
    public prop name: String
}

/**
 * @description A configuration key for the 'baseline' option, which is a `String`.
 */
@!APILevel[
    since: "22"
]
public struct KeyBaseline <: KeyFor<String> {
    /**
     * @description The singleton instance of `KeyBaseline`.
     */
    @!APILevel[
        since: "22"
    ]
    public static prop baseline: KeyBaseline

    /**
     * @description The name of the configuration key, "--baseline".
     */
    @!APILevel[
        since: "22"
    ]
    public prop name: String
}

/**
 * @description A configuration key for the 'filter' option, which is a `String`.
 */
@!APILevel[
    since: "22"
]
public struct KeyFilter <: KeyFor<String> {
    /**
     * @description The singleton instance of `KeyFilter`.
     */
    @!APILevel[
        since: "22"
    ]
    public static prop filter: KeyFilter

    /**
     * @description The name of the configuration key, "--filter".
     */
    @!APILevel[
        since: "22"
    ]
    public prop name: String
}

/**
 * @description A configuration key for the 'include-tags' option, which is a `String`.
 */
@!APILevel[
    since: "22"
]
public struct KeyIncludeTags <: KeyFor<String> {
    /**
     * @description The singleton instance of `KeyIncludeTags`.
     */
    @!APILevel[
        since: "22"
    ]
    public static prop includeTags: KeyIncludeTags

    /**
     * @description The name of the configuration key, "--include-tags".
     */
    @!APILevel[
        since: "22"
    ]
    public prop name: String
}

/**
 * @description A configuration key for the 'exclude-tags' option, which is a `String`.
 */
@!APILevel[
    since: "22"
]
public struct KeyExcludeTags <: KeyFor<String> {
    /**
     * @description The singleton instance of `KeyExcludeTags`.
     */
    @!APILevel[
        since: "22"
    ]
    public static prop excludeTags: KeyExcludeTags

    /**
     * @description The name of the configuration key, "--exclude-tags".
     */
    @!APILevel[
        since: "22"
    ]
    public prop name: String
}

/**
 * @description A configuration key for the 'report-path' option, which is a `String`.
 */
@!APILevel[
    since: "22"
]
public struct KeyReportPath <: KeyFor<String> {
    /**
     * @description The singleton instance of `KeyReportPath`.
     */
    @!APILevel[
        since: "22"
    ]
    public static prop reportPath: KeyReportPath

    /**
     * @description The name of the configuration key, "--report-path".
     */
    @!APILevel[
        since: "22"
    ]
    public prop name: String
}

/**
 * @description A configuration key for the 'report-format' option, which is a `String`.
 */
@!APILevel[
    since: "22"
]
public struct KeyReportFormat <: KeyFor<String> {
    /**
     * @description The singleton instance of `KeyReportFormat`.
     */
    @!APILevel[
        since: "22"
    ]
    public static prop reportFormat: KeyReportFormat

    /**
     * @description The name of the configuration key, "--report-format".
     */
    @!APILevel[
        since: "22"
    ]
    public prop name: String
}

/**
 * @description A configuration key for the 'baseline-path' option, which is a `String`.
 */
@!APILevel[
    since: "22"
]
public struct KeyBaselinePath <: KeyFor<String> {
    /**
     * @description The singleton instance of `KeyBaselinePath`.
     */
    @!APILevel[
        since: "22"
    ]
    public static prop baselinePath: KeyBaselinePath

    /**
     * @description The name of the configuration key, "--baseline-path".
     */
    @!APILevel[
        since: "22"
    ]
    public prop name: String
}

/**
 * @description A configuration key for the 'dry-run' option, which is a boolean flag.
 */
@!APILevel[
    since: "22"
]
public struct KeyDryRun <: KeyFor<Bool> {
    /**
     * @description The singleton instance of `KeyDryRun`.
     */
    @!APILevel[
        since: "22"
    ]
    public static prop dryRun: KeyDryRun

    /**
     * @description The name of the configuration key, "--dry-run".
     */
    @!APILevel[
        since: "22"
    ]
    public prop name: String
}

/**
 * @description A configuration key for the 'show-tags' option, which is a boolean flag.
 */
@!APILevel[
    since: "22"
]
public struct KeyShowTags <: KeyFor<Bool> {
    /**
     * @description The singleton instance of `KeyShowTags`.
     */
    @!APILevel[
        since: "22"
    ]
    public static prop showTags: KeyShowTags

    /**
     * @description The name of the configuration key, "--show-tags".
     */
    @!APILevel[
        since: "22"
    ]
    public prop name: String
}



/**
 * @description A utility for building power-assert diagrams, which visualize the values of sub-expressions within a failed assertion.
 */
@!APILevel[
    since: "22"
]
public class PowerAssertDiagramBuilder {
    /**
     * @description Initializes a new `PowerAssertDiagramBuilder` with the source code of the asserted expression.
     * @param expression The string representation of the expression being asserted.
     */
    @!APILevel[
        since: "22"
    ]
    public init(expression: String)

    /**
     * @description Records the value of a sub-expression during a power-assert evaluation.
     * @param value The value of the sub-expression.
     * @param exprAsText The text of the sub-expression.
     * @param position The starting position of the sub-expression in the original expression string.
     * @returns The original `value` passed in.
     */
    @!APILevel[
        since: "22"
    ]
    public func r<T>(value: T, exprAsText: String, position: Int64): T

    /**
     * @description Records the value of a `Rune` sub-expression during a power-assert evaluation.
     * @param value The value of the sub-expression.
     * @param exprAsText The text of the sub-expression.
     * @param position The starting position of the sub-expression in the original expression string.
     * @returns The original `value` passed in.
     */
    @!APILevel[
        since: "22"
    ]
    public func r(value: Rune, exprAsText: String, position: Int64): Rune

    /**
     * @description Records the value of a `String` sub-expression during a power-assert evaluation.
     * @param value The value of the sub-expression.
     * @param exprAsText The text of the sub-expression.
     * @param position The starting position of the sub-expression in the original expression string.
     * @returns The original `value` passed in.
     */
    @!APILevel[
        since: "22"
    ]
    public func r(value: String, exprAsText: String, position: Int64): String

    /**
     * @description Handles an exception that occurred during the evaluation of a sub-expression.
     * @param exception The exception that was caught.
     * @param exprAsText The text of the sub-expression that threw the exception.
     * @param position The starting position of the sub-expression.
     */
    @!APILevel[
        since: "22"
    ]
    public func h(exception: Exception, exprAsText: String, position: Int64): Nothing

    /**
     * @param passed A boolean indicating whether the assertion passed.
     */
    @!APILevel[
        since: "22"
    ]
    public func w(passed: Bool): Unit
}

/**
 * @description A sealed interface representing a reporter for test or benchmark results.
 */
@!APILevel[
    since: "22"
]
sealed interface Reporter<TReport, TReturn> {
}

/**
 * @description A reporter that outputs benchmark results to a CSV file.
 */
@!APILevel[
    since: "22"
]
public class CsvReporter <: Reporter<BenchReport, Unit> {
    /**
     * @description Creates a `CsvReporter`.
     * @param directory The path to the directory where the CSV report will be saved.
     */
    @!APILevel[
        since: "22"
    ]
    public CsvReporter(let directory: Path)
}

/**
 * @description A reporter that outputs raw benchmark results to a CSV file.
 */
@!APILevel[
    since: "22"
]
public class CsvRawReporter <: Reporter<BenchReport, Unit> {
    /**
     * @description Creates a `CsvRawReporter`.
     * @param directory The path to the directory where the raw CSV report will be saved.
     */
    @!APILevel[
        since: "22"
    ]
    public CsvRawReporter(let directory: Path)
}

/**
 * @description A reporter that outputs test results to an XML file in a standard format (e.g., JUnit XML).
 */
@!APILevel[
    since: "22"
]
public class XmlReporter <: Reporter<TestReport, Unit> {
    /**
     * @description Creates an `XmlReporter`.
     * @param directory The path to the directory where the XML report will be saved.
     */
    @!APILevel[
        since: "22"
    ]
    public XmlReporter(let directory: Path)
}

/**
 * @description A reporter that prints test and benchmark results to the console.
 */
@!APILevel[
    since: "22"
]
public class ConsoleReporter <: Reporter<TestReport, Unit> & Reporter<BenchReport, Unit> {
    /**
     * @description Creates a `ConsoleReporter`.
     * @param colored A boolean indicating whether to use colored output. Defaults to `true`.
     */
    @!APILevel[
        since: "22"
    ]
    public ConsoleReporter(let colored!: Bool = true)
}

/**
 * @description A generic reporter that formats test and benchmark reports into a textual representation using a `PrettyPrinter`.
 */
@!APILevel[
    since: "22"
]
public class TextReporter<PP> <: Reporter<TestReport, PP> & Reporter<BenchReport, PP>
        where PP <: PrettyPrinter {
    /**
     * @description Creates a `TextReporter`.
     * @param into The `PrettyPrinter` to which the report will be written.
     */
    @!APILevel[
        since: "22"
    ]
    public TextReporter(let into!: PP)
}

extend <PP> TextReporter<PP> <: TextReporterBase<PP> where PP <: PrettyPrinter {
    /**
     * @description Prints the given report using the configured `PrettyPrinter`.
     * @param report The report to be printed.
     * @returns The `PrettyPrinter` instance used for printing.
     */
    @!APILevel[
        since: "22"
    ]
    public func printReport(report: Report): PP
}

extend ConsoleReporter <: TextReporterBase<Unit> {
    /**
     * @description Prints the given report to the console.
     * @param report The report to be printed.
     */
    @!APILevel[
        since: "22"
    ]
    public func printReport(report: Report): Unit
}

/**
 * @description A reporter that collects raw statistics from benchmark reports.
 * It aggregates benchmark results into a map where the key is the benchmark name
 * and the value is a tuple containing the mean and standard deviation of execution times.
 */
@!APILevel[
    since: "22"
]
public class RawStatsReporter <: Reporter<BenchReport, HashMap<String, (Float64, Float64)>> {
    /**
     * @description Creates a new `RawStatsReporter`.
     */
    @!APILevel[
        since: "22"
    ]
    public RawStatsReporter()
}

extend Float64 <: AsFloat {
    /**
     * @description Returns the `Float64` value itself.
     * @returns The `Float64` value.
     */
    @!APILevel[
        since: "22"
    ]
    public func asFloat(): Float64
}

/**
 * @description A data strategy processor that applies a flat-map operation to transform data from one type to another.
 */
@!APILevel[
    since: "22"
]
public class FlatMapProcessor<T, R> <: DataStrategyProcessor<R> {
}

/**
 * @description A data strategy processor that applies a flat-map operation using a data strategy to transform data.
 */
@!APILevel[
    since: "22"
]
public class FlatMapStrategyProcessor<T, R> <: DataStrategyProcessor<R> {
}

/**
 * @description A data strategy processor that applies a mapping function to transform data from one type to another.
 */
@!APILevel[
    since: "22"
]
public class MapProcessor<T, R> <: DataStrategyProcessor<R> {
}

/**
 * @description A data strategy processor that computes the Cartesian product of two data strategy processors.
 */
@!APILevel[
    since: "22"
]
public class CartesianProductProcessor<T0, T1> <: DataStrategyProcessor<(T0, T1)> {
    /**
     * @description Creates a `CartesianProductProcessor`.
     * @param left The left-hand side data strategy processor.
     * @param right The right-hand side data strategy processor.
     */
    @!APILevel[
        since: "22"
    ]
    public CartesianProductProcessor(let left: DataStrategyProcessor<T0>, let right: DataStrategyProcessor<T1>)
}

/**
 * @description A simple data strategy processor that wraps a data strategy.
 */
@!APILevel[
    since: "22"
]
public class SimpleProcessor<T> <: DataStrategyProcessor<T> {
    /**
     * @description Creates a `SimpleProcessor`.
     * @param buildDelegate A function that builds the data strategy.
     * @param name The name of the processor.
     */
    @!APILevel[
        since: "22"
    ]
    public SimpleProcessor(let buildDelegate: () -> DataStrategy<T>, let name: String)
}

/**
 * @description A base class for nodes in a lazily evaluated, potentially cyclic graph structure.
 */
@!APILevel[
    since: "22"
]
public open class LazyCyclicNode {
}

/**
 * @description Represents an input parameter for a test case, typically used in parameterized tests.
 */
@!APILevel[
    since: "22"
]
public class InputParameter {
}

/**
 * @description An abstract base class for processing data strategies in parameterized tests.
 */
@!APILevel[
    since: "22"
]
sealed abstract class DataStrategyProcessor<T> {
    /**
     * @description Converts the data strategy into a benchmark test.
     * @param caseName The name of the benchmark case.
     * @param configuration The configuration for the benchmark.
     * @param doRun The function to execute for each benchmark run.
     * @returns A `Benchmark` object.
     */
    @!APILevel[
        since: "22"
    ]
    public func intoBenchmark(
        caseName!: String,
        configuration!: Configuration,
        doRun!: (T, Int64, Int64) -> Float64
    ): Benchmark

    /**
     * @description Converts the data strategy into a unit test case.
     * @param caseName The name of the test case.
     * @param configuration The configuration for the test.
     * @param doRun The function to execute for the test.
     * @returns A `UnitTestCase` object.
     */
    @!APILevel[
        since: "22"
    ]
    public func intoUnitTestCase(
        caseName!: String,
        configuration!: Configuration,
        doRun!: (T) -> Unit
    ): UnitTestCase

    /**
     * @description Starts a processing pipeline with a given data strategy.
     * @param s The initial data strategy.
     * @param name The name for this processing stage.
     * @returns A `SimpleProcessor` to continue building the pipeline.
     */
    @!APILevel[
        since: "22"
    ]
    public static func start(s: DataStrategy<T>, name: String): SimpleProcessor<T>

    /**
     * @description Starts a processing pipeline with a function that provides a data strategy for benchmark input.
     * @param f A function that returns a data strategy.
     * @param name The name for this processing stage.
     * @returns A `DataStrategyProcessor` for the benchmark input.
     */
    @!APILevel[
        since: "22"
    ]
    public static func start<U>(f: () -> DataStrategy<U>, name: String): DataStrategyProcessor<U>
        where U <: BenchInputProvider<T>

    /**
     * @description Starts a processing pipeline with a function that provides a data strategy.
     * @param f A function that returns a data strategy.
     * @param name The name for this processing stage.
     * @param x An unused parameter for overload resolution.
     * @returns A `SimpleProcessor` to continue building the pipeline.
     */
    @!APILevel[
        since: "22"
    ]
    public static func start(f: () -> DataStrategy<T>, name: String, x!: Int64 = 0): SimpleProcessor<T>

    /**
     * @description Starts a processing pipeline with a function that provides a data strategy processor.
     * @param f A function that returns a data strategy processor.
     * @param _ The name for this processing stage (unused).
     * @returns The `DataStrategyProcessor` returned by the function.
     */
    @!APILevel[
        since: "22"
    ]
    public static func start(f: () -> DataStrategyProcessor<T>, _: String): DataStrategyProcessor<T>

    /**
     * @description Starts a processing pipeline with a function that provides a data strategy processor for benchmark input.
     * @param f A function that returns a data strategy processor.
     * @param _ The name for this processing stage (unused).
     * @param x An unused parameter for overload resolution.
     * @returns The `DataStrategyProcessor` for the benchmark input.
     */
    @!APILevel[
        since: "22"
    ]
    public static func start<U>(f: () -> DataStrategyProcessor<U>, _: String, x!: Int64 = 0): DataStrategyProcessor<U>
        where U <: BenchInputProvider<T>

}

extend<T> DataStrategyProcessor<T> {
    /**
     * @description Applies a mapping function to the data strategy.
     * @param f The function to apply to each element.
     * @returns A `MapProcessor` representing the mapped strategy.
     */
    @!APILevel[
        since: "22"
    ]
    public func map<R>(f: (T) -> R): MapProcessor<T, R>

    /**
     * @description Applies a mapping function that also takes the test configuration.
     * @param f The function to apply to each element, which also receives the configuration.
     * @returns A `MapProcessor` representing the mapped strategy.
     */
    @!APILevel[
        since: "22"
    ]
    public func mapWithConfig<R>(f: (T, Configuration) -> R): MapProcessor<T, R>

    /**
     * @description Applies a flat-map function that returns a `DataProvider`.
     * @param f The function to apply to each element.
     * @returns A `FlatMapProcessor` representing the flat-mapped strategy.
     */
    @!APILevel[
        since: "22"
    ]
    public func flatMap<R>(f: (T) -> DataProvider<R>): FlatMapProcessor<T, R>

    /**
     * @description Applies a flat-map function that returns a `DataStrategy`.
     * @param f The function to apply to each element.
     * @returns A `FlatMapStrategyProcessor` representing the flat-mapped strategy.
     */
    @!APILevel[
        since: "22"
    ]
    public func flatMapStrategy<R>(f: (T) -> DataStrategy<R>): FlatMapStrategyProcessor<T, R>

    /**
     * @description Computes the Cartesian product with another data strategy processor.
     * @param p The other data strategy processor.
     * @returns A `CartesianProductProcessor` representing the product.
     */
    @!APILevel[
        since: "22"
    ]
    public func product<R>(p: DataStrategyProcessor<R>): CartesianProductProcessor<T, R>

    /**
     * @description Computes the product with a unit data strategy processor.
     * @param p The unit data strategy processor.
     * @returns A `MapProcessor` that effectively pairs the original data with a unit value.
     */
    @!APILevel[
        since: "22"
    ]
    public func productWithUnit<P>(p: P): MapProcessor<(T, Unit), T> where P <: DataStrategyProcessor<Unit>
}

extend JsonValue <: IntoJson {
    /**
     * @description Converts this `JsonValue` to a `JsonValue` (identity conversion).
     * @returns The `JsonValue` itself.
     */
    @!APILevel[
        since: "22"
    ]
    public func json(): JsonValue
}

extend String <: IntoJson {
    /**
     * @description Converts this `String` to a `JsonValue`.
     * @returns A `JsonValue` representing the string.
     */
    @!APILevel[
        since: "22"
    ]
    public func json(): JsonValue
}

extend Int64 <: IntoJson {
    /**
     * @description Converts this `Int64` to a `JsonValue`.
     * @returns A `JsonValue` representing the number.
     */
    @!APILevel[
        since: "22"
    ]
    public func json(): JsonValue
}

extend<T> Option<T> <: IntoJson where T <: IntoJson {
    /**
     * @description Converts this `Option` to a `JsonValue`. `Some` is converted to the inner JSON value, and `None` is converted to JSON null.
     * @returns A `JsonValue` representing the option.
     */
    @!APILevel[
        since: "22"
    ]
    public func json(): JsonValue
}

extend<T> Array<T> <: IntoJson where T <: IntoJson {
    /**
     * @description Converts this `Array` to a `JsonValue` (JSON array).
     * @returns A `JsonValue` representing the array.
     */
    @!APILevel[
        since: "22"
    ]
    public func json(): JsonValue
}

extend<T> ArrayList<T> <: IntoJson where T <: IntoJson {
    /**
     * @description Converts this `ArrayList` to a `JsonValue` (JSON array).
     * @returns A `JsonValue` representing the array.
     */
    @!APILevel[
        since: "22"
    ]
    public func json(): JsonValue
}

/**
 * @description A base class for exceptions specific to the unittest framework.
 */
@!APILevel[
    since: "22"
]
public open class UnittestException <: Exception {
}

/**
 * @description An exception thrown when a test case exceeds its specified timeout.
 */
@!APILevel[
    since: "22"
]
public class UnittestTimeoutException <: Exception {
}

/**
 * @description An exception thrown when command-line options for the unittest framework are malformed.
 */
@!APILevel[
    since: "22"
]
public class UnittestCliOptionsFormatException <: UnittestException {
}












