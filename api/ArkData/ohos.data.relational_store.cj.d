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

package ohos.data.relational_store


import ohos.app.ability.ui_ability.UIAbilityContext
import ohos.callback_invoke.Callback0Argument
import ohos.labels.*

/**
 * Manages relational database configurations.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
]
public class RdbPredicates {
    /**
     * A parameterized constructor used to create a RdbPredicates instance.
     *
     * @param { String } name - Indicates the table name of the database.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public init(name: String)

    /**
     * Specifies all remote devices which connect to local device when syncing distributed database.
     * When query database, this function should not be called.
     *
     * @returns { RdbPredicates } The RdbPredicates self.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public func inAllDevices(): RdbPredicates

    /**
     * Configure the RdbPredicates to match the field whose data type is RelationalStoreValueType and value is equal
     * to a specified value.
     * This method is similar to = of the SQL statement.
     *
     * @param { String } field - Indicates the column name in the database table.
     * @param { RelationalStoreValueType } value - Indicates the value to match with the RdbPredicates.
     * @returns { RdbPredicates } The RdbPredicates self.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public func equalTo(field: String, value: RelationalStoreValueType): RdbPredicates

    /**
     * Configure the RdbPredicates to match the field whose data type is RelationalStoreValueType and value is not
     * equal to a specified value.
     * This method is similar to != of the SQL statement.
     *
     * @param { String } field - Indicates the column name in the database table.
     * @param { RelationalStoreValueType } value - Indicates the value to match with the RdbPredicates.
     * @returns { RdbPredicates } The RdbPredicates self.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public func notEqualTo(field: String, value: RelationalStoreValueType): RdbPredicates

    /**
     * Adds a left parenthesis to the RdbPredicates.
     * This method is similar to ( of the SQL statement and needs to be used together with endWrap().
     *
     * @returns { RdbPredicates } The RdbPredicates with the left parenthesis.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public func beginWrap(): RdbPredicates

    /**
     * Adds a right parenthesis to the RdbPredicates.
     * This method is similar to ) of the SQL statement and needs to be used together with beginWrap().
     *
     * @returns { RdbPredicates } The RdbPredicates with the right parenthesis.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public func endWrap(): RdbPredicates

    /**
     * Adds an or condition to the RdbPredicates.
     * This method is similar to or of the SQL statement.
     *
     * @returns { RdbPredicates } The RdbPredicates with the or condition.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public func or(): RdbPredicates

    /**
     * Adds an and condition to the RdbPredicates.
     * This method is similar to and of the SQL statement.
     *
     * @returns { RdbPredicates } The RdbPredicates with the and condition.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public func and(): RdbPredicates

    /**
     * Configure the RdbPredicates to match the field whose data type is string and value
     * contains a specified value.
     * This method is similar to contains of the SQL statement.
     *
     * @param { String } field - Indicates the column name in the database table.
     * @param { String } value - Indicates the value to match with the RdbPredicates.
     * @returns { RdbPredicates } The RdbPredicates self.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public func contains(field: String, value: String): RdbPredicates

    /**
     * Configure the RdbPredicates to match the field whose data type is string and value starts
     * with a specified string.
     * This method is similar to value% of the SQL statement.
     *
     * @param { String } field - Indicates the column name in the database table.
     * @param { String } value - Indicates the value to match with the RdbPredicates.
     * @returns { RdbPredicates } The RdbPredicates self.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public func beginsWith(field: String, value: String): RdbPredicates

    /**
     * Configure the RdbPredicates to match the field whose data type is string and value
     * ends with a specified string.
     * This method is similar to %value of the SQL statement.
     *
     * @param { String } field - Indicates the column name in the database table.
     * @param { String } value - Indicates the value to match with the RdbPredicates.
     * @returns { RdbPredicates } The RdbPredicates self.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public func endsWith(field: String, value: String): RdbPredicates

    /**
     * Configure the RdbPredicates to match the fields whose value is null.
     * This method is similar to is null of the SQL statement.
     *
     * @param { String } field - Indicates the column name in the database table.
     * @returns { RdbPredicates } The RdbPredicates self.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public func isNull(field: String): RdbPredicates

    /**
     * Configure the RdbPredicates to match the specified fields whose value is not null.
     * This method is similar to is not null of the SQL statement.
     *
     * @param { String } field - Indicates the column name in the database table.
     * @returns { RdbPredicates } The RdbPredicates self.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public func isNotNull(field: String): RdbPredicates

    /**
     * Configure the RdbPredicates to match the fields whose data type is string and value is
     * similar to a specified string.
     * This method is similar to like of the SQL statement.
     *
     *
     * @param { String } field - Indicates the column name in the database table.
     * @param { String } value - Indicates the value to match with the RdbPredicates.
     * @returns { RdbPredicates } The RdbPredicates that match the specified field.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public func like(field: String, value: String): RdbPredicates

    /**
     * Configure RdbPredicates to match the specified field whose data type is string and the value contains
     * a wildcard.
     * Different from like, the input parameters of this method are case-sensitive.
     *
     * @param { String } field - Indicates the column name in the database table.
     * @param { String } value - Indicates the value to match with the RdbPredicates.
     * @returns { RdbPredicates } The SQL statement with the specified RdbPredicates.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public func glob(field: String, value: String): RdbPredicates

    /**
     * Configure RdbPredicates to match the specified field whose value is within a given range.
     *
     * @param { String } field - Indicates the column name.
     * @param { RelationalStoreValueType } low - Indicates the minimum value.
     * @param { RelationalStoreValueType } high - Indicates the maximum value.
     * @returns { RdbPredicates } The SQL statement with the specified RdbPredicates.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public func between(field: String, low: RelationalStoreValueType, high: RelationalStoreValueType): RdbPredicates

    /**
     * Configure RdbPredicates to match the specified field whose value is out of a given range.
     *
     * @param { String } field - Indicates the column name in the database table.
     * @param { RelationalStoreValueType } low - Indicates the minimum value.
     * @param { RelationalStoreValueType } high - Indicates the maximum value.
     * @returns { RdbPredicates } The SQL statement with the specified RdbPredicates.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public func notBetween(field: String, low: RelationalStoreValueType, high: RelationalStoreValueType): RdbPredicates

    /**
     * Restricts the value of the field to be greater than the specified value.
     *
     * @param { String } field - Indicates the column name in the database table.
     * @param { RelationalStoreValueType } value - Indicates the value to match with the RdbPredicates.
     * @returns { RdbPredicates } The SQL query statement with the specified RdbPredicates.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public func greaterThan(field: String, value: RelationalStoreValueType): RdbPredicates

    /**
     * Restricts the value of the field to be smaller than the specified value.
     *
     * @param { String } field - Indicates the column name in the database table.
     * @param { RelationalStoreValueType } value - Indicates the value to match with the RdbPredicates.
     * @returns { RdbPredicates } The SQL query statement with the specified RdbPredicates.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public func lessThan(field: String, value: RelationalStoreValueType): RdbPredicates

    /**
     * Restricts the value of the field to be greater than or equal to the specified value.
     *
     * @param { String } field - Indicates the column name in the database table.
     * @param { RelationalStoreValueType } value - Indicates the value to match with the RdbPredicates.
     * @returns { RdbPredicates } The SQL query statement with the specified RdbPredicates.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public func greaterThanOrEqualTo(field: String, value: RelationalStoreValueType): RdbPredicates

    /**
     * Restricts the value of the field to be smaller than or equal to the specified value.
     *
     * @param { String } field - Indicates the column name in the database table.
     * @param { RelationalStoreValueType } value - Indicates the value to match with the RdbPredicates.
     * @returns { RdbPredicates } The SQL query statement with the specified RdbPredicates.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public func lessThanOrEqualTo(field: String, value: RelationalStoreValueType): RdbPredicates

    /**
     * Restricts the ascending order of the return list. When there are several orders,
     * the one close to the head has the highest priority.
     *
     * @param { String } field - Indicates the column name for sorting the return list.
     * @returns { RdbPredicates } The SQL query statement with the specified RdbPredicates.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public func orderByAsc(field: String): RdbPredicates

    /**
     * Restricts the descending order of the return list. When there are several orders,
     * the one close to the head has the highest priority.
     *
     * @param { String } field - Indicates the column name for sorting the return list.
     * @returns { RdbPredicates } The SQL query statement with the specified RdbPredicates.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public func orderByDesc(field: String): RdbPredicates

    /**
     * Restricts each row of the query result to be unique.
     *
     * @returns { RdbPredicates } The SQL query statement with the specified RdbPredicates.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public func distinct(): RdbPredicates

    /**
     * Restricts the max number of return records.
     *
     * @param { Int32 } value - Indicates the max length of the return list.
     * @returns { RdbPredicates } The SQL query statement with the specified RdbPredicates.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public func limitAs(value: Int32): RdbPredicates

    /**
     * Configure RdbPredicates to specify the start position of the returned result.
     * Use this method together with limit(Int32).
     *
     * @param { Int32 } rowOffset - Indicates the start position of the returned result.
     * The value is a positive integer.
     * @returns { RdbPredicates } The SQL query statement with the specified RdbPredicates.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public func offsetAs(rowOffset: Int32): RdbPredicates

    /**
     * Configure RdbPredicates to group query results by specified columns.
     *
     * @param { Array<String> } fields - Indicates the specified columns by which query results are grouped.
     * @returns { RdbPredicates } The SQL query statement with the specified RdbPredicates.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public func groupBy(fields: Array<String>): RdbPredicates

    /**
     * Configure RdbPredicates to match the specified field whose data type is RelationalStoreValueType array and values
     * are within a given range.
     *
     * @param { String } field - Indicates the column name in the database table.
     * @param { Array<RelationalStoreValueType> } value - Indicates the values to match with RdbPredicates.
     * @returns { RdbPredicates } The SQL statement with the specified RdbPredicates.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public func inValues(field: String, value: Array<RelationalStoreValueType>): RdbPredicates

    /**
     * Configure RdbPredicates to match the specified field whose data type is RelationalStoreValueType array and values
     * are out of a given range.
     *
     * @param { String } field - Indicates the column name in the database table.
     * @param { Array<RelationalStoreValueType> } value - Indicates the values to match with RdbPredicates.
     * @returns { RdbPredicates } The SQL statement with the specified RdbPredicates.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public func notInValues(field: String, value: Array<RelationalStoreValueType>): RdbPredicates
}

/**
 * Provides methods for managing the relational database (RDB).
 * This class provides methods for creating, querying, updating, and deleting RDBs.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
]
public class RdbStore {
    /**
     * Inserts a row of data into the target table.
     *
     * @param { String } table - Indicates the row of data to be inserted into the table.
     * @param { ValuesBucket } values - Indicates the row of data ValuesBucket to be inserted into the table.
     * @param { ConflictResolution } conflict - Indicates the ConflictResolution to insert data into the table.
     * @returns { Int64 } Return the row ID if the operation is successful. return -1 otherwise.
     * @throws { BusinessException  } 14800000 - Inner error.
     * @throws { BusinessException  } 14800011 - Failed to open the database because it is corrupted.
     * @throws { BusinessException  } 14800014 - The RdbStore or ResultSet is already closed.
     * @throws { BusinessException  } 14800015 - The database does not respond.
     * @throws { BusinessException  } 14800021 - SQLite: Generic error.
     * Possible causes: Insert failed or the updated data does not exist.
     * @throws { BusinessException  } 14800022 - SQLite: Callback routine requested an abort.
     * @throws { BusinessException  } 14800023 - SQLite: Access permission denied.
     * @throws { BusinessException  } 14800024 - SQLite: The database file is locked.
     * @throws { BusinessException  } 14800025 - SQLite: A table in the database is locked.
     * @throws { BusinessException  } 14800026 - SQLite: The database is out of memory.
     * @throws { BusinessException  } 14800027 - SQLite: Attempt to write a readonly database.
     * @throws { BusinessException  } 14800028 - SQLite: Some kind of disk I/O error occurred.
     * @throws { BusinessException  } 14800029 - SQLite: The database is full.
     * @throws { BusinessException  } 14800030 - SQLite: Unable to open the database file.
     * @throws { BusinessException  } 14800031 - SQLite: TEXT or BLOB exceeds size limit.
     * @throws { BusinessException  } 14800032 - SQLite: Abort due to constraint violation.
     * @throws { BusinessException  } 14800033 - SQLite: Data type mismatch.
     * @throws { BusinessException  } 14800034 - SQLite: Library used incorrectly.
     * @throws { BusinessException  } 14800047 - The WAL file size exceeds the default limit.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core",
        throwexception: true,
        workerthread: true
    ]
    public func insert(table: String, values: ValuesBucket,
        conflict!: ConflictResolution = ConflictResolution.OnConflictNone): Int64

    /**
     * Inserts a batch of data into the target table.
     *
     * @param { String } table - Indicates the target table.
     * @param { Array<ValuesBucket> } values - Indicates the rows of data ValuesBucket to be inserted into the table.
     * @returns { Int64 } Return the number of values that were inserted if the operation is successful. returns -1 otherwise.
     * @throws { BusinessException  } 14800000 - Inner error.
     * @throws { BusinessException  } 14800011 - Failed to open the database because it is corrupted.
     * @throws { BusinessException  } 14800014 - The RdbStore or ResultSet is already closed.
     * @throws { BusinessException  } 14800015 - The database does not respond.
     * @throws { BusinessException  } 14800021 - SQLite: Generic error.
     * Possible causes: Insert failed or the updated data does not exist.
     * @throws { BusinessException  } 14800022 - SQLite: Callback routine requested an abort.
     * @throws { BusinessException  } 14800023 - SQLite: Access permission denied.
     * @throws { BusinessException  } 14800024 - SQLite: The database file is locked.
     * @throws { BusinessException  } 14800025 - SQLite: A table in the database is locked.
     * @throws { BusinessException  } 14800026 - SQLite: The database is out of memory.
     * @throws { BusinessException  } 14800027 - SQLite: Attempt to write a readonly database.
     * @throws { BusinessException  } 14800028 - SQLite: Some kind of disk I/O error occurred.
     * @throws { BusinessException  } 14800029 - SQLite: The database is full.
     * @throws { BusinessException  } 14800030 - SQLite: Unable to open the database file.
     * @throws { BusinessException  } 14800031 - SQLite: TEXT or BLOB exceeds size limit.
     * @throws { BusinessException  } 14800032 - SQLite: Abort due to constraint violation.
     * @throws { BusinessException  } 14800033 - SQLite: Data type mismatch.
     * @throws { BusinessException  } 14800034 - SQLite: Library used incorrectly.
     * @throws { BusinessException  } 14800047 - The WAL file size exceeds the default limit.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core",
        throwexception: true,
        workerthread: true
    ]
    public func batchInsert(table: String, values: Array<ValuesBucket>): Int64

    /**
     * Updates data in the database based on a specified instance object of RdbPredicates.
     *
     * @param { ValuesBucket } values - Indicates the row of data to be updated in the database.
     * The key-value pairs are associated with column names of the database table.
     * @param { RdbPredicates } predicates - Indicates the specified update condition by the instance object of RdbPredicates.
     * @param { ConflictResolution } conflict - Indicates the ConflictResolution to update data into the table.
     * @returns { Int64 } Return the number of affected rows.
     * @throws { BusinessException  } 14800000 - Inner error.
     * @throws { BusinessException  } 14800011 - Failed to open the database because it is corrupted.
     * @throws { BusinessException  } 14800014 - The RdbStore or ResultSet is already closed.
     * @throws { BusinessException  } 14800015 - The database does not respond.
     * @throws { BusinessException  } 14800021 - SQLite: Generic error.
     * Possible causes: Insert failed or the updated data does not exist.
     * @throws { BusinessException  } 14800022 - SQLite: Callback routine requested an abort.
     * @throws { BusinessException  } 14800023 - SQLite: Access permission denied.
     * @throws { BusinessException  } 14800024 - SQLite: The database file is locked.
     * @throws { BusinessException  } 14800025 - SQLite: A table in the database is locked.
     * @throws { BusinessException  } 14800026 - SQLite: The database is out of memory.
     * @throws { BusinessException  } 14800027 - SQLite: Attempt to write a readonly database.
     * @throws { BusinessException  } 14800028 - SQLite: Some kind of disk I/O error occurred.
     * @throws { BusinessException  } 14800029 - SQLite: The database is full.
     * @throws { BusinessException  } 14800030 - SQLite: Unable to open the database file.
     * @throws { BusinessException  } 14800031 - SQLite: TEXT or BLOB exceeds size limit.
     * @throws { BusinessException  } 14800032 - SQLite: Abort due to constraint violation.
     * @throws { BusinessException  } 14800033 - SQLite: Data type mismatch.
     * @throws { BusinessException  } 14800034 - SQLite: Library used incorrectly.
     * @throws { BusinessException  } 14800047 - The WAL file size exceeds the default limit.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core",
        throwexception: true,
        workerthread: true
    ]
    public func update(values: ValuesBucket, predicates: RdbPredicates,
        conflict!: ConflictResolution = ConflictResolution.OnConflictNone): Int64

    /**
     * Deletes data from the database based on a specified instance object of RdbPredicates.
     *
     * @param { RdbPredicates } predicates - The specified delete condition by the instance object of RdbPredicates.
     * @returns { Int64 } Return the number of affected rows.
     * @throws { BusinessException  } 14800000 - Inner error.
     * @throws { BusinessException  } 14800011 - Failed to open the database because it is corrupted.
     * @throws { BusinessException  } 14800014 - The RdbStore or ResultSet is already closed.
     * @throws { BusinessException  } 14800015 - The database does not respond.
     * @throws { BusinessException  } 14800021 - SQLite: Generic error.
     * Possible causes: Insert failed or the updated data does not exist.
     * @throws { BusinessException  } 14800022 - SQLite: Callback routine requested an abort.
     * @throws { BusinessException  } 14800023 - SQLite: Access permission denied.
     * @throws { BusinessException  } 14800024 - SQLite: The database file is locked.
     * @throws { BusinessException  } 14800025 - SQLite: A table in the database is locked.
     * @throws { BusinessException  } 14800026 - SQLite: The database is out of memory.
     * @throws { BusinessException  } 14800027 - SQLite: Attempt to write a readonly database.
     * @throws { BusinessException  } 14800028 - SQLite: Some kind of disk I/O error occurred.
     * @throws { BusinessException  } 14800029 - SQLite: The database is full.
     * @throws { BusinessException  } 14800030 - SQLite: Unable to open the database file.
     * @throws { BusinessException  } 14800031 - SQLite: TEXT or BLOB exceeds size limit.
     * @throws { BusinessException  } 14800032 - SQLite: Abort due to constraint violation.
     * @throws { BusinessException  } 14800033 - SQLite: Data type mismatch.
     * @throws { BusinessException  } 14800034 - SQLite: Library used incorrectly.
     * @throws { BusinessException  } 14800047 - The WAL file size exceeds the default limit.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core",
        throwexception: true,
        workerthread: true
    ]
    public func delete(predicates: RdbPredicates): Int64

    /**
     * Queries data in the database based on specified conditions.
     *
     * @param { RdbPredicates } predicates - The specified query condition by the instance object of RdbPredicates.
     * @param { Array<String> } [columns] - The columns to query. If the value is null, the query applies to all columns.
     * @returns { ResultSet } Return the ResultSet object if the operation is successful.
     * @throws { BusinessException  } 14800000 - Inner error.
     * @throws { BusinessException  } 14800014 - The RdbStore or ResultSet is already closed.
     * @throws { BusinessException  } 14800015 - The database does not respond.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core",
        throwexception: true,
        workerthread: true
    ]
    public func query(predicates: RdbPredicates, columns!: Array<String> = []): ResultSet

    /**
     * Queries data in the database based on SQL statement.
     *
     * @param { String } sql - Indicates the SQL statement to execute.
     * @param { Array<RelationalStoreValueType> } [bindArgs] - Indicates the ValueType values of the parameters in the SQL statement. The values are strings.
     * @returns { ResultSet } Return the ResultSet object if the operation is successful.
     * @throws { BusinessException  } 14800000 - Inner error.
     * @throws { BusinessException  } 14800014 - The RdbStore or ResultSet is already closed.
     * @throws { BusinessException  } 14800015 - The database does not respond.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core",
        throwexception: true,
        workerthread: true
    ]
    public func querySql(sql: String, bindArgs!: Array<RelationalStoreValueType> = []): ResultSet

    /**
     * Executes a SQL statement that contains specified parameters but returns no value.
     *
     * @param { String } sql - Indicates the SQL statement to execute.
     * @param { Array<RelationalStoreValueType> } [bindArgs] - Indicates the ValueType values of the parameters in the SQL statement. The values are strings.
     * @throws { BusinessException  } 801 - Capability not supported the sql(attach,begin,commit,rollback etc.).
     * @throws { BusinessException  } 14800000 - Inner error.
     * @throws { BusinessException  } 14800011 - Failed to open the database because it is corrupted.
     * @throws { BusinessException  } 14800014 - The RdbStore or ResultSet is already closed.
     * @throws { BusinessException  } 14800015 - The database does not respond.
     * @throws { BusinessException  } 14800021 - SQLite: Generic error.
     * Possible causes: Insert failed or the updated data does not exist.
     * @throws { BusinessException  } 14800022 - SQLite: Callback routine requested an abort.
     * @throws { BusinessException  } 14800023 - SQLite: Access permission denied.
     * @throws { BusinessException  } 14800024 - SQLite: The database file is locked.
     * @throws { BusinessException  } 14800025 - SQLite: A table in the database is locked.
     * @throws { BusinessException  } 14800026 - SQLite: The database is out of memory.
     * @throws { BusinessException  } 14800027 - SQLite: Attempt to write a readonly database.
     * @throws { BusinessException  } 14800028 - SQLite: Some kind of disk I/O error occurred.
     * @throws { BusinessException  } 14800029 - SQLite: The database is full.
     * @throws { BusinessException  } 14800030 - SQLite: Unable to open the database file.
     * @throws { BusinessException  } 14800031 - SQLite: TEXT or BLOB exceeds size limit.
     * @throws { BusinessException  } 14800032 - SQLite: Abort due to constraint violation.
     * @throws { BusinessException  } 14800033 - SQLite: Data type mismatch.
     * @throws { BusinessException  } 14800034 - SQLite: Library used incorrectly.
     * @throws { BusinessException  } 14800047 - The WAL file size exceeds the default limit.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core",
        throwexception: true,
        workerthread: true
    ]
    public func executeSql(sql: String, bindArgs!: Array<RelationalStoreValueType> = []): Unit

    /**
     * BeginTransaction before execute your sql.
     *
     * @throws { BusinessException  } 14800000 - Inner error.
     * @throws { BusinessException  } 14800011 - Failed to open the database because it is corrupted.
     * @throws { BusinessException  } 14800014 - The RdbStore or ResultSet is already closed.
     * @throws { BusinessException  } 14800015 - The database does not respond.
     * @throws { BusinessException  } 14800021 - SQLite: Generic error.
     * Possible causes: Insert failed or the updated data does not exist.
     * @throws { BusinessException  } 14800022 - SQLite: Callback routine requested an abort.
     * @throws { BusinessException  } 14800023 - SQLite: Access permission denied.
     * @throws { BusinessException  } 14800024 - SQLite: The database file is locked.
     * @throws { BusinessException  } 14800025 - SQLite: A table in the database is locked.
     * @throws { BusinessException  } 14800026 - SQLite: The database is out of memory.
     * @throws { BusinessException  } 14800027 - SQLite: Attempt to write a readonly database.
     * @throws { BusinessException  } 14800028 - SQLite: Some kind of disk I/O error occurred.
     * @throws { BusinessException  } 14800029 - SQLite: The database is full.
     * @throws { BusinessException  } 14800030 - SQLite: Unable to open the database file.
     * @throws { BusinessException  } 14800031 - SQLite: TEXT or BLOB exceeds size limit.
     * @throws { BusinessException  } 14800032 - SQLite: Abort due to constraint violation.
     * @throws { BusinessException  } 14800033 - SQLite: Data type mismatch.
     * @throws { BusinessException  } 14800034 - SQLite: Library used incorrectly.
     * @throws { BusinessException  } 14800047 - The WAL file size exceeds the default limit.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core",
        throwexception: true
    ]
    public func beginTransaction(): Unit

    /**
     * Commit the the sql you have executed.
     *
     * @throws { BusinessException  } 14800000 - Inner error.
     * @throws { BusinessException  } 14800011 - Failed to open the database because it is corrupted.
     * @throws { BusinessException  } 14800014 - The RdbStore or ResultSet is already closed.
     * @throws { BusinessException  } 14800015 - The database does not respond.
     * @throws { BusinessException  } 14800021 - SQLite: Generic error.
     * Possible causes: Insert failed or the updated data does not exist.
     * @throws { BusinessException  } 14800022 - SQLite: Callback routine requested an abort.
     * @throws { BusinessException  } 14800023 - SQLite: Access permission denied.
     * @throws { BusinessException  } 14800024 - SQLite: The database file is locked.
     * @throws { BusinessException  } 14800025 - SQLite: A table in the database is locked.
     * @throws { BusinessException  } 14800026 - SQLite: The database is out of memory.
     * @throws { BusinessException  } 14800027 - SQLite: Attempt to write a readonly database.
     * @throws { BusinessException  } 14800028 - SQLite: Some kind of disk I/O error occurred.
     * @throws { BusinessException  } 14800029 - SQLite: The database is full.
     * @throws { BusinessException  } 14800030 - SQLite: Unable to open the database file.
     * @throws { BusinessException  } 14800031 - SQLite: TEXT or BLOB exceeds size limit.
     * @throws { BusinessException  } 14800032 - SQLite: Abort due to constraint violation.
     * @throws { BusinessException  } 14800033 - SQLite: Data type mismatch.
     * @throws { BusinessException  } 14800034 - SQLite: Library used incorrectly.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core",
        throwexception: true
    ]
    public func commit(): Unit

    /**
     * Roll back the sql you have already executed.
     *
     * @throws { BusinessException  } 14800000 - Inner error.
     * @throws { BusinessException  } 14800011 - Failed to open the database because it is corrupted.
     * @throws { BusinessException  } 14800014 - The RdbStore or ResultSet is already closed.
     * @throws { BusinessException  } 14800015 - The database does not respond.
     * @throws { BusinessException  } 14800021 - SQLite: Generic error.
     * Possible causes: Insert failed or the updated data does not exist.
     * @throws { BusinessException  } 14800022 - SQLite: Callback routine requested an abort.
     * @throws { BusinessException  } 14800023 - SQLite: Access permission denied.
     * @throws { BusinessException  } 14800024 - SQLite: The database file is locked.
     * @throws { BusinessException  } 14800025 - SQLite: A table in the database is locked.
     * @throws { BusinessException  } 14800026 - SQLite: The database is out of memory.
     * @throws { BusinessException  } 14800027 - SQLite: Attempt to write a readonly database.
     * @throws { BusinessException  } 14800028 - SQLite: Some kind of disk I/O error occurred.
     * @throws { BusinessException  } 14800029 - SQLite: The database is full.
     * @throws { BusinessException  } 14800030 - SQLite: Unable to open the database file.
     * @throws { BusinessException  } 14800031 - SQLite: TEXT or BLOB exceeds size limit.
     * @throws { BusinessException  } 14800032 - SQLite: Abort due to constraint violation.
     * @throws { BusinessException  } 14800033 - SQLite: Data type mismatch.
     * @throws { BusinessException  } 14800034 - SQLite: Library used incorrectly.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core",
        throwexception: true
    ]
    public func rollBack(): Unit

    /**
     * Backs up a database in a specified name.
     *
     * @param { String } destName - Indicates the name that saves the database backup.
     * @throws { BusinessException  } 14800000 - Inner error.
     * @throws { BusinessException  } 14800011 - Failed to open the database because it is corrupted.
     * @throws { BusinessException  } 14800014 - The RdbStore or ResultSet is already closed.
     * @throws { BusinessException  } 14800015 - The database does not respond.
     * @throws { BusinessException  } 14800021 - SQLite: Generic error.
     * Possible causes: Insert failed or the updated data does not exist.
     * @throws { BusinessException  } 14800022 - SQLite: Callback routine requested an abort.
     * @throws { BusinessException  } 14800023 - SQLite: Access permission denied.
     * @throws { BusinessException  } 14800024 - SQLite: The database file is locked.
     * @throws { BusinessException  } 14800025 - SQLite: A table in the database is locked.
     * @throws { BusinessException  } 14800026 - SQLite: The database is out of memory.
     * @throws { BusinessException  } 14800027 - SQLite: Attempt to write a readonly database.
     * @throws { BusinessException  } 14800028 - SQLite: Some kind of disk I/O error occurred.
     * @throws { BusinessException  } 14800029 - SQLite: The database is full.
     * @throws { BusinessException  } 14800030 - SQLite: Unable to open the database file.
     * @throws { BusinessException  } 14800031 - SQLite: TEXT or BLOB exceeds size limit.
     * @throws { BusinessException  } 14800032 - SQLite: Abort due to constraint violation.
     * @throws { BusinessException  } 14800033 - SQLite: Data type mismatch.
     * @throws { BusinessException  } 14800034 - SQLite: Library used incorrectly.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core",
        throwexception: true,
        workerthread: true
    ]
    public func backup(destName: String): Unit

    /**
     * Restores a database from a specified database file.
     *
     * @param { String } srcName - Indicates the name that saves the database file.
     * @throws { BusinessException  } 14800000 - Inner error.
     * @throws { BusinessException  } 14800011 - Failed to open the database because it is corrupted.
     * @throws { BusinessException  } 14800014 - The RdbStore or ResultSet is already closed.
     * @throws { BusinessException  } 14800015 - The database does not respond.
     * @throws { BusinessException  } 14800021 - SQLite: Generic error.
     * Possible causes: Insert failed or the updated data does not exist.
     * @throws { BusinessException  } 14800022 - SQLite: Callback routine requested an abort.
     * @throws { BusinessException  } 14800023 - SQLite: Access permission denied.
     * @throws { BusinessException  } 14800024 - SQLite: The database file is locked.
     * @throws { BusinessException  } 14800025 - SQLite: A table in the database is locked.
     * @throws { BusinessException  } 14800026 - SQLite: The database is out of memory.
     * @throws { BusinessException  } 14800027 - SQLite: Attempt to write a readonly database.
     * @throws { BusinessException  } 14800028 - SQLite: Some kind of disk I/O error occurred.
     * @throws { BusinessException  } 14800029 - SQLite: The database is full.
     * @throws { BusinessException  } 14800030 - SQLite: Unable to open the database file.
     * @throws { BusinessException  } 14800031 - SQLite: TEXT or BLOB exceeds size limit.
     * @throws { BusinessException  } 14800032 - SQLite: Abort due to constraint violation.
     * @throws { BusinessException  } 14800033 - SQLite: Data type mismatch.
     * @throws { BusinessException  } 14800034 - SQLite: Library used incorrectly.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core",
        throwexception: true,
        workerthread: true
    ]
    public func restore(srcName: String): Unit

    /**
     * Registers an observer for the database.
     *
     * @param { String } event - Event type, which must match the event type in emit.
     * @param { Bool } interProcess - Indicates whether it is an interprocess subscription or an in-process subscription.
     * @param { Callback0Argument } observer - The observer of data change events in the database.
     * @throws { BusinessException  } 801 - Capability not supported.
     * @throws { BusinessException  } 14800000 - Inner error.
     * @throws { BusinessException  } 14800014 - The RdbStore or ResultSet is already closed.
     * @throws { BusinessException  } 14800050 - Failed to obtain the subscription service.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core",
        throwexception: true
    ]
    public func on(event: String, interProcess: Bool, observer: Callback0Argument): Unit

    /**
     * Remove specified observer of specified type from the database.
     *
     * @param { String } event - Indicates the subscription event.
     * @param { Bool } interProcess - Indicates whether it is an interprocess subscription or an in-process subscription.
     * @param { ?Callback0Argument } [observer] - The data change observer already registered.
     * @throws { BusinessException  } 801 - Capability not supported.
     * @throws { BusinessException  } 14800000 - Inner error.
     * @throws { BusinessException  } 14800014 - The RdbStore or ResultSet is already closed.
     * @throws { BusinessException  } 14800050 - Failed to obtain the subscription service.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core",
        throwexception: true
    ]
    public func off(event: String, interProcess: Bool, observer!: ?Callback0Argument = None): Unit

    /**
     * Notifies the registered observers of a change to the data resource specified by Uri.
     *
     * @param { String } event - Indicates the subscription event.
     * @throws { BusinessException  } 801 - Capability not supported.
     * @throws { BusinessException  } 14800000 - Inner error.
     * @throws { BusinessException  } 14800014 - The RdbStore or ResultSet is already closed.
     * @throws { BusinessException  } 14800050 - Failed to obtain the subscription service.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core",
        throwexception: true
    ]
    public func emit(event: String): Unit
}

/**
 * Obtains a RDB store.
 * You can set parameters of the RDB store as required. In general, this method is recommended
 * to obtain a rdb store.
 *
 * @param { UIAbilityContext } context - Indicates the context of an application or ability.
 * @param { StoreConfig } config - Indicates the StoreConfig configuration of the database related to this RDB store.
 * @returns { RdbStore } Return the RDB store instance.
 * @throws { BusinessException  } 14800000 - Inner error.
 * @throws { BusinessException  } 14800010 - Failed to open or delete the database by an invalid database path.
 * @throws { BusinessException  } 14800011 - Failed to open the database because it is corrupted.
 * @throws { BusinessException  } 14801001 - The operation is supported in the stage model only.
 * @throws { BusinessException  } 14801002 - Invalid data group ID.
 * @throws { BusinessException  } 14800017 - StoreConfig is changed.
 * @throws { BusinessException  } 14800020 - The secret key is corrupted or lost.
 * @throws { BusinessException  } 14800021 - SQLite: Generic error.
 * Possible causes: Insert failed or the updated data does not exist.
 * @throws { BusinessException  } 14800022 - SQLite: Callback routine requested an abort.
 * @throws { BusinessException  } 14800023 - SQLite: Access permission denied.
 * @throws { BusinessException  } 14800027 - SQLite: Attempt to write a readonly database.
 * @throws { BusinessException  } 14800028 - SQLite: Some kind of disk I/O error occurred.
 * @throws { BusinessException  } 14800029 - SQLite: The database is full.
 * @throws { BusinessException  } 14800030 - SQLite: Unable to open the database file.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core",
    throwexception: true,
    workerthread: true
]
public func getRdbStore(context: UIAbilityContext, config: StoreConfig): RdbStore

/**
 * Deletes the database with a specified store config.
 * When specify custom directory, this function should be called.
 *
 * @param { UIAbilityContext } context - Indicates the context of application or capability.
 * @param { String } name - Indicates the database name.
 * @throws { BusinessException  } 801 - Capability not supported.
 * @throws { BusinessException  } 14800000 - Inner error.
 * @throws { BusinessException  } 14800010 - Failed to open or delete the database by an invalid database path.
 * @throws { BusinessException  } 14801001 - The operation is supported in the stage model only.
 * @throws { BusinessException  } 14801002 - Invalid data group ID.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core",
    throwexception: true,
    workerthread: true
]
public func deleteRdbStore(context: UIAbilityContext, name: String): Unit

/**
 * Deletes the database with a specified store config.
 * When specify custom directory, this function should be called.
 *
 * @param { UIAbilityContext } context - Indicates the context of an application or ability.
 * @param { StoreConfig } config - Indicates the StoreConfig configuration of the database related to this RDB store.
 * @throws { BusinessException  } 801 - Capability not supported.
 * @throws { BusinessException  } 14800000 - Inner error.
 * @throws { BusinessException  } 14800010 - Failed to open or delete the database by an invalid database path.
 * @throws { BusinessException  } 14801001 - The operation is supported in the stage model only.
 * @throws { BusinessException  } 14801002 - Invalid data group ID.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core",
    throwexception: true,
    workerthread: true
]
public func deleteRdbStore(context: UIAbilityContext, config: StoreConfig): Unit

/**
 * Indicates several assets in one column
 */
