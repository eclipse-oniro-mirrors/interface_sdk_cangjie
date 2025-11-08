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

package ohos.data.data_share_predicates


import ohos.data.values_bucket.*
import ohos.labels.*

/**
 * Manages relational database configurations.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.DistributedDataManager.DataShare.Core"
]
public class DataSharePredicates {
    /**
     * DataSharePredicates constructor.
     * Currently, only used for RDB and KVDB(schema).
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.DataShare.Core"
    ]
    public init()

    /**
     * Configure the DataSharePredicates to match the field whose data type is VBValueType and value is equal
     * to a specified value.
     * This method is similar to = of the SQL statement.
     * Currently only used for RDB and KVDB(schema).
     *
     * @param { String } field - Indicates the column name in the database table.
     * @param { VBValueType } value - Indicates the value to match with the DataSharePredicates.
     * @returns { DataSharePredicates } Returns the DataSharePredicates that match the specified field.
     * @throws { BusinessException } 16000050 - Internal error.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.DataShare.Core",
        throwexception: true
    ]
    public func equalTo(field: String, value: VBValueType): DataSharePredicates

    /**
     * Adds an and condition to the DataSharePredicates.
     * This method is similar to and of the SQL statement.
     * Currently only used for RDB and KVDB(schema).
     *
     * @returns { DataSharePredicates } Returns the DataSharePredicates with the and condition.
     * @throws { BusinessException } 16000050 - Internal error.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.DataShare.Core",
        throwexception: true
    ]
    public func and(): DataSharePredicates

    /**
     * Restricts the ascending order of the return list. When there are several orders,
     * the one close to the head has the highest priority.
     * Currently only used for RDB and KVDB(schema).
     *
     * @param { String } field - Indicates the column name for sorting the return list.
     * @returns { DataSharePredicates } Returns the SQL query statement with the specified DataSharePredicates.
     * @throws { BusinessException } 16000050 - Internal error.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.DataShare.Core",
        throwexception: true
    ]
    public func orderByAsc(field: String): DataSharePredicates

    /**
     * Restricts the descending order of the return list. When there are several orders,
     * the one close to the head has the highest priority.
     * Currently only used for RDB and KVDB(schema).
     *
     * @param { String } field - Indicates the column name for sorting the return list.
     * @returns { DataSharePredicates } Returns the SQL query statement with the specified DataSharePredicates.
     * @throws { BusinessException } 16000050 - Internal error.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.DataShare.Core",
        throwexception: true
    ]
    public func orderByDesc(field: String): DataSharePredicates

    /**
     * Construct a query object to specify the number of results and the starting position.
     * Currently only used for RDB and KVDB(schema).
     *
     * @param { Int32 } total - Represents the specified number of results.
     * @param { Int32 } offset - Indicates the starting position.
     * @returns { DataSharePredicates } Returns the query object.
     * @throws { BusinessException } 16000050 - Internal error.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.DataShare.Core",
        throwexception: true
    ]
    public func limit(total: Int32, offset: Int32): DataSharePredicates

    /**
     * Configure DataSharePredicates to match the specified field whose data type is ValueType array and values
     * are within a given range.
     * Currently only used for RDB and KVDB(schema).
     *
     * @param { String } field - Indicates the column name in the database table.
     * @param { Array<VBValueType> } value - Indicates the values to match with DataSharePredicates.
     * @returns { DataSharePredicates } Returns DataSharePredicates that matches the specified field.
     * @throws { BusinessException } 16000050 - Internal error.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.DistributedDataManager.DataShare.Core",
        throwexception: true
    ]
    public func inValues(field: String, value: Array<VBValueType>): DataSharePredicates
}
