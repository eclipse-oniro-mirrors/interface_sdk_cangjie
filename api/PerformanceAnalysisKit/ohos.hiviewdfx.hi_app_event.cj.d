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

package ohos.hiviewdfx.hi_app_event

import ohos.labels.APILevel
import std.collection.HashMap

/**
* Defines a subscription data holder for processing event information.
*
*/
@!APILevel[
    since: "22",
    syscap: "SystemCapability.HiviewDFX.HiAppEvent"
]
public class AppEventPackageHolder {
    /**
     * Constructs an AppEventPackageHolder instance. You can call addWatcher to add an event watcher, and then 
     * associate the AppEventPackageHolder instance with the watcher added in the application based on the watcher name.
     *
     * @param { String } watcherName - Name of the event watcher added through addWatcher. If no watcher is added, no 
     * data is displayed by default.
     * @throws { BusinessException } 11105001 - Parameter error.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.HiviewDFX.HiAppEvent",
        throwexception: true
    ]
    public init(watcherName: String)

    /**
     * Sets the threshold for the data size of the event package obtained each time.
     *
     * @param { Int32 } size - Data size threshold, in bytes. The value range is [0, $2^{31}$-1]. If the value is out of 
     * the range, an exception is thrown.
     * @throws { BusinessException } 11104001 - Invalid size value.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.HiviewDFX.HiAppEvent",
        throwexception: true
    ]
    public func setSize(size: Int32): Unit

    /**
     * Obtains the subscription event.
     * The system obtains the subscription event data based on the data size threshold specified by setSize or the 
     * number of data records specified by setRow. By default, one subscription event data record is obtained. When all 
     * subscription event data is obtained, null is returned.
     * When setRow and setSize are called at the same time, only setRow takes effect.
     *
     * @returns { Option<AppEventPackage> } Event package object. If all subscription event data has been retrieved, None is 
     * returned.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.HiviewDFX.HiAppEvent"
    ]
    public func takeNext(): Option<AppEventPackage>
}

/**
* Enumerates event types.
*
*/
@!APILevel[
    since: "22",
    syscap: "SystemCapability.HiviewDFX.HiAppEvent"
]
public enum EventType {
    /**
     * Fault event.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.HiviewDFX.HiAppEvent"
    ]
    Fault
    | 
    /**
     * Statistic event.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.HiviewDFX.HiAppEvent"
    ]
    Statistic
    | 
    /**
     * Security event.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.HiviewDFX.HiAppEvent"
    ]
    Security
    | 
    /**
     * Behavior event.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.HiviewDFX.HiAppEvent"
    ]
    Behavior
    | ...
}

/**
* Enumerates EventValueType types.
*/
@!APILevel[
    since: "22",
    syscap: "SystemCapability.HiviewDFX.HiAppEvent"
]
public enum EventValueType <: ToString {
    /**
     * IntValue event.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.HiviewDFX.HiAppEvent"
    ] 
    IntValue(Int32)
    | 
    /**
     * FloatValue event.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.HiviewDFX.HiAppEvent"
    ] 
    FloatValue(Float64)
    | 
    /**
     * StringValue event.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.HiviewDFX.HiAppEvent"
    ] 
    StringValue(String)
    | 
    /**
     * BoolValue event.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.HiviewDFX.HiAppEvent"
    ] 
    BoolValue(Bool)
    | 
    /**
     * ArrString event.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.HiviewDFX.HiAppEvent"
    ] 
    ArrString(Array<String>)
    | 
    /**
     * ArrInt32 event.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.HiviewDFX.HiAppEvent"
    ] 
    ArrInt32(Array<Int32>)
    | 
    /**
     * ArrBool event.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.HiviewDFX.HiAppEvent"
    ] 
    ArrBool(Array<Bool>)
    | 
    /**
     * ArrFloat64 event.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.HiviewDFX.HiAppEvent"
    ] 
    ArrFloat64(Array<Float64>)
    | 
    /**
     * Int64Value event.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.HiviewDFX.HiAppEvent"
    ] 
    Int64Value(Int64)
    | 
    /**
     * ArrInt64 event.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.HiviewDFX.HiAppEvent"
    ] 
    ArrInt64(Array<Int64>)
    | ...

    /**
     * get the corresponding mapping value.
     *
     * @returns { String } return the corresponding mapping value.
     * @throws { BusinessException } 11105001 - Parameter error.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.HiviewDFX.HiAppEvent",
        throwexception: true
    ]
    public func toString(): String
}

/**
* Provides domain name constants.
*/
@!APILevel[
    since: "22",
    syscap: "SystemCapability.HiviewDFX.HiAppEvent"
]
public class Domain {
    /**
     * System domain.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.HiviewDFX.HiAppEvent"
    ]
    public static const OS = "OS"
}

/**
* Provides event name constants, including system event name constants and application event name constants. 
* The application event name constants are optional custom event names reserved when you call Write for 
* application event logging.
*
*/
@!APILevel[
    since: "22",
    syscap: "SystemCapability.HiviewDFX.HiAppEvent"
]
public class Event {
    /**
     * User login event. This is a reserved application event name constant.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.HiviewDFX.HiAppEvent"
    ]
    public static const USER_LOGIN = "hiappevent.user_login"

    /**
     * User logout event. This is a reserved application event name constant.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.HiviewDFX.HiAppEvent"
    ]
    public static const USER_LOGOUT = "hiappevent.user_logout"

    /**
     * Distributed service startup event. This is a reserved application event name constant.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.HiviewDFX.HiAppEvent"
    ]
    public static const DISTRIBUTED_SERVICE_START = "hiappevent.distributed_service_start"

    /**
     * Application crash event. This is a system event name constant.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.HiviewDFX.HiAppEvent"
    ]
    public static const APP_CRASH = "APP_CRASH"

    /**
     * Application freeze event. This is a system event name constant.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.HiviewDFX.HiAppEvent"
    ]
    public static const APP_FREEZE = "APP_FREEZE"
}

/**
* Provides parameter name constants.
*/
@!APILevel[
    since: "22",
    syscap: "SystemCapability.HiviewDFX.HiAppEvent"
]
public class Param {
    /**
     * Custom user ID.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.HiviewDFX.HiAppEvent"
    ]
    public static const USER_ID = "user_id"

    /**
     * Distributed service name.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.HiviewDFX.HiAppEvent"
    ]
    public static const DISTRIBUTED_SERVICE_NAME = "ds_name"

    /**
     * Distributed service instance ID.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.HiviewDFX.HiAppEvent"
    ]
    public static const DISTRIBUTED_SERVICE_INSTANCE_ID = "ds_instance_id"
}

/**
* Defines parameters of the event information.
*/
@!APILevel[
    since: "22",
    syscap: "SystemCapability.HiviewDFX.HiAppEvent"
]
public class AppEventInfo {
    /**
     * Event domain. The value is a string of up to 32 characters, including digits (0 to 9), letters (a to z), and 
     * underscores (_). It must start with a letter and cannot end with an underscore (_).
     *
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.HiviewDFX.HiAppEvent"
    ]
    public var domain: String

    /**
     * Event name. The value is string that contains a maximum of 48 characters, including digits (0 to 9), letters 
     * (a to z), underscore (_), and dollar sign ($). It must start with a letter or dollar sign ($) and end with a 
     * digit or letter.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.HiviewDFX.HiAppEvent"
    ]
    public var name: String

    /**
     * Event type.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.HiviewDFX.HiAppEvent"
    ]
    public var eventType: EventType

    /**
     * Event parameter object, which consists of a parameter name and a parameter value. In system events, the fields 
     * contained in params are defined by system. For details about the fields, you can see the overviews of system 
     * events, for example, Crash Event Overview. For application events, you need to define the parameters of the 
     * Write API. The specifications are as follows:
     * A parameter name is a string that contains a maximum of 32 characters, including digits (0 to 9), letters 
     * (a to z), underscore (_), and dollar sign ($). It must start with a letter or dollar sign ($) and end with a 
     * digit or letter. For example, testName and $123_name.
     * The parameter value can be a string, number, boolean, or array. The string type parameter can contain a 
     * maximum of 8 x 1024 characters. If the length exceeds the limit, the parameter and its name will be discarded. 
     * The value of the number type parameter must be within the range of -9007199254740991 to 
     * 9007199254740991. If the value exceeds the range, an uncertain value may be generated. The element type 
     * in the array type parameter can only be string, number, or boolean. The number of elements must be less than 
     * 100. If this limit is exceeded, excess elements will be discarded.
     * The maximum number of parameters is 32. If this limit is exceeded, excess parameters will be discarded.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.HiviewDFX.HiAppEvent"
    ]
    public var params: HashMap<String, EventValueType>

    /**
     * AppEventInfo constructor.
     *
     * @param { String } domain - Indicates the event domain.
     * @param { String } name - Indicates the event name.
     * @param { EventType } event - Indicates the event type.
     * @param { HashMap<String, EventValueType> } params - Indicates the Event parameter object.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.HiviewDFX.HiAppEvent"
    ]
    public init(domain: String, name: String, event: EventType, params: HashMap<String, EventValueType>)
}

/**
* Provides configuration options for application event logging.
*/
@!APILevel[
    since: "22",
    syscap: "SystemCapability.HiviewDFX.HiAppEvent"
]
public class ConfigOption {
    /**
     * Whether to enable the event logging function. The default value is false. 
     * If this parameter is set to true, the logging function is disabled. Otherwise, the logging function is 
     * enabled.
     *
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.HiviewDFX.HiAppEvent"
    ]
    public var disable: Bool

    /**
     * Quota for the directory that stores event logging files. The default value is 10M. 
     * It is recommended that the quota be less than or equal to 10 MB. Otherwise, the API efficiency may be 
     * affected. If the directory size exceeds the specified quota when application event logging is performed, event 
     * logging files in the directory will be cleared one by one based on the generation time to ensure that directory 
     * size does not exceed the quota.
     * The quota value must meet the following requirements:
     * The quota value consists of only digits and a unit (which can be one of [b|k|kb|m|mb|g|gb|t|tb], which are 
     * case insensitive.)
     * The quota value must start with a digit. You can determine whether to pass the unit. If the unit is left 
     * empty, b (that is, byte) is used by default.
     *
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.HiviewDFX.HiAppEvent"
    ]
    public var maxStorage: String

    /**
     * ConfigOption constructor.
     *
     * @param { Bool } [disable] - Indicates whether to enable the event logging function. The default value is false.
     * @param { String } [maxStorage] - Indicates the quota for the directory that stores event logging files. 
     *                                  The default value is "10M".
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.HiviewDFX.HiAppEvent"
    ]
    public init(disable!: Bool = false, maxStorage!: String = "10M")
}

/**
* Event description configuration that can be reported by the data processor.
*/
@!APILevel[
    since: "22",
    syscap: "SystemCapability.HiviewDFX.HiAppEvent"
]
public class AppEventReportConfig {
    /**
     * Event domain. The value is a string that contains a maximum of 32 characters, including digits (0 to 9), letters 
     * (a to z), and underscore (_). It must start with a letter and cannot end with an underscore (_). The default 
     * value is an empty string.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.HiviewDFX.HiAppEvent"
    ]
    public var domain: String

    /**
     * Event name. The value is string that contains a maximum of 48 characters, including digits (0 to 9), letters 
     * (a to z), underscore (_), and dollar sign ($). It must start with a letter or dollar sign ($) and end with a 
     * digit or letter. The default value is an empty string.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.HiviewDFX.HiAppEvent"
    ]
    public var name: String

    /**
     * Whether to report events in real time. The value true indicates that events are reported in real time, and the 
     * value false indicates the opposite. The default value is false.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.HiviewDFX.HiAppEvent"
    ]
    public var isRealTime: Bool

    /**
     * AppEventReportConfig constructor.
     *
     * @param { String } [domain] - Indicates event domain. The default value is "".
     * @param { String } [name] - Indicates the event name. The default value is "".
     * @param { Bool } [isRealTime] - Indicates whether to report events in real time. The default value is false.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.HiviewDFX.HiAppEvent"
    ]
    public init(domain!: String = "", name!: String = "", isRealTime!: Bool = false)
}

/**
* Defines a data processor for reporting and managing events. You can customize processor configurations as required.
*/
@!APILevel[
    since: "22",
    syscap: "SystemCapability.HiviewDFX.HiAppEvent"
]
public class Processor {
    /**
     * Name of a data processor. The value is string that contains a maximum of 256 characters, including digits (0 to 
     * 9), letters (a to z), underscore (_), and dollar sign ($). It must not start with a digit.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.HiviewDFX.HiAppEvent"
    ]
    public var name: String

    /**
     * Whether to enable the debug mode. The default value is false. The value true means to enable the debugging mode, 
     * and the value false means the opposite.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.HiviewDFX.HiAppEvent"
    ]
    public var debugMode: Bool

    /**
     * Server location information. It is left empty by default. The length of the input string cannot exceed 8 KB. If 
     * the length exceeds 8 KB, the default value is used.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.HiviewDFX.HiAppEvent"
    ]
    public var routeInfo: String

    /**
     * Application ID. It is left empty by default. The length of the input string cannot exceed 8 KB. If the length 
     * exceeds 8 KB, the default value is used.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.HiviewDFX.HiAppEvent"
    ]
    public var appId: String

    /**
     * Whether to report an event when the data processor starts. The default value is false. The value true means to 
     * report events, and the value false means the opposite.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.HiviewDFX.HiAppEvent"
    ]
    public var onStartReport: Bool

    /**
     * Whether to report an event when an application switches to the background. The default value is false. The value 
     * true means to report events, and the value false means the opposite.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.HiviewDFX.HiAppEvent"
    ]
    public var onBackgroundReport: Bool

    /**
     * Interval for event reporting, in seconds. The input value must be greater than or equal to 0. If the input value 
     * is less than 0, the default value 0 is used and periodic reporting is not performed.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.HiviewDFX.HiAppEvent"
    ]
    public var periodReport: Int32

    /**
     * Event reporting threshold. When the number of events reaches the threshold, an event is reported. The value must 
     * be greater than 0 and less than 1000. If the value is not within the range, the default value 0 is used and no 
     * events are reported.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.HiviewDFX.HiAppEvent"
    ]
    public var batchReport: Int32

    /**
     * Name array of user IDs that can be reported by the data processor. name corresponds to the name parameter of the 
     * setUserId API. The default value is an empty array.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.HiviewDFX.HiAppEvent"
    ]
    public var userIds: Array<String>

    /**
     * Name array of user properties that can be reported by the data processor. name corresponds to the name parameter 
     * of the setUserProperty API. The default value is an empty array.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.HiviewDFX.HiAppEvent"
    ]
    public var userProperties: Array<String>

    /**
     * Event description configuration array that can be reported by the data processor. The default value is an empty 
     * array.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.HiviewDFX.HiAppEvent"
    ]
    public var eventConfigs: Array<AppEventReportConfig>

    /**
     * Processor constructor.
     *
     * @param { String } name - Indicates name of a data processor.
     * @param { Bool } [debugMode] - Indicates whether to enable the debug mode. The default value is false.
     * @param { String } [routeInfo] - Indicates server location information. The default value is "".
     * @param { String } [appId] - Indicates Application ID. The default value is "".
     * @param { Bool } [onStartReport] - Indicates whether to report an event when the data processor starts. The default
     * value is false.
     * @param { Bool } [onBackgroundReport] - Indicates whether to report an event when an application switches to the
     * background. The default value is false.
     * @param { Int32 } [periodReport] - Indicates interval for event reporting, in seconds. The default value is 0.
     * @param { Int32 } [batchReport] - Indicates event reporting threshold. The default value is 0.
     * @param { Array<String> } [userIds] - Indicates name array of user IDs that can be reported by the data processor.
     * The default value is [].
     * @param { Array<String> } [userProperties] - Indicates name array of user properties that can be reported by the
     * data processor. The default value is [].
     * @param { Array<AppEventReportConfig> } [eventConfigs] - Indicates event description configuration array that can
     * be reported by the data processor. The default value is [].
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.HiviewDFX.HiAppEvent"
    ]
    public init(name: String, debugMode!: Bool = false, routeInfo!: String = "", appId!: String = "",
        onStartReport!: Bool = false, onBackgroundReport!: Bool = false, periodReport!: Int32 = 0,
        batchReport!: Int32 = 0, userIds!: Array<String> = [], userProperties!: Array<String> = [],
        eventConfigs!: Array<AppEventReportConfig> = [])
}

/**
* Defines parameters of an AppEventPackage object. This API is used to obtain detail information about an event 
* package, which is obtained using the takeNext API.
*/
@!APILevel[
    since: "22",
    syscap: "SystemCapability.HiviewDFX.HiAppEvent"
]
public class AppEventPackage {
    /**
     * Event package ID, which is named from 0 in ascending order.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.HiviewDFX.HiAppEvent"
    ]
    public var packageId: Int32

    /**
     * Number of events in the event package.
     *
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.HiviewDFX.HiAppEvent"
    ]
    public var row: Int32

    /**
     * Event size of the event package, in bytes.
     *
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.HiviewDFX.HiAppEvent"
    ]
    public var size: Int32

    /**
     * Event data in the event package.
     *
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.HiviewDFX.HiAppEvent"
    ]
    public var data: Array<String>
}

/**
* Defines the triggering condition parameters of the onTrigger callback of a Watcher.
*/
@!APILevel[
    since: "22",
    syscap: "SystemCapability.HiviewDFX.HiAppEvent"
]
public class TriggerCondition {
    /**
     * Total number of events that trigger callback. The value is a positive integer. The default value is 0, 
     * indicating that no callback is triggered. If this parameter is set to a negative value, the default 
     * value is used.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.HiviewDFX.HiAppEvent"
    ]
    public var row: Int32

    /**
     * Total size of events that trigger callback. The value is a positive integer, in bytes. The default value is 0, 
     * indicating that no callback is triggered. If this parameter is set to a negative value, the default value is 
     * used.
     *
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.HiviewDFX.HiAppEvent"
    ]
    public var size: Int32

    /**
     * Timeout interval for triggering callback. The value is a positive integer, in unit of 30s. The default value is 
     * 0, indicating that no callback is triggered. If this parameter is set to a negative value, the default value is 
     * used.
     *
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.HiviewDFX.HiAppEvent"
    ]
    public var timeOut: Int32

    /**
     * TriggerCondition constructor.
     *
     * @param { Int32 } [row] - Indicates total number of events that trigger callback. The default value is 0.
     * @param { Int32 } [size] - Indicates total size of events that trigger callback. The default value is 0.
     * @param { Int32 } [timeOut] - Indicates timeout interval for triggering callback. The default value is 0.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.HiviewDFX.HiAppEvent"
    ]
    public init(row!: Int32 = 0, size!: Int32 = 0, timeOut!: Int32 = 0)
}

/**
* Defines parameters of subscription filtering conditions of a Watcher. This API is used to set event filtering 
* conditions in the event watcher to ensure that only the events that meet the filtering conditions are subscribed 
* to.
*/
@!APILevel[
    since: "22",
    syscap: "SystemCapability.HiviewDFX.HiAppEvent"
]
public class AppEventFilter {
    /**
     * Event domain, which can be the system event domain (hiAppEvent.domain.OS) or the event domain of the custom 
     * event information (AppEventInfo) passed through the Write API.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.HiviewDFX.HiAppEvent"
    ]
    public var domain: String

    /**
     * Event types. If this parameter is not set, events are not filtered by default.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.HiviewDFX.HiAppEvent"
    ]
    public var eventTypes: Array<EventType>

    /**
     * Names of the events to be subscribed. If this parameter is not set, events are not filtered by default.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.HiviewDFX.HiAppEvent"
    ]
    public var names: Array<String>

    /**
     * AppEventFilter constructor.
     *
     * @param { String } domain - Indicates event domain.
     * @param { Array<EventType> } [eventTypes] - Indicates event types. The default value is [].
     * @param { Array<String> } [names] - Indicates names of the events to be subscribed. The default value is [].
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.HiviewDFX.HiAppEvent"
    ]
    public init(domain: String, eventTypes!: Array<EventType> = [], names!: Array<String> = [])
}

/**
* Defines parameters of the event group returned by a subscription. This API can be used to obtain detail 
* information about an event group, which is often used in the onReceive callback of Watcher.
*/
@!APILevel[
    since: "22",
    syscap: "SystemCapability.HiviewDFX.HiAppEvent"
]
public class AppEventGroup {
    /**
     * Event name.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.HiviewDFX.HiAppEvent"
    ]
    public var name: String

    /**
     * Event object group.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.HiviewDFX.HiAppEvent"
    ]
    public var appEventInfos: Array<AppEventInfo>
}

/**
 * Defines parameters for a Watcher object. This API is used to configure and manage event watchers to subscribe to 
 * and process specified events.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.HiviewDFX.HiAppEvent"
]
public class Watcher {
    /**
     * Unique name of a watcher. The value contains a maximum of 32 characters, including digits (0 to 9), letters 
     * (a to z), underscore (_). It must start with a letter and end with a digit or letter. For example, testName1 
     * and crash_Watcher.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.HiviewDFX.HiAppEvent"
    ]
    public var name: String

    /**
     * Subscription callback triggering condition. This parameter takes effect only when it is passed together with 
     * onTrigger. If this parameter is not set, the onTrigger callback is not triggered by default.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.HiviewDFX.HiAppEvent"
    ]
    public var triggerCondition: TriggerCondition

    /**
     * Subscription filtering condition. This parameter is passed only when subscription events need to be filtered. 
     * If this parameter is not set, events are not filtered by default.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.HiviewDFX.HiAppEvent"
    ]
    public var appEventFilters: Array<AppEventFilter>

    /**
     * Subscription callback. This parameter takes effect only when it is passed together with triggerCondition. 
     * The input arguments are described as follows: 
     * curRow: total number of subscription events when the callback is triggered.
     * curSize: total size of subscribed events when the callback is triggered, in bytes.
     * holder: subscription data holder, which can be used to process subscribed events.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.HiviewDFX.HiAppEvent"
    ]
    public var onTrigger: Option<(Int32, Int32, AppEventPackageHolder) -> Unit>

    /**
     * Real-time subscription callback. Only this callback function is triggered if it is passed together with 
     * onTrigger. The input arguments are described as follows: 
     * domain: domain name.
     * appEventGroups: event group.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.HiviewDFX.HiAppEvent"
    ]
    public var onReceive: Option<(String, Array<AppEventGroup>) -> Unit>

    /**
     * Watcher constructor.
     *
     * @param { String } name - Indicates unique name of a watcher.
     * @param { TriggerCondition } [triggerCondition] - Indicates subscription callback triggering condition.
     * @param { Array<AppEventFilter> } [appEventFilters] - Indicates subscription filtering condition. The default value
     * is [].
     * @param { Option<(Int32, Int32, AppEventPackageHolder) -> Unit> } [onTrigger] - Indicates subscription callback.
     * The default value is None.
     * @param { Option<(String, Array<AppEventGroup>) -> Unit> } [onReceive] - Indicates Real-time subscription callback.
     * The default value is None.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.HiviewDFX.HiAppEvent"
    ]
    public init(name: String, triggerCondition!: TriggerCondition = TriggerCondition(),
        appEventFilters!: Array<AppEventFilter> = [],
        onTrigger!: Option<(Int32, Int32, AppEventPackageHolder) -> Unit> = None,
        onReceive!: Option<(String, Array<AppEventGroup>) -> Unit> = None)
}

/**
 * Provides the event logging function for applications to log the fault, statistical, security,
 * and user behavior events reported during running. Based on event information,
 * you will be able to analyze the running status of applications.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.HiviewDFX.HiAppEvent"
]
public class HiAppEvent {
    /**
     * Writes events of the AppEventInfo type. The event object written by 
     * calling this API is a custom object. To avoid conflicts with system events, you are not advised to write it to 
     * system events (system event name constants defined in Event). The events written by this API can be subscribed to 
     * through (addWatcher).
     *
     * @param { AppEventInfo } info - Application event object. You are advised to avoid the conflict between the custom 
     * event name and the system event name constant defined in Event.
     * @throws { BusinessException } 11100001 - Function is disabled. Possible caused by the param disable in ConfigOption is true.
     * @throws { BusinessException } 11101001 - Invalid event domain.Possible causes: 1. Contain invalid characters;
     * 2. Length is invalid.
     * @throws { BusinessException } 11101002 - Invalid event name. Possible causes: 1. Contain invalid characters;
     * 2. Length is invalid.
     * @throws { BusinessException } 11101003 - Invalid number of event parameters. Possible caused by the number of parameters
     * is over 32.
     * @throws { BusinessException } 11101004 - Invalid string length of the event parameter.
     * @throws { BusinessException } 11101005 - Invalid event parameter name. Possible causes: 1. Contain invalid characters;
     * 2. Length is invalid.
     * @throws { BusinessException } 11101006 - Invalid array length of a event parameter.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.HiviewDFX.HiAppEvent",
        throwexception: true,
        workerthread: true
    ]
    public static func write(info: AppEventInfo): Unit

    /**
     * Configures the application event logging function, such as setting the logging switch and directory storage
     * quota.
     *
     * @param { ConfigOption } config - Configuration items for application event logging.
     * @throws { BusinessException } 11103001 - Invalid max storage quota value. Possible caused by incorrectly formatted.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.HiviewDFX.HiAppEvent",
        throwexception: true
    ]
    public static func configure(config: ConfigOption): Unit

    /**
     * Adds a data processor to migrate event data to the cloud. You can preset the implementation of the processor on 
     * the device and set its properties based on its constraints.
     * The configuration information of Processor must be provided by the data processor. Yet, as no data processor 
     * is preset in the device for interaction for the moment, migrating events to the cloud is unavailable.
     *
     * @param { Processor } processor - Data processor.
     * @returns { Int64 } ID of the data processor of the reported event, which uniquely identifies the data processor 
     * and can be used to remove the data processor. If the operation fails, -1 is returned. If the operation is 
     * successful, a value greater than 0 is returned.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.HiviewDFX.HiAppEvent"
    ]
    public static func addProcessor(processor: Processor): Int64

    /**
     * Removes the data processor of a reported event.
     *
     * @param { Int64 } id - ID of a data processor. The value must be greater than 0. The value is obtained by calling 
     * addProcessor.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.HiviewDFX.HiAppEvent"
    ]
    public static func removeProcessor(id: Int64): Unit

    /**
     * Sets a user ID, which is used for association when a Processor is configured.
     *
     * @param { String } name - Key of a user ID. The value is string that contains a maximum of 256 characters, including 
     * digits (0 to 9), letters (a to z), underscore (_), and dollar sign ($). It must not start with a digit.
     * @param { String } value - Value of a user ID. It can contain a maximum of 256 characters. If the value is null or 
     * left empty, the user ID is cleared.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.HiviewDFX.HiAppEvent"
    ]
    public static func setUserId(name: String, value: String): Unit

    /**
     * Obtains the value set through setUserId.
     *
     * @param { String } name - Key of a user ID. The value is string that contains a maximum of 256 characters, including 
     * digits (0 to 9), letters (a to z), underscore (_), and dollar sign ($). It must not start with a digit.
     * @returns { String } Value of a user ID. If no user ID is found, an empty string is returned.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.HiviewDFX.HiAppEvent"
    ]
    public static func getUserId(name: String): String

    /**
     * Sets a user property, which is used for association when a Processor is configured.
     *
     * @param { String } name - Key of a user property. The value is string that contains a maximum of 256 characters, 
     * including digits (0 to 9), letters (a to z), underscore (_), and dollar sign ($). It must not start with a digit.
     * @param { String } value - Value of a user property. It can contain a maximum of 1024 characters. If the value is 
     * null or left empty, the user property is cleared.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.HiviewDFX.HiAppEvent"
    ]
    public static func setUserProperty(name: String, value: String): Unit

    /**
     * Obtains the value set through setUserProperty.
     *
     * @param { String } name - name Key of a user property. The value is string that contains a maximum of 256 characters, 
     * including digits (0 to 9), letters (a to z), underscore (_), and dollar sign ($). It must not start with a digit.
     * @returns { String } Value of a user property. If no user ID is found, an empty string is returned.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.HiviewDFX.HiAppEvent"
    ]
    public static func getUserProperty(name: String): String

    /**
     * Clears local logging data of the application.
     *
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.HiviewDFX.HiAppEvent"
    ]
    public static func clearData(): Unit

    /**
     * Adds an event watcher. You can use the callback of the event watcher to subscribe to events.
     *
     * @param { Watcher } watcher - Event watcher.
     * @returns { Option<AppEventPackageHolder> } Subscription data holder. If the subscription fails, Option<AppEventPackageHolder>.None is returned.
     * @throws { BusinessException } 11102001 - Invalid watcher name. Possible causes: 1. Contain invalid characters;
     * 2. Length is invalid.
     * @throws { BusinessException } 11102002 - Invalid filtering event domain. Possible causes: 1. Contain invalid characters;
     * 2. Length is invalid.
     * @throws { BusinessException } 11102003 - Invalid row value. Possible caused by the row value is less than zero.
     * @throws { BusinessException } 11102004 - Invalid size value. Possible caused by the size value is less than zero.
     * @throws { BusinessException } 11102005 - Invalid timeout value. Possible caused by the timeout value is less than zero.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.HiviewDFX.HiAppEvent",
        throwexception: true
    ]
    public static func addWatcher(watcher: Watcher): Option<AppEventPackageHolder>

    /**
     * Removes an event watcher.
     *
     * @param { Watcher } watcher - Event watcher.
     * @throws { BusinessException } 11102001 - Invalid watcher name. Possible causes: 1. Contain invalid characters;
     * 2. Length is invalid.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.HiviewDFX.HiAppEvent",
        throwexception: true
    ]
    public static func removeWatcher(watcher: Watcher): Unit
}