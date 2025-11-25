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

package ohos.net.http

import ohos.business_exception.*
import ohos.callback_invoke.*
import ohos.labels.*
import ohos.net.connection.HttpProxy
import std.collection.*

/**
 * Creates an HTTP request task.
 * @returns { HttpRequest } the HttpRequest of the createHttp.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Communication.NetStack"
]
public func createHttp(): HttpRequest

/**
 * Creates a default HttpResponseCache object to store the responses of HTTP access requests.
 * @param { UInt32 } [cacheSize] - the size of cache(max value is 10MB), default is 10*1024*1024(10MB).
 * @returns { HttpResponseCache } the HttpResponseCache of the createHttpResponseCache.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Communication.NetStack"
]
public func createHttpResponseCache(cacheSize!: UInt32 = MAX_CACHE_SIZE): HttpResponseCache

/**
 * Defines an HTTP request task. Before invoking APIs provided by HttpRequest,
 * you must call createHttp() to create an HttpRequestTask object.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Communication.NetStack"
]
public class HttpRequest {
    /**
     * Initiates an HTTP request to a given URL.
     * @param { String } url - URL for initiating an HTTP request.
     * @param { HttpRequestOptions } options - Optional parameters HttpRequestOptions.
     * @param { AsyncCallback<HttpResponse> } callback - the callback of request.
     * @throws { BusinessException } 201 - Permission denied.
     * @throws { BusinessException } 2300001 - Unsupported protocol.
     * @throws { BusinessException } 2300003 - Invalid URL format or missing URL.
     * @throws { BusinessException } 2300005 - Failed to resolve the proxy name.
     * @throws { BusinessException } 2300006 - Failed to resolve the host name.
     * @throws { BusinessException } 2300007 - Failed to connect to the server.
     * @throws { BusinessException } 2300008 - Invalid server response.
     * @throws { BusinessException } 2300009 - Access to the remote resource denied.
     * @throws { BusinessException } 2300016 - Error in the HTTP2 framing layer.
     * @throws { BusinessException } 2300018 - Transferred a partial file.
     * @throws { BusinessException } 2300023 - Failed to write the received data to the disk or application.
     * @throws { BusinessException } 2300025 - Upload failed.
     * @throws { BusinessException } 2300026 - Failed to open or read local data from the file or application.
     * @throws { BusinessException } 2300027 - Out of memory.
     * @throws { BusinessException } 2300028 - Operation timeout.
     * @throws { BusinessException } 2300047 - The number of redirections reaches the maximum allowed.
     * @throws { BusinessException } 2300052 - The server returned nothing (no header or data).
     * @throws { BusinessException } 2300055 - Failed to send data to the peer.
     * @throws { BusinessException } 2300056 - Failed to receive data from the peer.
     * @throws { BusinessException } 2300058 - Local SSL certificate error.
     * @throws { BusinessException } 2300059 - The specified SSL cipher cannot be used.
     * @throws { BusinessException } 2300060 - Invalid SSL peer certificate or SSH remote key.
     * @throws { BusinessException } 2300061 - Invalid HTTP encoding format.
     * @throws { BusinessException } 2300063 - Maximum file size exceeded.
     * @throws { BusinessException } 2300070 - Remote disk full.
     * @throws { BusinessException } 2300073 - Remote file already exists.
     * @throws { BusinessException } 2300077 - The SSL CA certificate does not exist or is inaccessible.
     * @throws { BusinessException } 2300078 - Remote file not found.
     * @throws { BusinessException } 2300094 - Authentication error.
     * @throws { BusinessException } 2300997 - Cleartext traffic not permitted.
     * @throws { BusinessException } 2300998 - It is not allowed to access this domain.
     * @throws { BusinessException } 2300999 - Internal error.
     */
    @!APILevel[
        since: "22",
        permission: "ohos.permission.INTERNET",
        syscap: "SystemCapability.Communication.NetStack",
        throwexception: true
    ]
    public func request(url: String, options: HttpRequestOptions, callback: AsyncCallback<HttpResponse>): Unit

    /**
     * Initiates an HTTP request to a given URL.
     * @param { String } url - URL for initiating an HTTP request.
     * @param { AsyncCallback<HttpResponse> } callback - the callback of request.
     * @throws { BusinessException } 201 - Permission denied.
     * @throws { BusinessException } 2300001 - Unsupported protocol.
     * @throws { BusinessException } 2300003 - Invalid URL format or missing URL.
     * @throws { BusinessException } 2300005 - Failed to resolve the proxy name.
     * @throws { BusinessException } 2300006 - Failed to resolve the host name.
     * @throws { BusinessException } 2300007 - Failed to connect to the server.
     * @throws { BusinessException } 2300008 - Invalid server response.
     * @throws { BusinessException } 2300009 - Access to the remote resource denied.
     * @throws { BusinessException } 2300016 - Error in the HTTP2 framing layer.
     * @throws { BusinessException } 2300018 - Transferred a partial file.
     * @throws { BusinessException } 2300023 - Failed to write the received data to the disk or application.
     * @throws { BusinessException } 2300025 - Upload failed.
     * @throws { BusinessException } 2300026 - Failed to open or read local data from the file or application.
     * @throws { BusinessException } 2300027 - Out of memory.
     * @throws { BusinessException } 2300028 - Operation timeout.
     * @throws { BusinessException } 2300047 - The number of redirections reaches the maximum allowed.
     * @throws { BusinessException } 2300052 - The server returned nothing (no header or data).
     * @throws { BusinessException } 2300055 - Failed to send data to the peer.
     * @throws { BusinessException } 2300056 - Failed to receive data from the peer.
     * @throws { BusinessException } 2300058 - Local SSL certificate error.
     * @throws { BusinessException } 2300059 - The specified SSL cipher cannot be used.
     * @throws { BusinessException } 2300060 - Invalid SSL peer certificate or SSH remote key.
     * @throws { BusinessException } 2300061 - Invalid HTTP encoding format.
     * @throws { BusinessException } 2300063 - Maximum file size exceeded.
     * @throws { BusinessException } 2300070 - Remote disk full.
     * @throws { BusinessException } 2300073 - Remote file already exists.
     * @throws { BusinessException } 2300077 - The SSL CA certificate does not exist or is inaccessible.
     * @throws { BusinessException } 2300078 - Remote file not found.
     * @throws { BusinessException } 2300094 - Authentication error.
     * @throws { BusinessException } 2300997 - Cleartext traffic not permitted.
     * @throws { BusinessException } 2300998 - It is not allowed to access this domain.
     * @throws { BusinessException } 2300999 - Internal error.
     */
    @!APILevel[
        since: "22",
        permission: "ohos.permission.INTERNET",
        syscap: "SystemCapability.Communication.NetStack",
        throwexception: true
    ]
    public func request(url: String, callback: AsyncCallback<HttpResponse>): Unit

    /**
     * Destroys an HTTP request.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.NetStack"
    ]
    public func destroy(): Unit

    /**
     * Initiates an HTTP request to a given URL, applicable to scenarios where http response supports streaming.
     * @param { String } url - URL for initiating an HTTP request.
     * @param { HttpRequestOptions } options - Optional parameters HttpRequestOptions.
     * @param { AsyncCallback<UInt32> } callback - the callback of requestInStream.
     * @throws { BusinessException } 201 - Permission denied.
     * @throws { BusinessException } 2300001 - Unsupported protocol.
     * @throws { BusinessException } 2300003 - Invalid URL format or missing URL.
     * @throws { BusinessException } 2300005 - Failed to resolve the proxy name.
     * @throws { BusinessException } 2300006 - Failed to resolve the host name.
     * @throws { BusinessException } 2300007 - Failed to connect to the server.
     * @throws { BusinessException } 2300008 - Invalid server response.
     * @throws { BusinessException } 2300009 - Access to the remote resource denied.
     * @throws { BusinessException } 2300016 - Error in the HTTP2 framing layer.
     * @throws { BusinessException } 2300018 - Transferred a partial file.
     * @throws { BusinessException } 2300023 - Failed to write the received data to the disk or application.
     * @throws { BusinessException } 2300025 - Upload failed.
     * @throws { BusinessException } 2300026 - Failed to open or read local data from the file or application.
     * @throws { BusinessException } 2300027 - Out of memory.
     * @throws { BusinessException } 2300028 - Operation timeout.
     * @throws { BusinessException } 2300047 - The number of redirections reaches the maximum allowed.
     * @throws { BusinessException } 2300052 - The server returned nothing (no header or data).
     * @throws { BusinessException } 2300055 - Failed to send data to the peer.
     * @throws { BusinessException } 2300056 - Failed to receive data from the peer.
     * @throws { BusinessException } 2300058 - Local SSL certificate error.
     * @throws { BusinessException } 2300059 - The specified SSL cipher cannot be used.
     * @throws { BusinessException } 2300060 - Invalid SSL peer certificate or SSH remote key.
     * @throws { BusinessException } 2300061 - Invalid HTTP encoding format.
     * @throws { BusinessException } 2300063 - Maximum file size exceeded.
     * @throws { BusinessException } 2300070 - Remote disk full.
     * @throws { BusinessException } 2300073 - Remote file already exists.
     * @throws { BusinessException } 2300077 - The SSL CA certificate does not exist or is inaccessible.
     * @throws { BusinessException } 2300078 - Remote file not found.
     * @throws { BusinessException } 2300094 - Authentication error.
     * @throws { BusinessException } 2300997 - Cleartext traffic not permitted.
     * @throws { BusinessException } 2300998 - It is not allowed to access this domain.
     * @throws { BusinessException } 2300999 - Internal error.
     */
    @!APILevel[
        since: "22",
        permission: "ohos.permission.INTERNET",
        syscap: "SystemCapability.Communication.NetStack",
        throwexception: true
    ]
    public func requestInStream(url: String, options: HttpRequestOptions, callback: AsyncCallback<UInt32>): Unit

    /**
     * Initiates an HTTP request to a given URL, applicable to scenarios where http response supports streaming.
     * @param { String } url - URL for initiating an HTTP request.
     * @param { AsyncCallback<UInt32> } callback - Returns the callback of requestInStream ResponseCode,
     *     should use on_headersReceive and on_dataReceive to get http response.
     * @throws { BusinessException } 201 - Permission denied.
     * @throws { BusinessException } 2300001 - Unsupported protocol.
     * @throws { BusinessException } 2300003 - Invalid URL format or missing URL.
     * @throws { BusinessException } 2300005 - Failed to resolve the proxy name.
     * @throws { BusinessException } 2300006 - Failed to resolve the host name.
     * @throws { BusinessException } 2300007 - Failed to connect to the server.
     * @throws { BusinessException } 2300008 - Invalid server response.
     * @throws { BusinessException } 2300009 - Access to the remote resource denied.
     * @throws { BusinessException } 2300016 - Error in the HTTP2 framing layer.
     * @throws { BusinessException } 2300018 - Transferred a partial file.
     * @throws { BusinessException } 2300023 - Failed to write the received data to the disk or application.
     * @throws { BusinessException } 2300025 - Upload failed.
     * @throws { BusinessException } 2300026 - Failed to open or read local data from the file or application.
     * @throws { BusinessException } 2300027 - Out of memory.
     * @throws { BusinessException } 2300028 - Operation timeout.
     * @throws { BusinessException } 2300047 - The number of redirections reaches the maximum allowed.
     * @throws { BusinessException } 2300052 - The server returned nothing (no header or data).
     * @throws { BusinessException } 2300055 - Failed to send data to the peer.
     * @throws { BusinessException } 2300056 - Failed to receive data from the peer.
     * @throws { BusinessException } 2300058 - Local SSL certificate error.
     * @throws { BusinessException } 2300059 - The specified SSL cipher cannot be used.
     * @throws { BusinessException } 2300060 - Invalid SSL peer certificate or SSH remote key.
     * @throws { BusinessException } 2300061 - Invalid HTTP encoding format.
     * @throws { BusinessException } 2300063 - Maximum file size exceeded.
     * @throws { BusinessException } 2300070 - Remote disk full.
     * @throws { BusinessException } 2300073 - Remote file already exists.
     * @throws { BusinessException } 2300077 - The SSL CA certificate does not exist or is inaccessible.
     * @throws { BusinessException } 2300078 - Remote file not found.
     * @throws { BusinessException } 2300094 - Authentication error.
     * @throws { BusinessException } 2300997 - Cleartext traffic not permitted.
     * @throws { BusinessException } 2300998 - It is not allowed to access this domain.
     * @throws { BusinessException } 2300999 - Internal error.
     */
    @!APILevel[
        since: "22",
        permission: "ohos.permission.INTERNET",
        syscap: "SystemCapability.Communication.NetStack",
        throwexception: true
    ]
    public func requestInStream(url: String, callback: AsyncCallback<UInt32>): Unit

    /**
     * Registers an observer for HTTP Response Header events.
     * @param { HttpRequestEvent } event - Indicates Event type.
     * @param { Callback1Argument<HashMap<String, String>> } callback - the callback used to return the result.
     * @throws { BusinessException } 2100001 - Invalid parameter value.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.NetStack",
        throwexception: true
    ]
    public func on(event: HttpRequestEvent, callback: Callback1Argument<HashMap<String, String>>): Unit

    /**
     * Registers a one-time observer for HTTP Response Header events.
     * @param { HttpRequestEvent } event - Indicates Event type.
     * @param { Callback1Argument<HashMap<String, String>> } callback - the callback used to return the result.
     * @throws { BusinessException } 2100001 - Invalid parameter value.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.NetStack",
        throwexception: true
    ]
    public func once(event: HttpRequestEvent, callback: Callback1Argument<HashMap<String, String>>): Unit

    /**
     * Registers an observer for receiving HTTP Response data events continuously.
     * @param { HttpRequestEvent } event - Indicates Event type.
     * @param { Callback1Argument<Array<Byte>> } callback - the callback used to return the result.
     * @throws { BusinessException } 2100001 - Invalid parameter value.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.NetStack",
        throwexception: true
    ]
    public func on(event: HttpRequestEvent, callback: Callback1Argument<Array<Byte>>): Unit

    /**
     * Registers an observer for receiving HTTP Response data ends events.
     * @param { HttpRequestEvent } event - Indicates Event type.
     * @param { Callback0Argument } callback - the callback used to return the result.
     * @throws { BusinessException } 2100001 - Invalid parameter value.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.NetStack",
        throwexception: true
    ]
    public func on(event: HttpRequestEvent, callback: Callback0Argument): Unit

    /**
     * Registers an observer for progress of receiving HTTP Response data events.
     * @param { HttpRequestEvent } event - Indicates Event type.
     * @param { Callback1Argument<DataReceiveProgressInfo> } callback - the callback used to return the result.
     * @throws { BusinessException } 2100001 - Invalid parameter value.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.NetStack",
        throwexception: true
    ]
    public func on(event: HttpRequestEvent, callback: Callback1Argument<DataReceiveProgressInfo>): Unit

    /**
     * Registers an observer for progress of sendSize HTTP Response data events.
     * @param { HttpRequestEvent } event - Indicates Event type.
     * @param { Callback1Argument<DataSendProgressInfo> } callback - the callback of on.
     * @throws { BusinessException } 2100001 - Invalid parameter value.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.NetStack",
        throwexception: true
    ]
    public func on(event: HttpRequestEvent, callback: Callback1Argument<DataSendProgressInfo>): Unit

    /**
     * Unregisters the observer for HttpRequest.
     * @param { HttpRequestEvent } event - Indicates Event type.
     * @param { ?CallbackObject } [callback] - the callback used to return the result.
     * @throws { BusinessException } 2100001 - Invalid parameter value.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.NetStack",
        throwexception: true
    ]
    public func off(event: HttpRequestEvent, callback!: ?CallbackObject = None): Unit
}

/**
 * Defines an object that stores the response to an HTTP request.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Communication.NetStack"
]
public class HttpResponseCache {
    /**
     * Writes data in the cache to the file system so that all the cached data can be accessed in the next HTTP request.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.NetStack",
        workerthread: true
    ]
    public func flush(): Unit

    /**
     * Disables a cache and deletes the data in it.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.NetStack",
        workerthread: true
    ]
    public func delete(): Unit
}

/**
 * HTTP request event type.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Communication.NetStack"
]
public enum HttpRequestEvent {
    
    /**
     * HeadersReceive enum value.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.NetStack"
    ]
    HeadersReceive
    | 
    
    /**
     * DataReceive enum value.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.NetStack"
    ]
    DataReceive
    | 
    
    /**
     * DataEnd enum value.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.NetStack"
    ]
    DataEnd
    | 
    
    /**
     * DataReceiveProgress enum value.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.NetStack"
    ]
    DataReceiveProgress
    | 

    /**
     * DataSendProgress enum value.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.NetStack"
    ]
    DataSendProgress
    | ...
}


extend HttpRequestEvent <: Equatable<HttpRequestEvent> {
    
    /**
     * Compares this HttpRequestEvent with another for equality.
     * @param { HttpRequestEvent } other - The HttpRequestEvent to compare with.
     * @returns { Bool } True if both modes are equal, false otherwise.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.NetStack"
    ]
    public operator func ==(other: HttpRequestEvent): Bool
    
    /**
     * Compares this HttpRequestEvent with another for inequality.
     * @param { HttpRequestEvent } other - The HttpRequestEvent to compare with.
     * @returns { Bool } True if both modes are not equal, false otherwise.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.NetStack"
    ]
    public operator func !=(other: HttpRequestEvent): Bool
}


extend HttpRequestEvent <: Hashable {
    
    /**
     * Returns a hash code value for this HttpRequestEvent.
     * @returns { Int64 } A hash code value for this .
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.NetStack"
    ]
    public func hashCode(): Int64
}

/**
 * Defines an HTTP request method.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Communication.NetStack"
]
public enum RequestMethod {
    /**
     * OPTIONS method.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.NetStack"
    ]
    Options
    | 
    /**
     * GET method.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.NetStack"
    ]
    Get
    | 
    /**
     * HEAD method.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.NetStack"
    ]
    Head
    | 
    /**
     * POST method.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.NetStack"
    ]
    Post
    | 
    /**
     * PUT method.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.NetStack"
    ]
    Put
    | 
    /**
     * DELETE method.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.NetStack"
    ]
    Delete
    | 
    /**
     * TRACE method.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.NetStack"
    ]
    Trace
    | 
    /**
     * CONNECT method.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.NetStack"
    ]
    Connect
    | ...
}

/**
 * Supported protocols.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Communication.NetStack"
]
public enum HttpProtocol {
    /**
     * Protocol http1.1
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.NetStack"
    ]
    Http1_1
    | 
    /**
     * Protocol http2
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.NetStack"
    ]
    Http2
    | 
    /**
     * Protocol http3 for https only.
     * Cause error if using http only or not supporting http3 on this device.
     * Fallback to http2 or http1.1 if needed.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.NetStack"
    ]
    Http3
    | ...
}

/**
 * Indicates the type of the HTTP data.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Communication.NetStack"
]
public enum HttpDataType {
    /**
     * The returned type is string.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.NetStack"
    ]
    StringValue
    | 
    /**
     * The returned type is ArrayBuffer.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.NetStack"
    ]
    ArrayBuffer
    | ...
}

/**
 * Indicates the form of http data.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Communication.NetStack"
]
public enum HttpData {
    /**
     * String form.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.NetStack"
    ] 
    StringData(String)
    | 
    /**
     * Byte array form.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.NetStack"
    ] 
    ArrayData(Array<Byte>)
    | ...
}

/**
 * Enum for proxy using
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Communication.NetStack"
]
public enum UsingProxy {
    /**
     * not use HttpProxy
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.NetStack"
    ]
    NotUse
    | 
    /**
     * use default HttpProxy
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.NetStack"
    ]
    UseDefault
    | 
    /**
     * use HttpProxy
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.NetStack"
    ] 
    UseSpecified(HttpProxy)
    | ...
}

/**
 * Enum for certificate types
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Communication.NetStack"
]
public enum CertType {
    /**
     * PEM format certificate
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.NetStack"
    ]
    Pem
    | 
    /**
     * DER format certificate
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.NetStack"
    ]
    Der
    | 
    /**
     * P12 format certificate
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.NetStack"
    ]
    P12
    | ...
}

/**
 * Specifies the type and value range of the optional parameters in the HTTP request.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Communication.NetStack"
]
public class HttpRequestOptions {
    /**
     * Request method,default is GET.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.NetStack"
    ]
    public var method: RequestMethod

    /**
     * Additional data of the request.
     * extraData can be a string or byte array.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.NetStack"
    ]
    public var extraData: HttpData

    /**
     * Data type to be returned. If this parameter is set, the system preferentially returns the specified type.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.NetStack"
    ]
    public var expectDataType: ?HttpDataType

    /**
     * default is true
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.NetStack"
    ]
    public var usingCache: Bool

    /**
     * [1, 1000], default is 1.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.NetStack"
    ]
    public var priority: UInt32

    /**
     * HTTP request header. default is 'content-type': 'application/json'
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.NetStack"
    ]
    public var header: HashMap<String, String>

    /**
     * Read timeout period. The default value is 60,000, in ms.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.NetStack"
    ]
    public var readTimeout: UInt32

    /**
     * Connection timeout interval. The default value is 60,000, in ms.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.NetStack"
    ]
    public var connectTimeout: UInt32

    /**
     * default is automatically specified by the system.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.NetStack"
    ]
    public var usingProtocol: ?HttpProtocol

    /**
     * If this parameter is set as NotUse, the system will not use proxy.
     * If this parameter is set as UseDefault, the system will use default proxy.
     * If this parameter is set as UseSpecified, the system will use the specified HttpProxy.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.NetStack"
    ]
    public var usingProxy: UsingProxy

    /**
     * If this parameter is set, the system will use ca path specified by user, or else use preset ca by the system.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.NetStack"
    ]
    public var caPath: String

    /**
     * Used to set to uploading or downloading the start bytes. The default value is 0.
     * HTTP standard (RFC 7233 section 3.1) allows servers to ignore range requests.
     * For HTTP PUT uploads this option should not be used, since it may conflict with other options.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.NetStack"
    ]
    public var resumeFrom: Int64

    /**
     * Used to set to uploading or downloading the end bytes. Translate to the end if not set.
     * HTTP standard (RFC 7233 section 3.1) allows servers to ignore range requests.
     * For HTTP PUT uploads this option should not be used, since it may conflict with other options.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.NetStack"
    ]
    public var resumeTo: Int64

    /**
     * Support the application to pass in client certificates, allowing the server to verify the client's identity.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.NetStack"
    ]
    public var clientCert: ClientCert

    /**
     * If this parameter is set, incoming DNS resolution server URL for the DoH server to use for name resolving.
     * The parameter must be URL-encoded in the following format: "https://host:port/path".
     * It MUST specify an HTTPS URL.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.NetStack"
    ]
    public var dnsOverHttps: String

    /**
     * If this parameter is set, use the specified DNS server for DNS resolution.
     * Multiple DNS resolution servers can be set up, with a maximum of 3 servers.
     * Only take the first three if there are more than three.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.NetStack"
    ]
    public var dnsServers: Array<String>

    /**
     * The maximum limit of the response body. The default value is 5 * 1024 * 1024, in Byte.
     * The maximum value is 100 * 1024 *1024, in Byte.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.NetStack"
    ]
    public var maxLimit: UInt32

    /**
     * The data fields which is supported by the HTTP protocol to post
     * forms and by the SMTP and IMAP protocols to provide
     * the email data to send/upload.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.NetStack"
    ]
    public var multiFormDataList: Array<MultiFormData>

    /**
     * HttpRequestOptions constructor
     *
     * @param { RequestMethod } [method] - Indicates the request method,default is GET.
     * @param { HttpData } [extraData] - Indicates the additional data of the request.
     * @param { HttpDataType } [expectDataType] - Indicates the data type to be returned.
     * @param { Bool } [usingCache] - Indicates the default is true.
     * @param { UInt32 } [priority] - Indicates the [1, 1000], default is 1.
     * @param { HashMap<String, String> } [header] - Indicates the HTTP request header. default is 'content-type': 'application/json'.
     * @param { UInt32 } [readTimeout] - Indicates the read timeout period. The default value is 60,000, in ms.
     * @param { UInt32 } [connectTimeout] - Indicates the connection timeout interval. The default value is 60,000, in ms.
     * @param { HttpProtocol } [usingProtocol] - Indicates the default is automatically specified by the system.
     * @param { UsingProxy } [usingProxy] - Indicates this parameter is set as UseDefault, the system will use default proxy.
     * @param { String } [caPath] - Indicates the system will use ca path specified by user, or else use preset ca by the system.
     * @param { Int64 } [resumeFrom] - Indicates the used to set to uploading or downloading the start bytes. The default value is 0.
     * @param { Int64 } [resumeTo] - Indicates the used to set to uploading or downloading the end bytes.
     * @param { ClientCert } [clientCert] - Indicates the support the application to pass in client certificates, allowing the server to verify the client's identity.
     * @param { String } [dnsOverHttps] - Indicates the incoming DNS resolution server URL for the DoH server to use for name resolving.
     * @param { Array<String> } [dnsServers] - Indicates use the specified DNS server for DNS resolution. 
     *                                         Multiple DNS resolution servers can be set up, with a maximum of 3 servers.
     *                                         Only take the first three if there are more than three.
     * @param { UInt32 } [maxLimit] - Indicates the maximum limit of the response body. The default value is 5 * 1024 * 1024, in Byte.
     *                                the maximum value is 100 * 1024 *1024, in Byte.
     * @param { Array<MultiFormData> } [multiFormDataList] - Indicates the data fields which is supported by the HTTP protocol to post
     *                                the maximum value is 100 * 1024 *1024, in Byte.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.NetStack"
    ]
    public init(method!: RequestMethod = RequestMethod.Get, extraData!: HttpData = HttpData.StringData(""),
        expectDataType!: ?HttpDataType = None, usingCache!: Bool = true, priority!: UInt32 = 1,
        header!: HashMap<String, String> = HashMap<String, String>(), readTimeout!: UInt32 = 60000,
        connectTimeout!: UInt32 = 60000, usingProtocol!: ?HttpProtocol = None,
        usingProxy!: UsingProxy = UsingProxy.UseDefault, caPath!: String = "", resumeFrom!: Int64 = 0,
        resumeTo!: Int64 = 0, clientCert!: ClientCert = ClientCert("", ""), dnsOverHttps!: String = "",
        dnsServers!: Array<String> = Array<String>(), maxLimit!: UInt32 = 5 * 1024 * 1024,
        multiFormDataList!: Array<MultiFormData> = Array<MultiFormData>())
}

/**
 * Defines the response to an HTTP request.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Communication.NetStack"
]
public class HttpResponse {
    /**
     * result can be a string or byte array.
     * If expectDataType is set, the system preferentially returns this parameter.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.NetStack"
    ]
    public var result: HttpData

    /**
     * If the resultType is string, you can get result directly.
     * If the resultType is ArrayBuffer, you can use ArrayBuffer to create the binary objects.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.NetStack"
    ]
    public var resultType: HttpDataType

    /**
     * Server status code.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.NetStack"
    ]
    public var responseCode: UInt32

    /**
     * All headers in the response from the server.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.NetStack"
    ]
    public var header: HashMap<String, String>

    /**
     * Cookies returned by the server.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.NetStack"
    ]
    public var cookies: String

    /**
     * The time taken of various stages of HTTP request.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.NetStack"
    ]
    public var performanceTiming: PerformanceTiming
}

/**
 * Counting the time taken of various stages of HTTP request.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Communication.NetStack"
]
public class PerformanceTiming {
    /**
     * Time taken from startup to DNS resolution completion, in milliseconds.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.NetStack"
    ]
    public var dnsTiming: Float64

    /**
     * Time taken from startup to TCP connection completion, in milliseconds.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.NetStack"
    ]
    public var tcpTiming: Float64

    /**
     * Time taken from startup to TLS connection completion, in milliseconds.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.NetStack"
    ]
    public var tlsTiming: Float64

    /**
     * Time taken from startup to start sending the first byte, in milliseconds.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.NetStack"
    ]
    public var firstSendTiming: Float64

    /**
     * Time taken from startup to receiving the first byte, in milliseconds.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.NetStack"
    ]
    public var firstReceiveTiming: Float64

    /**
     * Time taken from startup to the completion of the request, in milliseconds.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.NetStack"
    ]
    public var totalFinishTiming: Float64

    /**
     * Time taken from startup to completion of all redirection steps, in milliseconds.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.NetStack"
    ]
    public var redirectTiming: Float64

    /**
     * Time taken from HTTP request to header completion, in milliseconds.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.NetStack"
    ]
    public var responseHeaderTiming: Float64

    /**
     * Time taken from HTTP Request to body completion, in milliseconds.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.NetStack"
    ]
    public var responseBodyTiming: Float64

    /**
     * Time taken from HTTP Request to callback to the application, in milliseconds.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.NetStack"
    ]
    public var totalTiming: Float64
}

/**
 * This interface is used to obtain the progress information of file upload or download.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Communication.NetStack"
]
public class DataReceiveProgressInfo {
    /**
     * Number of data bytes received.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.NetStack"
    ]
    public var receiveSize: Int64

    /**
     * Total number of bytes to receive.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.NetStack"
    ]
    public var totalSize: Int64
}

/**
 * This interface is used to monitor the progress of sending data.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Communication.NetStack"
]
public class DataSendProgressInfo {
    /**
     * Used to specify the data size to be sent.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.NetStack"
    ]
    public var sendSize: Int64

    /**
     * Total number of bytes to receive.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.NetStack"
    ]
    public var totalSize: Int64
}

/**
 * The clientCert field of the client certificate, which includes 4 attributes:
 * client certificate (cert), client certificate type (certType), certificate private key (key), and passphrase
 * (keyPassword).
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Communication.NetStack"
]
public class ClientCert {
    /**
     * The path to the client certificate file.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.NetStack"
    ]
    public var certPath: String

    /**
     * The path of the client certificate private key file.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.NetStack"
    ]
    public var keyPath: String

    /**
     * The type of the client certificate.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.NetStack"
    ]
    public var certType: CertType

    /**
     * Password required to use the client certificate private key.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.NetStack"
    ]
    public var keyPassword: String

    /**
     * ClientCert constructor
     *
     * @param { String } certPath - Indicates the path to the client certificate file.
     * @param { String } keyPath - Indicates the path of the client certificate private key file.
     * @param { CertType } [certType] - Indicates the type of the client certificate.
     * @param { String } [keyPassword] - Indicates the password required to use the client certificate private key.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.NetStack"
    ]
    public init(certPath: String, keyPath: String, certType!: CertType = CertType.Pem, keyPassword!: String = "")
}

/**
 * Represents the properties of a form object.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Communication.NetStack"
]
public class MultiFormData {
    /**
     * MIME name for the data field.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.NetStack"
    ]
    public var name: String

    /**
     * Content type of the data field.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.NetStack"
    ]
    public var contentType: String

    /**
     * Remote file name for the data field.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.NetStack"
    ]
    public var remoteFileName: String

    /**
     * This parameter sets a mime part's body content from memory data.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.NetStack"
    ]
    public var data: HttpData

    /**
     * This parameter sets a mime part's body content from the file's contents.
     * This is an alternative to curl_mime_data for setting data to a mime part.
     * If data is empty, filePath must be set.
     * If data has a value, filePath does not take effect.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.NetStack"
    ]
    public var filePath: String

    /**
     * MultiFormData constructor
     *
     * @param { String } name - MIME name for the data field.
     * @param { String } contentType - Content type of the data field.
     * @param { String } [remoteFileName] - Remote file name for the data field.
     * @param { HttpData } [data] - This parameter sets a mime part's body content from memory data.
     * @param { String } [filePath] - Indicates the parameter sets a mime part's body content from the file's contents.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Communication.NetStack"
    ]
    public init(name: String, contentType: String, remoteFileName!: String = "",
        data!: HttpData = HttpData.StringData(""), filePath!: String = "")
}