public type Assets = Array<Asset>

/**
 * Values in buckets are stored in key-value pairs
 */
public type ValuesBucket = Map<String, RelationalStoreValueType>

/**
 * Specifies the cryptographic parameters used when opening an encrypted database.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
]
public class CryptoParam {
    /**
     * Specifies the key used when opening an encrypted database.
     * When finished passing the key to the database, its content should be set to all-zero.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public var encryptionKey: Array<UInt8>

    /**
     * Specifies the number of KDF iterations used when opening an encrypted database.
     * Default number is 10000.
     * When the number is set to 0, use default iteration number and encryption algorithm.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public var iterationCount: Int32

    /**
     * Specifies the encryption algorithm when opening an encrypted database.
     * Default encryption algorithm is Aes256Gcm.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public var encryptionAlgo: EncryptionAlgo

    /**
     * Specifies the HMAC algorithm when opening an encrypted database.
     * Default HMAC algorithm is SHA256.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public var hmacAlgo: HmacAlgo

    /**
     * Specifies the KDF algorithm when opening an encrypted database.
     * Default KDF SHA algorithm is the same as HMAC algorithm.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public var kdfAlgo: ?KdfAlgo

    /**
     * Specifies the page size used when opening an encrypted database.
     * Default crypto page size is 1024.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public var cryptoPageSize: UInt32

    /**
     * CryptoParam constructor.
     *
     * @param { Array<UInt8> } encryptionKey - Specifies the key used algorithm when opening an encrypted database.
     * When finished passing the key to the database, its content should be set to all-zero.
     * @param { Int32 } [iterationCount] - Specifies the number of KDF iterations used when opening an encrypted database.
     * Default number is 1000. When the number is set to 0, use default iteration number and encryption algorithm.
     * @param { EncryptionAlgo } encryptionAlgo - Specifies the encryption algorithm when opening an encrypted database.
     * Default encryption algorithm is EncryptionAlgo.Aes256Gcm.
     * @param { HmacAlgo } hmacAlgo - Specifies the HMAC algorithm when opening an encrypted database.
     * Default HMAC algorithm is HmacAlgo.HmacSha256.
     * @param { ?KdfAlgo } kdfAlgo - Specifies the KDF algorithm when opening an encrypted database.
     * Default KDF SHA algorithm is the same as the HMAC algorithm.
     * @param { UInt32 } cryptoPageSize - Specifies the page size used when opening an encrypted database.
     * Default crypto page size is 1024.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public init(encryptionKey: Array<UInt8>, iterationCount!: Int32 = 10000,
        encryptionAlgo!: EncryptionAlgo = EncryptionAlgo.Aes256Gcm, hmacAlgo!: HmacAlgo = HmacAlgo.Sha256,
        kdfAlgo!: ?KdfAlgo = None, cryptoPageSize!: UInt32 = 1024)
}

/**
 * Enumerates the supported KDF algorithm when opening a database.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
]
public enum KdfAlgo {
    /**
     * KdfSha1: PBKDF2_HMAC_SHA1 algorithm.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    KdfSha1
    | 
    /**
     * KdfSha256: PBKDF2_HMAC_SHA256 algorithm.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    KdfSha256
    | 
    /**
     * KdfSha512: PBKDF2_HMAC_SHA512 algorithm.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    KdfSha512
    | ...
}

/**
 * Enumerates the supported HMAC algorithm when opening a database.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
]
public enum HmacAlgo {
    /**
     * Sha1: HMAC_SHA1 algorithm.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    Sha1
    | 
    /**
     * Sha256: HMAC_SHA256 algorithm.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    Sha256
    | 
    /**
     * Sha512: HMAC_SHA512 algorithm.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    Sha512
    | ...
}

/**
 * Enumerates the supported encryption algorithm when opening a database.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
]
public enum EncryptionAlgo {
    /**
     * Database is encrypted using Aes256Gcm.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    Aes256Gcm
    | 
    /**
     * Database is encrypted using Aes256Cbc.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    Aes256Cbc
    | ...
}

/**
 * Enumerates the supported tokenizer when opening a database.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
]
public enum Tokenizer {
    /**
     *  not use tokenizer
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    NoneTokenizer
    | 
    /**
     * native icu tokenizer.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    IcuTokenizer
    | 
    /**
     * self-developed enhance tokenizer.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    CustomTokenizer
    | ...
}

/**
 * Describes the RdbStore security level.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
]
public enum RelationalStoreSecurityLevel {
    /**
     * S1: means the db is low level security
     * There are some low impact, when the data is leaked.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    S1
    | 
    /**
     * S2: means the db is middle level security
     * There are some major impact, when the data is leaked.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    S2
    | 
    /**
     * S3: means the db is high level security
     * There are some severity impact, when the data is leaked.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    S3
    | 
    /**
     * S4: means the db is critical level security
     * There are some critical impact, when the data is leaked.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    S4
    | ...
}

/**
 * Describes the change type.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
]
public enum ChangeType {
    /**
     * DataChange: Means the change type is data change.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    DataChange
    | 
    /**
     * AssetChange: Means the change type is asset change.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    AssetChange
    | ...
}

/**
 * Manages relational database configurations.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
]
public class StoreConfig {
    /**
     * The database name.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public var name: String

    /**
     * Specifies the security level of the database.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public var securityLevel: RelationalStoreSecurityLevel

    /**
     * Specifies whether the database is encrypted.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public var encrypt: Bool

    /**
     * The data group id of application.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public var dataGroupId: String

    /**
     * Specifies the directory relative to the database directory obtained from context.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public var customDir: String

    /**
     * Specifies the root directory relative to the database
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public var rootDir: String

    /**
     * Specifies whether to clean up dirty data that is synchronized to
     * the local but deleted in the cloud.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.CloudSync.Client"
    ]
    public var autoCleanDirtyData: Bool

    /**
     * Specifies whether database allows rebuild.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public var allowRebuild: Bool

    /**
     * Specifies whether the vector type is supported.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public var vector: Bool

    /**
     * Specifies whether the database opened is read-only.
     * If isReadOnly is true, other configuration items will become invalid.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public var isReadOnly: Bool

    /**
     * Indicates the names of the shared library containing fts etc.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public var pluginLibs: Array<String>

    /**
     * Specifies the cryptographic parameters used when opening an encrypted database.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public var cryptoParam: CryptoParam

    /**
     * Specifies the tokenizer type when using fts capability.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public var tokenizer: Tokenizer

    /**
     * Specifies whether the database need persistence.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public var persist: Bool

    /**
     * Specifies whether the database enable the capabilities for semantic indexing processing.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public var enableSemanticIndex: Bool

    /**
     * StoreConfig constructor.
     *
     * @param { RelationalStoreSecurityLevel } securityLevel - Specifies the security level of the database.
     * @param { String } [name] - The database name.
     * @param { Bool } [encrypt] - Specifies whether the database is encrypted.
     * @param { String } dataGroupId - The data group id of application.
     * @param { String } customDir - Specifies the directory relative to the database directory obtained from context.
     * @param { String } rootDir - Specifies the root directory relative to the database.
     * @param { Bool } autoCleanDirtyData - Specifies whether to clean up dirty data that is synchronized to
     * the local but deleted in the cloud.
     * @param { Bool } allowRebuild - Specifies whether database allows rebuild.
     * @param { Bool } isReadOnly - Specifies whether the database opened is read-only.
     * @param { Array<String> } pluginLibs - Indicates the names of the shared library containing fts etc.
     * @param { CryptoParam } cryptoParam - Specifies the cryptographic parameters used when opening an encrypted database.
     * @param { Bool } vector - Specifies whether the vector type is supported.
     * @param { Tokenizer } tokenizer - Specifies the tokenizer type when using fts capability.
     * @param { Bool } persist - Specifies whether the database need persistence.
     * @param { Bool } enableSemanticIndex - Specifies whether the database enable the capabilities for semantic indexing processing.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public init(securityLevel: RelationalStoreSecurityLevel, name!: String = "", encrypt!: Bool = false,
        dataGroupId!: String = "", customDir!: String = "", rootDir!: String = "", autoCleanDirtyData!: Bool = true,
        allowRebuild!: Bool = false, isReadOnly!: Bool = false, pluginLibs!: Array<String> = Array<String>(),
        cryptoParam!: CryptoParam = CryptoParam([]), vector!: Bool = false,
        tokenizer!: Tokenizer = Tokenizer.NoneTokenizer, persist!: Bool = true, enableSemanticIndex!: Bool = false)
}

/**
 * Describes the status of asset
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
]
public enum AssetStatus {
    /**
     * AssetNormal: means the status of asset is normal.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    AssetNormal
    | 
    /**
     * AssetInsert: means the asset needs to be inserted.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    AssetInsert
    | 
    /**
     * AssetUpdate: means the asset needs to be updated.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    AssetUpdate
    | 
    /**
     * AssetDelete: means the asset needs to be deleted.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    AssetDelete
    | 
    /**
     * AssetAbnormal: means the status of asset is abnormal.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    AssetAbnormal
    | 
    /**
     * AssetDownloading: means the status of asset is downloading.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    AssetDownloading
    | ...
}

/**
 * Enumerates the field.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.DistributedDataManager.CloudSync.Client"
]
public enum Field {
    /**
     * Cursor field.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.CloudSync.Client"
    ]
    CursorField
    | 
    /**
     * Origin field. For details, see Origin.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.CloudSync.Client"
    ]
    OriginField
    | 
    /**
     * Deleted flag field.
     * Indicates whether data has deleted in cloud.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.CloudSync.Client"
    ]
    DeletedFlagField
    | 
    /**
     * Owner field.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.CloudSync.Client"
    ]
    OwnerField
    | 
    /**
     * Privilege field.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.CloudSync.Client"
    ]
    PrivilegeField
    | 
    /**
     * Sharing resource field.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.CloudSync.Client"
    ]
    SharingResourceField
    | ...
}

/**
 * Describes the conflict resolutions to insert data into the table.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
]
public enum ConflictResolution {
    /**
     * Implements no action when conflict occurs.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    OnConflictNone
    | 
    /**
     * Implements rollback operation when conflict occurs.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    OnConflictRollback
    | 
    /**
     * Implements abort operation when conflict occurs.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    OnConflictAbort
    | 
    /**
     * Implements fail operation when conflict occurs.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    OnConflictFail
    | 
    /**
     * Implements ignore operation when conflict occurs.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    OnConflictIgnore
    | 
    /**
     * Implements replace operation operator when conflict occurs.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    OnConflictReplace
    | ...
}

/**
 * Records information of the asset.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
]
public class Asset {
    /**
     * The name of asset.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public var name: String

    /**
     * The uri of asset.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public var uri: String

    /**
     * The path of asset.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public var path: String

    /**
     * The create time of asset.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public var createTime: String

    /**
     * The modify time of asset.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public var modifyTime: String

    /**
     * The size of asset.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public var size: String

    /**
     * The status of asset.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public var status: AssetStatus

    /**
     * Asset constructor.
     *
     * @param { String } name - The name of asset.
     * @param { String } uri - The uri of asset.
     * @param { String } path - The path of asset.
     * @param { String } createTime - The create time of asset.
     * @param { String } modifyTime - The modify time of asset.
     * @param { String } size - The size of asset.
     * @param { AssetStatus } status - The status of asset.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public init(name: String, uri: String, path: String, createTime: String, modifyTime: String, size: String,
        status!: AssetStatus = AssetStatus.AssetNormal)
}

/**
 * Indicates possible value types.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
]
public enum RelationalStoreValueType {
    /**
     * Indicates null.
     * 
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    Null
    | 
    /**
     * Indicates Int64.
     * 
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ] 
    Integer(Int64)
    | 
    /**
     * Indicates Float64.
     * 
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ] 
    Double(Float64)
    | 
    /**
     * Indicates String.
     * 
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ] 
    StringValue(String)
    | 
    /**
     * Indicates Bool.
     * 
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ] 
    Boolean(Bool)
    | 
    /**
     * Indicates Array<UInt8>.
     * 
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ] 
    Uint8Array(Array<UInt8>)
    | 
    /**
     * Indicates Asset.
     * 
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ] 
    AssetEnum(Asset)
    | 
    /**
     * Indicates Array<Asset>.
     * 
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ] 
    AssetsEnum(Array<Asset>)
    | ...
}

/**
 * Describes the distribution type of the tables.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
]
public enum DistributedType {
    /**
     * Indicates the table is distributed among the devices.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    DistributedDevice
    | 
    /**
     * Indicates the table is distributed between the cloud and the devices.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.CloudSync.Client"
    ]
    DistributedCloud
    | ...
}

/**
 * Indicates the database synchronization mode.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
]
public enum SyncMode {
    /**
     * Indicates the data is pushed to remote device from local device.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    SyncModePush
    | 
    /**
     * Indicates the data is pulled from remote device to local device.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    SyncModePull
    | 
    /**
     * Indicates the data is pulled from remote device to local device.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.CloudSync.Client"
    ]
    SyncModeTimeFirst
    | 
    /**
     * Indicates force push the native data to the cloud.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.CloudSync.Client"
    ]
    SyncModeNativeFirst
    | 
    /**
     * Indicates the data is pulled from cloud to local device.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.CloudSync.Client"
    ]
    SyncModeCloudFirst
    | ...
}

/**
 * The cloud sync progress.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
]
public enum Progress {
    /**
     * SyncBegin: means the sync process begin.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    SyncBegin
    | 
    /**
     * SyncInProgress: means the sync process is in progress.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    SyncInProgress
    | 
    /**
     * SyncFinish: means the sync process is finished.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    SyncFinish
    | ...
}

/**
 * Describes the subscription type.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
]
public enum SubscribeType {
    /**
     * Subscription to remote data changes.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    SubscribeTypeRemote
    | 
    /**
     * Subscription to cloud data changes.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.CloudSync.Client"
    ]
    SubscribeTypeCloud
    | 
    /**
     * Subscription to cloud data changes details.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.CloudSync.Client"
    ]
    SubscribeTypeCloudDetails
    | ...
}

/**
 * Describes the data origin sources.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.DistributedDataManager.CloudSync.Client"
]
public enum Origin {
    /**
     * Indicates the data source is local.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.CloudSync.Client"
    ]
    Local
    | 
    /**
     * Indicates the data source is cloud.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.CloudSync.Client"
    ]
    Cloud
    | 
    /**
     * Indicates the data source is remote.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.CloudSync.Client"
    ]
    Remote
    | ...
}

/**
 * Provides methods for accessing a database result set generated by querying the database.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
]
public class ResultSet {
    /**
     * Obtains the names of all columns in a result set.
     * The column names are returned as a string array, in which the strings are in the same order
     * as the columns in the result set.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public prop columnNames: Array<String>

    /**
     * Obtains the number of columns in the result set.
     * The returned number is equal to the length of the string array returned by the
     * columnNames method.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public prop columnCount: Int32

    /**
     * Obtains the number of rows in the result set.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public prop rowCount: Int32

    /**
     * Obtains the current index of the result set.
     * The result set index starts from 0.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public prop rowIndex: Int32

    /**
     * Checks whether the cursor is positioned at the first row.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public prop isAtFirstRow: Bool

    /**
     * Checks whether the cursor is positioned at the last row.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public prop isAtLastRow: Bool

    /**
     * Checks whether the cursor is positioned after the last row.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public prop isEnded: Bool

    /**
     * Checks whether the cursor is positioned before the first row.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public prop isStarted: Bool

    /**
     * Checks whether the current result set is closed.
     * If the result set is closed by calling the close method, true will be returned.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core"
    ]
    public prop isClosed: Bool

    /**
     * Obtains the column index based on the specified column name.
     * The column name is passed as an input parameter.
     *
     * @param { String } columnName - Indicates the name of the specified column in the result set.
     * @returns { Int32 } The index of the specified column.
     * @throws { BusinessException  } 14800000 - Inner error.
     * @throws { BusinessException  } 14800011 - Failed to open the database because it is corrupted.
     * @throws { BusinessException  } 14800013 - Resultset is empty or column index is out of bounds.
     * @throws { BusinessException  } 14800014 - The RdbStore or ResultSet is already closed.
     * @throws { BusinessException  } 14800019 - The SQL must be a query statement.
     * @throws { BusinessException  } 14800021 - SQLite: Generic error.
     * Possible causes: Insert failed or the updated data does not exist.
     * @throws { BusinessException  } 14800022 - SQLite: Callback routine requested an abort.
     * @throws { BusinessException  } 14800023 - SQLite: Access permission denied.
     * @throws { BusinessException  } 14800024 - SQLite: The database file is locked.
     * @throws { BusinessException  } 14800025 - SQLite: A table in the database is locked.
     * @throws { BusinessException  } 14800026 - SQLite: The database is out of memory.
     * @throws { BusinessException  } 14800027 - SQLite: Attempt to write a readonly database.
     * @throws { BusinessException  } 14800028 - SQLite: Some kind of disk I/O error occurred.
     * @throws { BusinessException  } 14800029 - SQLite: The database is full.
     * @throws { BusinessException  } 14800030 - SQLite: Unable to open the database file.
     * @throws { BusinessException  } 14800031 - SQLite: TEXT or BLOB exceeds size limit.
     * @throws { BusinessException  } 14800032 - SQLite: Abort due to constraint violation.
     * @throws { BusinessException  } 14800033 - SQLite: Data type mismatch.
     * @throws { BusinessException  } 14800034 - SQLite: Library used incorrectly.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core",
        throwexception: true
    ]
    public func getColumnIndex(columnName: String): Int32

    /**
     * Obtains the column name based on the specified column index.
     * The column index is passed as an input parameter.
     *
     * @param { Int32 } columnIndex - Indicates the index of the specified column in the result set.
     * @returns { String } The name of the specified column.
     * @throws { BusinessException  } 14800000 - Inner error.
     * @throws { BusinessException  } 14800011 - Failed to open the database because it is corrupted.
     * @throws { BusinessException  } 14800013 - Resultset is empty or column index is out of bounds.
     * @throws { BusinessException  } 14800014 - The RdbStore or ResultSet is already closed.
     * @throws { BusinessException  } 14800019 - The SQL must be a query statement.
     * @throws { BusinessException  } 14800021 - SQLite: Generic error.
     * Possible causes: Insert failed or the updated data does not exist.
     * @throws { BusinessException  } 14800022 - SQLite: Callback routine requested an abort.
     * @throws { BusinessException  } 14800023 - SQLite: Access permission denied.
     * @throws { BusinessException  } 14800024 - SQLite: The database file is locked.
     * @throws { BusinessException  } 14800025 - SQLite: A table in the database is locked.
     * @throws { BusinessException  } 14800026 - SQLite: The database is out of memory.
     * @throws { BusinessException  } 14800027 - SQLite: Attempt to write a readonly database.
     * @throws { BusinessException  } 14800028 - SQLite: Some kind of disk I/O error occurred.
     * @throws { BusinessException  } 14800029 - SQLite: The database is full.
     * @throws { BusinessException  } 14800030 - SQLite: Unable to open the database file.
     * @throws { BusinessException  } 14800031 - SQLite: TEXT or BLOB exceeds size limit.
     * @throws { BusinessException  } 14800032 - SQLite: Abort due to constraint violation.
     * @throws { BusinessException  } 14800033 - SQLite: Data type mismatch.
     * @throws { BusinessException  } 14800034 - SQLite: Library used incorrectly.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core",
        throwexception: true
    ]
    public func getColumnName(columnIndex: Int32): String

    /**
     * Go to the specified row of the result set forwards or backwards by an offset relative to its current position.
     * A positive offset indicates moving backwards, and a negative offset indicates moving forwards.
     *
     * @param { Int32 } offset - Indicates the offset relative to the current position.
     * @returns { Bool } True if the result set is moved successfully and does not go beyond the range;
     * Returns false otherwise.
     * @throws { BusinessException } 14800000 - Inner error.
     * @throws { BusinessException } 14800011 - Failed to open the database because it is corrupted.
     * @throws { BusinessException } 14800012 - ResultSet is empty or pointer index is out of bounds.
     * @throws { BusinessException } 14800014 - The RdbStore or ResultSet is already closed.
     * @throws { BusinessException } 14800019 - The SQL must be a query statement.
     * @throws { BusinessException } 14800021 - SQLite: Generic error.
     * Possible causes: Insert failed or the updated data does not exist.
     * @throws { BusinessException } 14800022 - SQLite: Callback routine requested an abort.
     * @throws { BusinessException } 14800023 - SQLite: Access permission denied.
     * @throws { BusinessException } 14800024 - SQLite: The database file is locked.
     * @throws { BusinessException } 14800025 - SQLite: A table in the database is locked.
     * @throws { BusinessException } 14800026 - SQLite: The database is out of memory.
     * @throws { BusinessException } 14800027 - SQLite: Attempt to write a readonly database.
     * @throws { BusinessException } 14800028 - SQLite: Some kind of disk I/O error occurred.
     * @throws { BusinessException } 14800029 - SQLite: The database is full.
     * @throws { BusinessException } 14800030 - SQLite: Unable to open the database file.
     * @throws { BusinessException } 14800031 - SQLite: TEXT or BLOB exceeds size limit.
     * @throws { BusinessException } 14800032 - SQLite: Abort due to constraint violation.
     * @throws { BusinessException } 14800033 - SQLite: Data type mismatch.
     * @throws { BusinessException } 14800034 - SQLite: Library used incorrectly.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core",
        throwexception: true
    ]
    public func goTo(offset: Int32): Bool

    /**
     * Go to the specified row of the result set.
     *
     * @param { Int32 } position - Indicates the index of the specified row, which starts from 0.
     * @returns { Bool } True if the result set is moved successfully; Returns false otherwise.
     * @throws { BusinessException } 14800000 - Inner error.
     * @throws { BusinessException } 14800011 - Failed to open the database because it is corrupted.
     * @throws { BusinessException } 14800012 - ResultSet is empty or pointer index is out of bounds.
     * @throws { BusinessException } 14800014 - The RdbStore or ResultSet is already closed.
     * @throws { BusinessException } 14800019 - The SQL must be a query statement.
     * @throws { BusinessException } 14800021 - SQLite: Generic error.
     * Possible causes: Insert failed or the updated data does not exist.
     * @throws { BusinessException } 14800022 - SQLite: Callback routine requested an abort.
     * @throws { BusinessException } 14800023 - SQLite: Access permission denied.
     * @throws { BusinessException } 14800024 - SQLite: The database file is locked.
     * @throws { BusinessException } 14800025 - SQLite: A table in the database is locked.
     * @throws { BusinessException } 14800026 - SQLite: The database is out of memory.
     * @throws { BusinessException } 14800027 - SQLite: Attempt to write a readonly database.
     * @throws { BusinessException } 14800028 - SQLite: Some kind of disk I/O error occurred.
     * @throws { BusinessException } 14800029 - SQLite: The database is full.
     * @throws { BusinessException } 14800030 - SQLite: Unable to open the database file.
     * @throws { BusinessException } 14800031 - SQLite: TEXT or BLOB exceeds size limit.
     * @throws { BusinessException } 14800032 - SQLite: Abort due to constraint violation.
     * @throws { BusinessException } 14800033 - SQLite: Data type mismatch.
     * @throws { BusinessException } 14800034 - SQLite: Library used incorrectly.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core",
        throwexception: true
    ]
    public func goToRow(position: Int32): Bool

    /**
     * Go to the first row of the result set.
     *
     * @returns { Bool } True if the result set is moved successfully;
     * Returns false otherwise, for example, if the result set is empty.
     * @throws { BusinessException } 14800000 - Inner error.
     * @throws { BusinessException } 14800011 - Failed to open the database because it is corrupted.
     * @throws { BusinessException } 14800012 - ResultSet is empty or pointer index is out of bounds.
     * @throws { BusinessException } 14800014 - The RdbStore or ResultSet is already closed.
     * @throws { BusinessException } 14800019 - The SQL must be a query statement.
     * @throws { BusinessException } 14800021 - SQLite: Generic error.
     * Possible causes: Insert failed or the updated data does not exist.
     * @throws { BusinessException } 14800022 - SQLite: Callback routine requested an abort.
     * @throws { BusinessException } 14800023 - SQLite: Access permission denied.
     * @throws { BusinessException } 14800024 - SQLite: The database file is locked.
     * @throws { BusinessException } 14800025 - SQLite: A table in the database is locked.
     * @throws { BusinessException } 14800026 - SQLite: The database is out of memory.
     * @throws { BusinessException } 14800027 - SQLite: Attempt to write a readonly database.
     * @throws { BusinessException } 14800028 - SQLite: Some kind of disk I/O error occurred.
     * @throws { BusinessException } 14800029 - SQLite: The database is full.
     * @throws { BusinessException } 14800030 - SQLite: Unable to open the database file.
     * @throws { BusinessException } 14800031 - SQLite: TEXT or BLOB exceeds size limit.
     * @throws { BusinessException } 14800032 - SQLite: Abort due to constraint violation.
     * @throws { BusinessException } 14800033 - SQLite: Data type mismatch.
     * @throws { BusinessException } 14800034 - SQLite: Library used incorrectly.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core",
        throwexception: true
    ]
    public func goToFirstRow(): Bool

    /**
     * Go to the last row of the result set.
     *
     * @returns { Bool } True if the result set is moved successfully;
     * Returns false otherwise, for example, if the result set is empty.
     * @throws { BusinessException } 14800000 - Inner error.
     * @throws { BusinessException } 14800011 - Failed to open the database because it is corrupted.
     * @throws { BusinessException } 14800012 - ResultSet is empty or pointer index is out of bounds.
     * @throws { BusinessException } 14800014 - The RdbStore or ResultSet is already closed.
     * @throws { BusinessException } 14800019 - The SQL must be a query statement.
     * @throws { BusinessException } 14800021 - SQLite: Generic error.
     * Possible causes: Insert failed or the updated data does not exist.
     * @throws { BusinessException } 14800022 - SQLite: Callback routine requested an abort.
     * @throws { BusinessException } 14800023 - SQLite: Access permission denied.
     * @throws { BusinessException } 14800024 - SQLite: The database file is locked.
     * @throws { BusinessException } 14800025 - SQLite: A table in the database is locked.
     * @throws { BusinessException } 14800026 - SQLite: The database is out of memory.
     * @throws { BusinessException } 14800027 - SQLite: Attempt to write a readonly database.
     * @throws { BusinessException } 14800028 - SQLite: Some kind of disk I/O error occurred.
     * @throws { BusinessException } 14800029 - SQLite: The database is full.
     * @throws { BusinessException } 14800030 - SQLite: Unable to open the database file.
     * @throws { BusinessException } 14800031 - SQLite: TEXT or BLOB exceeds size limit.
     * @throws { BusinessException } 14800032 - SQLite: Abort due to constraint violation.
     * @throws { BusinessException } 14800033 - SQLite: Data type mismatch.
     * @throws { BusinessException } 14800034 - SQLite: Library used incorrectly.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core",
        throwexception: true
    ]
    public func goToLastRow(): Bool

    /**
     * Go to the next row of the result set.
     *
     * @returns { Bool } True if the result set is moved successfully;
     * Returns false otherwise, for example, if the result set is already in the last row.
     * @throws { BusinessException } 14800000 - Inner error.
     * @throws { BusinessException } 14800011 - Failed to open the database because it is corrupted.
     * @throws { BusinessException } 14800012 - ResultSet is empty or pointer index is out of bounds.
     * @throws { BusinessException } 14800014 - The RdbStore or ResultSet is already closed.
     * @throws { BusinessException } 14800019 - The SQL must be a query statement.
     * @throws { BusinessException } 14800021 - SQLite: Generic error.
     * Possible causes: Insert failed or the updated data does not exist.
     * @throws { BusinessException } 14800022 - SQLite: Callback routine requested an abort.
     * @throws { BusinessException } 14800023 - SQLite: Access permission denied.
     * @throws { BusinessException } 14800024 - SQLite: The database file is locked.
     * @throws { BusinessException } 14800025 - SQLite: A table in the database is locked.
     * @throws { BusinessException } 14800026 - SQLite: The database is out of memory.
     * @throws { BusinessException } 14800027 - SQLite: Attempt to write a readonly database.
     * @throws { BusinessException } 14800028 - SQLite: Some kind of disk I/O error occurred.
     * @throws { BusinessException } 14800029 - SQLite: The database is full.
     * @throws { BusinessException } 14800030 - SQLite: Unable to open the database file.
     * @throws { BusinessException } 14800031 - SQLite: TEXT or BLOB exceeds size limit.
     * @throws { BusinessException } 14800032 - SQLite: Abort due to constraint violation.
     * @throws { BusinessException } 14800033 - SQLite: Data type mismatch.
     * @throws { BusinessException } 14800034 - SQLite: Library used incorrectly.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core",
        throwexception: true
    ]
    public func goToNextRow(): Bool

    /**
     * Go to the previous row of the result set.
     *
     * @returns { Bool } True if the result set is moved successfully;
     * Returns false otherwise, for example, if the result set is already in the first row.
     * @throws { BusinessException } 14800000 - Inner error.
     * @throws { BusinessException } 14800011 - Failed to open the database because it is corrupted.
     * @throws { BusinessException } 14800012 - ResultSet is empty or pointer index is out of bounds.
     * @throws { BusinessException } 14800014 - The RdbStore or ResultSet is already closed.
     * @throws { BusinessException } 14800019 - The SQL must be a query statement.
     * @throws { BusinessException } 14800021 - SQLite: Generic error.
     * Possible causes: Insert failed or the updated data does not exist.
     * @throws { BusinessException } 14800022 - SQLite: Callback routine requested an abort.
     * @throws { BusinessException } 14800023 - SQLite: Access permission denied.
     * @throws { BusinessException } 14800024 - SQLite: The database file is locked.
     * @throws { BusinessException } 14800025 - SQLite: A table in the database is locked.
     * @throws { BusinessException } 14800026 - SQLite: The database is out of memory.
     * @throws { BusinessException } 14800027 - SQLite: Attempt to write a readonly database.
     * @throws { BusinessException } 14800028 - SQLite: Some kind of disk I/O error occurred.
     * @throws { BusinessException } 14800029 - SQLite: The database is full.
     * @throws { BusinessException } 14800030 - SQLite: Unable to open the database file.
     * @throws { BusinessException } 14800031 - SQLite: TEXT or BLOB exceeds size limit.
     * @throws { BusinessException } 14800032 - SQLite: Abort due to constraint violation.
     * @throws { BusinessException } 14800033 - SQLite: Data type mismatch.
     * @throws { BusinessException } 14800034 - SQLite: Library used incorrectly.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core",
        throwexception: true
    ]
    public func goToPreviousRow(): Bool

    /**
     * Obtains the value of the specified column in the current row as a byte array.
     * The implementation class determines whether to throw an exception if the value of the specified column
     * in the current row is null or the specified column is not of the Blob type.
     *
     * @param { Int32 } columnIndex - Indicates the specified column index, which starts from 0.
     * @returns { Array<UInt8> } The value of the specified column as a byte array.
     * @throws { BusinessException  } 14800000 - Inner error.
     * @throws { BusinessException  } 14800011 - Failed to open the database because it is corrupted.
     * @throws { BusinessException  } 14800012 - ResultSet is empty or pointer index is out of bounds.
     * @throws { BusinessException  } 14800013 - Resultset is empty or column index is out of bounds.
     * @throws { BusinessException  } 14800014 - The RdbStore or ResultSet is already closed.
     * @throws { BusinessException  } 14800021 - SQLite: Generic error.
     * Possible causes: Insert failed or the updated data does not exist.
     * @throws { BusinessException  } 14800022 - SQLite: Callback routine requested an abort.
     * @throws { BusinessException  } 14800023 - SQLite: Access permission denied.
     * @throws { BusinessException  } 14800024 - SQLite: The database file is locked.
     * @throws { BusinessException  } 14800025 - SQLite: A table in the database is locked.
     * @throws { BusinessException  } 14800026 - SQLite: The database is out of memory.
     * @throws { BusinessException  } 14800027 - SQLite: Attempt to write a readonly database.
     * @throws { BusinessException  } 14800028 - SQLite: Some kind of disk I/O error occurred.
     * @throws { BusinessException  } 14800029 - SQLite: The database is full.
     * @throws { BusinessException  } 14800030 - SQLite: Unable to open the database file.
     * @throws { BusinessException  } 14800031 - SQLite: TEXT or BLOB exceeds size limit.
     * @throws { BusinessException  } 14800032 - SQLite: Abort due to constraint violation.
     * @throws { BusinessException  } 14800033 - SQLite: Data type mismatch.
     * @throws { BusinessException  } 14800034 - SQLite: Library used incorrectly.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core",
        throwexception: true
    ]
    public func getBlob(columnIndex: Int32): Array<UInt8>

    /**
     * Obtains the value of the specified column in the current row as string.
     * The implementation class determines whether to throw an exception if the value of the specified column
     * in the current row is null or the specified column is not of the string type.
     *
     * @param { Int32 } columnIndex - Indicates the specified column index, which starts from 0.
     * @returns { String } The value of the specified column as a string.
     * @throws { BusinessException  } 14800000 - Inner error.
     * @throws { BusinessException  } 14800011 - Failed to open the database because it is corrupted.
     * @throws { BusinessException  } 14800012 - ResultSet is empty or pointer index is out of bounds.
     * @throws { BusinessException  } 14800013 - Resultset is empty or column index is out of bounds.
     * @throws { BusinessException  } 14800014 - The RdbStore or ResultSet is already closed.
     * @throws { BusinessException  } 14800021 - SQLite: Generic error.
     * Possible causes: Insert failed or the updated data does not exist.
     * @throws { BusinessException  } 14800022 - SQLite: Callback routine requested an abort.
     * @throws { BusinessException  } 14800023 - SQLite: Access permission denied.
     * @throws { BusinessException  } 14800024 - SQLite: The database file is locked.
     * @throws { BusinessException  } 14800025 - SQLite: A table in the database is locked.
     * @throws { BusinessException  } 14800026 - SQLite: The database is out of memory.
     * @throws { BusinessException  } 14800027 - SQLite: Attempt to write a readonly database.
     * @throws { BusinessException  } 14800028 - SQLite: Some kind of disk I/O error occurred.
     * @throws { BusinessException  } 14800029 - SQLite: The database is full.
     * @throws { BusinessException  } 14800030 - SQLite: Unable to open the database file.
     * @throws { BusinessException  } 14800031 - SQLite: TEXT or BLOB exceeds size limit.
     * @throws { BusinessException  } 14800032 - SQLite: Abort due to constraint violation.
     * @throws { BusinessException  } 14800033 - SQLite: Data type mismatch.
     * @throws { BusinessException  } 14800034 - SQLite: Library used incorrectly.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core",
        throwexception: true
    ]
    public func getString(columnIndex: Int32): String

    /**
     * Obtains the value of the specified column in the current row as long.
     * The implementation class determines whether to throw an exception if the value of the specified column
     * in the current row is null, the specified column is not of the integer type.
     *
     * @param { Int32 } columnIndex - Indicates the specified column index, which starts from 0.
     * @returns { Int64 } The value of the specified column as a long.
     * @throws { BusinessException  } 14800000 - Inner error.
     * @throws { BusinessException  } 14800011 - Failed to open the database because it is corrupted.
     * @throws { BusinessException  } 14800012 - ResultSet is empty or pointer index is out of bounds.
     * @throws { BusinessException  } 14800013 - Resultset is empty or column index is out of bounds.
     * @throws { BusinessException  } 14800014 - The RdbStore or ResultSet is already closed.
     * @throws { BusinessException  } 14800021 - SQLite: Generic error.
     * Possible causes: Insert failed or the updated data does not exist.
     * @throws { BusinessException  } 14800022 - SQLite: Callback routine requested an abort.
     * @throws { BusinessException  } 14800023 - SQLite: Access permission denied.
     * @throws { BusinessException  } 14800024 - SQLite: The database file is locked.
     * @throws { BusinessException  } 14800025 - SQLite: A table in the database is locked.
     * @throws { BusinessException  } 14800026 - SQLite: The database is out of memory.
     * @throws { BusinessException  } 14800027 - SQLite: Attempt to write a readonly database.
     * @throws { BusinessException  } 14800028 - SQLite: Some kind of disk I/O error occurred.
     * @throws { BusinessException  } 14800029 - SQLite: The database is full.
     * @throws { BusinessException  } 14800030 - SQLite: Unable to open the database file.
     * @throws { BusinessException  } 14800031 - SQLite: TEXT or BLOB exceeds size limit.
     * @throws { BusinessException  } 14800032 - SQLite: Abort due to constraint violation.
     * @throws { BusinessException  } 14800033 - SQLite: Data type mismatch.
     * @throws { BusinessException  } 14800034 - SQLite: Library used incorrectly.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core",
        throwexception: true
    ]
    public func getLong(columnIndex: Int32): Int64

    /**
     * Obtains the value of the specified column in the current row as double.
     * The implementation class determines whether to throw an exception if the value of the specified column
     * in the current row is null, the specified column is not of the double type.
     *
     * @param { Int32 } columnIndex - Indicates the specified column index, which starts from 0.
     * @returns { Float64 } The value of the specified column as a double.
     * @throws { BusinessException  } 14800000 - Inner error.
     * @throws { BusinessException  } 14800011 - Failed to open the database because it is corrupted.
     * @throws { BusinessException  } 14800012 - ResultSet is empty or pointer index is out of bounds.
     * @throws { BusinessException  } 14800013 - Resultset is empty or column index is out of bounds.
     * @throws { BusinessException  } 14800014 - The RdbStore or ResultSet is already closed.
     * @throws { BusinessException  } 14800021 - SQLite: Generic error.
     * Possible causes: Insert failed or the updated data does not exist.
     * @throws { BusinessException  } 14800022 - SQLite: Callback routine requested an abort.
     * @throws { BusinessException  } 14800023 - SQLite: Access permission denied.
     * @throws { BusinessException  } 14800024 - SQLite: The database file is locked.
     * @throws { BusinessException  } 14800025 - SQLite: A table in the database is locked.
     * @throws { BusinessException  } 14800026 - SQLite: The database is out of memory.
     * @throws { BusinessException  } 14800027 - SQLite: Attempt to write a readonly database.
     * @throws { BusinessException  } 14800028 - SQLite: Some kind of disk I/O error occurred.
     * @throws { BusinessException  } 14800029 - SQLite: The database is full.
     * @throws { BusinessException  } 14800030 - SQLite: Unable to open the database file.
     * @throws { BusinessException  } 14800031 - SQLite: TEXT or BLOB exceeds size limit.
     * @throws { BusinessException  } 14800032 - SQLite: Abort due to constraint violation.
     * @throws { BusinessException  } 14800033 - SQLite: Data type mismatch.
     * @throws { BusinessException  } 14800034 - SQLite: Library used incorrectly.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core",
        throwexception: true
    ]
    public func getDouble(columnIndex: Int32): Float64

    /**
     * Obtains the value of the specified column in the current row as an asset.
     * The implementation class determines whether to throw an exception if the value of the specified column
     * in the current row is null or the specified column is not of the Asset type.
     *
     * @param { Int32 } columnIndex - Indicates the specified column index, which starts from 0.
     * @returns { Asset } The value of the specified column as an asset.
     * @throws { BusinessException  } 14800000 - Inner error.
     * @throws { BusinessException  } 14800011 - Failed to open the database because it is corrupted.
     * @throws { BusinessException  } 14800012 - ResultSet is empty or pointer index is out of bounds.
     * @throws { BusinessException  } 14800013 - Resultset is empty or column index is out of bounds.
     * @throws { BusinessException  } 14800014 - The RdbStore or ResultSet is already closed.
     * @throws { BusinessException  } 14800021 - SQLite: Generic error.
     * Possible causes: Insert failed or the updated data does not exist.
     * @throws { BusinessException  } 14800022 - SQLite: Callback routine requested an abort.
     * @throws { BusinessException  } 14800023 - SQLite: Access permission denied.
     * @throws { BusinessException  } 14800024 - SQLite: The database file is locked.
     * @throws { BusinessException  } 14800025 - SQLite: A table in the database is locked.
     * @throws { BusinessException  } 14800026 - SQLite: The database is out of memory.
     * @throws { BusinessException  } 14800027 - SQLite: Attempt to write a readonly database.
     * @throws { BusinessException  } 14800028 - SQLite: Some kind of disk I/O error occurred.
     * @throws { BusinessException  } 14800029 - SQLite: The database is full.
     * @throws { BusinessException  } 14800030 - SQLite: Unable to open the database file.
     * @throws { BusinessException  } 14800031 - SQLite: TEXT or BLOB exceeds size limit.
     * @throws { BusinessException  } 14800032 - SQLite: Abort due to constraint violation.
     * @throws { BusinessException  } 14800033 - SQLite: Data type mismatch.
     * @throws { BusinessException  } 14800034 - SQLite: Library used incorrectly.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core",
        throwexception: true
    ]
    public func getAsset(columnIndex: Int32): Asset

    /**
     * Obtains the value of the specified column in the current row as assets.
     * The implementation class determines whether to throw an exception if the value of the specified column
     * in the current row is null or the specified column is not of the Assets type.
     *
     * @param { Int32 } columnIndex - Indicates the specified column index, which starts from 0.
     * @returns { Assets } The value of the specified column as assets.
     * @throws { BusinessException  } 14800000 - Inner error.
     * @throws { BusinessException  } 14800011 - Failed to open the database because it is corrupted.
     * @throws { BusinessException  } 14800012 - ResultSet is empty or pointer index is out of bounds.
     * @throws { BusinessException  } 14800013 - Resultset is empty or column index is out of bounds.
     * @throws { BusinessException  } 14800014 - The RdbStore or ResultSet is already closed.
     * @throws { BusinessException  } 14800021 - SQLite: Generic error.
     * Possible causes: Insert failed or the updated data does not exist.
     * @throws { BusinessException  } 14800022 - SQLite: Callback routine requested an abort.
     * @throws { BusinessException  } 14800023 - SQLite: Access permission denied.
     * @throws { BusinessException  } 14800024 - SQLite: The database file is locked.
     * @throws { BusinessException  } 14800025 - SQLite: A table in the database is locked.
     * @throws { BusinessException  } 14800026 - SQLite: The database is out of memory.
     * @throws { BusinessException  } 14800027 - SQLite: Attempt to write a readonly database.
     * @throws { BusinessException  } 14800028 - SQLite: Some kind of disk I/O error occurred.
     * @throws { BusinessException  } 14800029 - SQLite: The database is full.
     * @throws { BusinessException  } 14800030 - SQLite: Unable to open the database file.
     * @throws { BusinessException  } 14800031 - SQLite: TEXT or BLOB exceeds size limit.
     * @throws { BusinessException  } 14800032 - SQLite: Abort due to constraint violation.
     * @throws { BusinessException  } 14800033 - SQLite: Data type mismatch.
     * @throws { BusinessException  } 14800034 - SQLite: Library used incorrectly.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core",
        throwexception: true
    ]
    public func getAssets(columnIndex: Int32): Assets

    /**
     * Obtains the values of all columns in the specified row.
     * Inserting an empty blob, the obtained value is an empty blob.
     *
     * @returns { ValuesBucket } Indicates the row of data to be inserted into the table.
     * @throws { BusinessException  } 14800000 - Inner error.
     * @throws { BusinessException  } 14800011 - Failed to open the database because it is corrupted.
     * @throws { BusinessException  } 14800012 - ResultSet is empty or pointer index is out of bounds.
     * @throws { BusinessException  } 14800013 - Resultset is empty or column index is out of bounds.
     * @throws { BusinessException  } 14800014 - The RdbStore or ResultSet is already closed.
     * @throws { BusinessException  } 14800021 - SQLite: Generic error.
     * Possible causes: Insert failed or the updated data does not exist.
     * @throws { BusinessException  } 14800022 - SQLite: Callback routine requested an abort.
     * @throws { BusinessException  } 14800023 - SQLite: Access permission denied.
     * @throws { BusinessException  } 14800024 - SQLite: The database file is locked.
     * @throws { BusinessException  } 14800025 - SQLite: A table in the database is locked.
     * @throws { BusinessException  } 14800026 - SQLite: The database is out of memory.
     * @throws { BusinessException  } 14800027 - SQLite: Attempt to write a readonly database.
     * @throws { BusinessException  } 14800028 - SQLite: Some kind of disk I/O error occurred.
     * @throws { BusinessException  } 14800029 - SQLite: The database is full.
     * @throws { BusinessException  } 14800030 - SQLite: Unable to open the database file.
     * @throws { BusinessException  } 14800031 - SQLite: TEXT or BLOB exceeds size limit.
     * @throws { BusinessException  } 14800032 - SQLite: Abort due to constraint violation.
     * @throws { BusinessException  } 14800033 - SQLite: Data type mismatch.
     * @throws { BusinessException  } 14800034 - SQLite: Library used incorrectly.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core",
        throwexception: true
    ]
    public func getRow(): ValuesBucket

    /**
     * Checks whether the value of the specified column in the current row is null.
     *
     * @param { Int32 } columnIndex - Indicates the specified column index, which starts from 0.
     * @returns { Bool } True if the value of the specified column in the current row is null;
     * Returns false otherwise.
     * @throws { BusinessException  } 14800000 - Inner error.
     * @throws { BusinessException  } 14800011 - Failed to open the database because it is corrupted.
     * @throws { BusinessException  } 14800012 - ResultSet is empty or pointer index is out of bounds.
     * @throws { BusinessException  } 14800013 - Resultset is empty or column index is out of bounds.
     * @throws { BusinessException  } 14800014 - The RdbStore or ResultSet is already closed.
     * @throws { BusinessException  } 14800021 - SQLite: Generic error.
     * Possible causes: Insert failed or the updated data does not exist.
     * @throws { BusinessException  } 14800022 - SQLite: Callback routine requested an abort.
     * @throws { BusinessException  } 14800023 - SQLite: Access permission denied.
     * @throws { BusinessException  } 14800024 - SQLite: The database file is locked.
     * @throws { BusinessException  } 14800025 - SQLite: A table in the database is locked.
     * @throws { BusinessException  } 14800026 - SQLite: The database is out of memory.
     * @throws { BusinessException  } 14800027 - SQLite: Attempt to write a readonly database.
     * @throws { BusinessException  } 14800028 - SQLite: Some kind of disk I/O error occurred.
     * @throws { BusinessException  } 14800029 - SQLite: The database is full.
     * @throws { BusinessException  } 14800030 - SQLite: Unable to open the database file.
     * @throws { BusinessException  } 14800031 - SQLite: TEXT or BLOB exceeds size limit.
     * @throws { BusinessException  } 14800032 - SQLite: Abort due to constraint violation.
     * @throws { BusinessException  } 14800033 - SQLite: Data type mismatch.
     * @throws { BusinessException  } 14800034 - SQLite: Library used incorrectly.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core",
        throwexception: true
    ]
    public func isColumnNull(columnIndex: Int32): Bool

    /**
     * Closes the result set.
     * Calling this method on the result set will release all of its resources and makes it ineffective.
     *
     * @throws { BusinessException  } 14800000 - Inner error.
     * @throws { BusinessException  } 14800012 - ResultSet is empty or pointer index is out of bounds.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.RelationalStore.Core",
        throwexception: true
    ]
    public func close(): Unit
}
