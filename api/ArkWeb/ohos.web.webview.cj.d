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

package ohos.web.webview

import ohos.base.ResourceStr
import ohos.business_exception.AsyncCallback
import ohos.labels.*
import ohos.labels.APILevel
import ohos.multimedia.image.*
import ohos.multimedia.image.PixelMap
import std.collection.*

/**
 * Provides back and forward history list information method. related to HistoryItem.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Web.Webview.Core"
]
public class BackForwardList {
    /**
     * Current index in BackForwardList.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public prop currentIndex: Int32

    /**
     * Number of indexes in the history stack. The maximum value is 50.
     * If this value is exceeded, the earliset index will be overwritten.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public prop size: Int32

    /**
     * Get history entry at given index.
     *
     * @param { Int32 } index - Index of back forward list entry.
     * @returns { HistoryItem } HistoryItem at given index in back forward list.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Web.Webview.Core",
        throwexception: true
    ]
    public func getItemAtIndex(index: Int32): HistoryItem
}

/**
 * Provides methods for managing the web cookies.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Web.Webview.Core"
]
public class WebCookieManager {
    /**
     * Gets all cookies for the given URL.
     *
     * @param { String } url - The URL for which the cookies are requested.
     * @param { Bool } [incognito] - true gets all cookies for the given URL
     *                                in incognito mode; false otherwise.
     * @returns { String } Resolved after the cookies of given URL have been gotten.
     * @throws { BusinessException } 17100002 - URL error. No valid cookie found for the specified URL.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Web.Webview.Core",
        throwexception: true
    ]
    public static func fetchCookie(url: String, incognito!: Bool = false): String

    /**
     * Set a single cookie (key-value pair) for the given URL.
     *
     * @param { String } url - The URL for which the cookie is to be set.
     * @param { String } value - The cookie as a string, using the format of the 'Set-Cookie' HTTP response header.
     * @param { Bool } [incognito] - true set a single cookie (key-value pair) for the given URL
     *                                in incognito mode; false otherwise.
     * @throws { BusinessException } 17100002 - URL error. No valid cookie found for the specified URL.
     * @throws { BusinessException } 17100005 - The provided cookie value is invalid. It must follow the format specified 
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Web.Webview.Core",
        throwexception: true
    ]
    public static func configCookie(url: String, value: String, incognito!: Bool = false): Unit

    /**
     * Set whether the instance should send and accept cookies.
     * By default this is set to be true.
     *
     * @param { Bool } accept - Whether the instance should send and accept cookies.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public static func setAcceptCookiesEnabled(accept: Bool): Unit

    /**
     * Get whether the instance can send and accept cookies.
     *
     * @returns { Bool } True if the instance can send and accept cookies else false.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public static func isCookieAllowed(): Bool

    /**
     * Set whether the instance should send and accept thirdparty cookies.
     * By default this is set to be false.
     *
     * @param { Bool } accept - Whether the instance should send and accept thirdparty cookies.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public static func setAcceptThirdPartyCookieEnabled(accept: Bool): Unit

    /**
     * Get whether the instance can send and accept thirdparty cookies.
     *
     * @returns { Bool } True if the instance can send and accept thirdparty cookies else false.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public static func isThirdPartyCookieAllowed(): Bool

    /**
     * Check whether exists any cookies.
     *
     * @param { Bool } [incognito] - true check whether exists any cookies.
     *                                in incognito mode; false otherwise.  The default value is false.
     * @returns { Bool } True if exists more than one cookie else false;
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public static func hasCookie(incognito!: Bool = false): Bool

    /**
     * Remove all cookies.
     *
     * @param { Bool } [incognito] - true remove all cookies in incognito mode;
     *                               false otherwise. The default value is false.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public static func clearAllCookies(incognito!: Bool = false): Unit

    /**
     * Delete the session cookies.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public static func clearSessionCookie(): Unit
}

/**
 * Defines the security level for the page.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Web.Webview.Core"
]
public enum SecurityLevel {
    
    /**
     * Unable to determine whether it is safe or not, the non-http/https protocol used.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    NoneLevel
    | 
    
    /**
     * Indicates the HTTPS protocol used by the page and the authentication is successful.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    Secure
    | 
    
    /**
     * The page is insecure. For example, the HTTP protocol is used or the HTTPS protocol
     * is used but use an legacy TLS version.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    Warning
    | 
    
    /**
     * Attempted HTTPS and failed, the authentication is failed.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    Dangerous
    | ...
}


extend SecurityLevel <: ToString {
    
    /**
     * Converts the SecurityLevel to its string representation.
     * @returns { String } A string representation of the SecurityLevel.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public func toString(): String
}


extend SecurityLevel <: Equatable<SecurityLevel> {
    
    /**
     * Compares this SecurityLevel with another for equality.
     * @param { SecurityLevel } other - The SecurityLevel to compare with.
     * @returns { Bool } True if both modes are equal, false otherwise.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public operator func ==(other: SecurityLevel): Bool
    
    /**
     * Compares this SecurityLevel with another for inequality.
     * @param { SecurityLevel } other - The SecurityLevel to compare with.
     * @returns { Bool } True if both modes are not equal, false otherwise.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public operator func !=(other: SecurityLevel): Bool
}

/**
 * Enum type supplied to getHitTest for indicating the cursor node HitTest.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Web.Webview.Core"
]
public enum WebHitTestType {
    
    /**
     * The edit text.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    EditText
    | 
    
    /**
     * The email address.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    Email
    | 
    
    /**
     * Other unknown HitTest.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    Unknown
    | ...
}


extend WebHitTestType <: ToString {
    
    /**
     * Converts the WebHitTestType to its string representation.
     * @returns { String } A string representation of the WebHitTestType.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public func toString(): String
}


extend WebHitTestType <: Equatable<WebHitTestType> {
    
    /**
     * Compares this WebHitTestType with another for equality.
     * @param { WebHitTestType } other - The WebHitTestType to compare with.
     * @returns { Bool } True if both modes are equal, false otherwise.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public operator func ==(other: WebHitTestType): Bool
    
    /**
     * Compares this WebHitTestType with another for inequality.
     * @param { WebHitTestType } other - The WebHitTestType to compare with.
     * @returns { Bool } True if both modes are not equal, false otherwise.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public operator func !=(other: WebHitTestType): Bool
}

/**
 * Defines the Web's request/response header.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Web.Webview.Core"
]
public class WebHeader {
    /**
     * Gets the key of the request/response header.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public var headerKey: String

    /**
     * Gets the value of the request/response header.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public var headerValue: String

    /**
     * WebHeader constructor.
     *
     * @param  { String } headerKey - The key of the request/response header.
     * @param  { String } headerValue - The value of the request/response header.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public init(headerKey: String, headerValue: String)
}

/**
 * Provides element information of the click area. related to getLastHitTest method.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Web.Webview.Core"
]
public class HitTestValue {
    /**
     * Get the hit test type.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public var hitTestType: WebHitTestType

    /**
     * Get the hit test extra data.
     * If the clicked area is an image or a link, the additional parameter information is it's URL address.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public var extra: String
}

/**
 * Provides information for history item in BackForwardList.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Web.Webview.Core"
]
public class HistoryItem {
    /**
     * Pixelmap of icon.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public var icon: ?PixelMap

    /**
     * Url of this history item.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public var historyUrl: String

    /**
     * Original request url of this history item.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public var historyRawUrl: String

    /**
     * Title of this history item.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public var title: String
}

/**
 * WebviewController can control various behaviors of Web components
 * (including page navigation, declaring cycle state, JavaScript interaction and so on).
 * A WebviewController object can only control one Web component,
 * and methods on the Webviewcontroller (except static methods) can only be called
 * after the web component is bound to the WebviewController.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Web.Webview.Core"
]
public class WebviewController {
    /**
     * A constructor used to create a WebviewController object.
     *
     * @param { ?String } [webTag] - specified the name of the web component, None by default.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public init(webTag!: ?String = None)

    /**
     * Sets whether to enable web debugging. By default, web debugging is disabled.
     * For details, see Debugging Frontend Pages by Using DevTools.
     * 
     * API Note:
     * Enabling web debugging allows users to check and modify the internal status of the web page,
     * which poses security risks. Therefore, you are advised not to enable this function
     * in the officially released version of the app.
     *
     * @param { Bool } webDebuggingAccess - Sets whether to enable web debugging. true enable web debugging;
     *                                     false disable web debugging. The default value is false.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public static func setWebDebuggingAccess(webDebuggingAccess: Bool): Unit

    /**
     * Enable the ability to check website security risks.
     * Illegal and fraudulent websites are mandatory enabled and can't be disabled by this function.
     *
     * @param { Bool } enable - true enable check the website security risks; false otherwise.
     * @throws { BusinessException } 17100001 - Init error.
     *                           The WebviewController must be associated with a Web component.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Web.Webview.Core",
        throwexception: true
    ]
    public func enableSafeBrowsing(enable: Bool): Unit

    /**
     * Get whether checking website security risks is enabled.
     *
     * @returns { Bool } True if enable the ability to check website security risks else false.
     * @throws { BusinessException } 17100001 - Init error.
     *                           The WebviewController must be associated with a Web component.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Web.Webview.Core",
        throwexception: true
    ]
    public func isSafeBrowsingEnabled(): Bool

    /**
     * Checks whether the web page can go back.
     *
     * @returns { Bool } True if the web page can go back else false.
     * @throws { BusinessException } 17100001 - Init error.
     *                           The WebviewController must be associated with a Web component.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Web.Webview.Core",
        throwexception: true
    ]
    public func canGoBack(): Bool

    /**
     * Checks whether the web page can go back or forward the given number of steps.
     *
     * @param { Int32 } step - The number of steps.
     * @returns { Bool } True if the web page can go back else false.
     * @throws { BusinessException } 17100001 - Init error.
     *                           The WebviewController must be associated with a Web component.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Web.Webview.Core",
        throwexception: true
    ]
    public func accessStep(step: Int32): Bool

    /**
     * Goes forward in the history of the web page.
     *
     * @throws { BusinessException } 17100001 - Init error.
     *                           The WebviewController must be associated with a Web component.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Web.Webview.Core",
        throwexception: true
    ]
    public func goForward(): Unit

    /**
     * Goes back in the history of the web page.
     *
     * @throws { BusinessException } 17100001 - Init error.
     *                           The WebviewController must be associated with a Web component.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Web.Webview.Core",
        throwexception: true
    ]
    public func goBack(): Unit

    /**
     * Clears the history in the Web.
     *
     * @throws { BusinessException } 17100001 - Init error.
     *                           The WebviewController must be associated with a Web component.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Web.Webview.Core",
        throwexception: true
    ]
    public func clearHistory(): Unit

    /**
     * Refreshes the current URL.
     *
     * @throws { BusinessException } 17100001 - Init error.
     *                           The WebviewController must be associated with a Web component.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Web.Webview.Core",
        throwexception: true
    ]
    public func reload(): Unit

    /**
     * Loads the data or URL.
     *
     * @param { T } url - The URL to load. T should implement ResourceStr.
     * @param { Array<WebHeader> } [headers] - Additional HTTP request header for URL.
     * @throws { BusinessException } 17100001 - Init error.
     *                               The WebviewController must be associated with a Web component.
     * @throws { BusinessException } 17100002 - URL error. The webpage corresponding to the URL is invalid, or the URL
     *                               length exceeds 2048.
     * @throws { BusinessException } 17100003 - Invalid resource path or file type.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Web.Webview.Core",
        throwexception: true
    ]
    public func loadUrl<T>(url: T, headers!: Array<WebHeader> = Array<WebHeader>()): Unit where T <: ResourceStr

    /**
     * Gets the type of HitTest.
     *
     * @returns { WebHitTestType } The type of HitTest.
     * @throws { BusinessException } 17100001 - Init error.
     *                           The WebviewController must be associated with a Web component.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Web.Webview.Core",
        throwexception: true
    ]
    public func getHitTest(): WebHitTestType

    /**
     * Stores the current page as a web archive.
     *
     * @param { String } baseName - Where the generated offline webpage is stored, This value cannot be null.
     * @param { Bool } autoName - Decide whether to automatically generate the file name. If false, it is
     *                               stored by the file name of baseName. If true, the file name is
     *                               automatically generated based on the current URL and stored in the file
     *                               directory of baseName.
     * @param { AsyncCallback<String> } callback - called after the web archive has been stored. The parameter
     *                                             will either be the filename under which the file was stored,
     *                                             or empty if storing the file failed.
     * @throws { BusinessException } 17100001 - Init error.
     *                           The WebviewController must be associated with a Web component.
     * @throws { BusinessException } 17100003 - Invalid resource path or file type.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Web.Webview.Core",
        throwexception: true
    ]
    public func storeWebArchive(baseName: String, autoName: Bool, callback: AsyncCallback<String>): Unit

    /**
     * Zooms in or out of this web page. This API is effective only when zoomAccess is true.
     *
     * @param { Float32 } factor - Relative zoom ratio. The value must be greater than 0.
     *                            The value 1 indicates that the page is not zoomed.
     *                            A value smaller than 1 indicates zooming out, and a value greater than 1 indicates zoom-in.
     *                            Value range: (0, 100].
     * @throws { BusinessException } 17100001 - Init error.
     *                           The WebviewController must be associated with a Web component.
     * @throws { BusinessException } 17100004 - Function not enable.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Web.Webview.Core",
        throwexception: true
    ]
    public func zoom(factor: Float32): Unit

    /**
     * Zooms in on this web page by 25%.
     *
     * @throws { BusinessException } 17100001 - Init error.
     *                           The WebviewController must be associated with a Web component.
     * @throws { BusinessException } 17100004 - Function not enable.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Web.Webview.Core",
        throwexception: true
    ]
    public func zoomIn(): Unit

    /**
     * Zooms out of this web page by 20%.
     *
     * @throws { BusinessException } 17100001 - Init error.
     *                           The WebviewController must be associated with a Web component.
     * @throws { BusinessException } 17100004 - Function not enable.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Web.Webview.Core",
        throwexception: true
    ]
    public func zoomOut(): Unit

    /**
     * Get the element information of the currently clicked area.
     *
     * @returns { HitTestValue } Return the element information of the clicked area.
     * @throws { BusinessException } 17100001 - Init error.
     *                           The WebviewController must be associated with a Web component.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Web.Webview.Core",
        throwexception: true
    ]
    public func getHitTestValue(): HitTestValue

    /**
     * Gets the default user agent.
     *
     * @returns { String } Return user agent information.
     * @throws { BusinessException } 17100001 - Init error.
     *                           The WebviewController must be associated with a Web component.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Web.Webview.Core",
        throwexception: true
    ]
    public func getUserAgent(): String

    /**
     * Gets the title of current Web page.
     *
     * @returns { String } Return to File Selector Title.
     * @throws { BusinessException } 17100001 - Init error.
     *                           The WebviewController must be associated with a Web component.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Web.Webview.Core",
        throwexception: true
    ]
    public func getTitle(): String

    /**
     * Obtains the height of this web page.
     *
     * @returns { Int32 } Height of the current web page. Unit: vp.
     * @throws { BusinessException } 17100001 - Init error.
     *                           The WebviewController must be associated with a Web component.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Web.Webview.Core",
        throwexception: true
    ]
    public func getPageHeight(): Int32

    /**
     * Goes forward or back backOrForward in the history of the web page.
     *
     * @param { Int32 } step - Steps to go forward or backward.
     * @throws { BusinessException } 17100001 - Init error.
     *                           The WebviewController must be associated with a Web component.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Web.Webview.Core",
        throwexception: true
    ]
    public func goBackOrForward(step: Int32): Unit

    /**
     * Stops the current load.
     *
     * @throws { BusinessException } 17100001 - Init error.
     *                           The WebviewController must be associated with a Web component.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Web.Webview.Core",
        throwexception: true,
        workerthread: true
    ]
    public func stop(): Unit

    /**
     * Registers the supplied Cangjie functions into this Web component.
     * The functions are registered into all frames of the web page, including all iframes, using the specified name.
     * This allows the methods of the Cangjie functions to be accessed from JavaScript.
     *
     * Registed functions will not appear in JavaScript until the page is next (re)load.
     * To avoid memory leaks, registerJavaScriptProxy must be used together with deleteJavaScriptProxy.
     * To avoid security risks, it is recommended that registerJavaScriptProxy be used with trusted web components.
     *
     * @param { Array<(String) -> String>} funcs - Application side Cangjie functions participating in registration.
     * @param { String } name - The name of the registered Cangjie functions, which is consistent with the
     *                          object name called in the window.
     * @param { Array<String> } methodList - The method of the application side Cangjie functions participating
     *                                       in the registration.
     * @throws { BusinessException } 17100001 - Init error.
     *                           The WebviewController must be associated with a Web component.
     * @throws { BusinessException } 17100015 - New failed, out of memeory.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Web.Webview.Core",
        throwexception: true
    ]
    public func registerJavaScriptProxy(funcs: Array<(String) -> String>, name: String, methodList: Array<String>): Unit

    /**
     * Asynchronously execute JavaScript in the context of the currently displayed page.
     * The result of the script execution will be returned through an asynchronous callback.
     * This method must be used on the UI thread, and the callback will also be invoked on the UI thread.
     * API Note:
     * The state of JavaScript is no longer persisted across navigations like loadUrl.
     * For example, global variables and functions defined before calling loadUrl will not exist in the loaded page.
     * It is recommended that applications use registerJavaScriptProxy to ensure that the JavaScript state can be persisted across page navigations.
     * <p>
     *
     * @param { String } script - JavaScript Script.
     * @param { AsyncCallback<String> } callback - Callbacks execute JavaScript script results.
     * @throws { BusinessException } 17100001 - Init error.
     *                           The WebviewController must be associated with a Web component.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Web.Webview.Core",
        throwexception: true
    ]
    public func runJavaScript(script: String, callback: AsyncCallback<String>): Unit

    /**
     * Gets the url of current Web page.
     *
     * @returns { String } Return the url of the current page.
     * @throws { BusinessException } 17100001 - Init error.
     *                           The WebviewController must be associated with a Web component.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Web.Webview.Core",
        throwexception: true
    ]
    public func getUrl(): String

    /**
     * Scroll the contents of this Webview up by half the view size.
     *
     * @param { Bool } top - Whether to jump to the top of the page, if set to false,
     *                          the page content will scroll up half the size of the viewframe,
     *                          and when set to true, it will jump to the top of the page.
     * @throws { BusinessException } 17100001 - Init error.
     *                           The WebviewController must be associated with a Web component.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Web.Webview.Core",
        throwexception: true
    ]
    public func pageUp(top: Bool): Unit

    /**
     * Scroll the contents of this Webview down by half the view size.
     *
     * @param { Bool } bottom - Whether to jump to the top of the page, if set to false,
     *                             the page content will scroll up half the size of the viewframe,
     *                             and when set to true, it will jump to the top of the page.
     * @throws { BusinessException } 17100001 - Init error.
     *                           The WebviewController must be associated with a Web component.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Web.Webview.Core",
        throwexception: true
    ]
    public func pageDown(bottom: Bool): Unit

    /**
     * Gets the original url of current Web page.
     *
     * @returns { String } Return the original url of the current page.
     * @throws { BusinessException } 17100001 - Init error.
     *                           The WebviewController must be associated with a Web component.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Web.Webview.Core",
        throwexception: true
    ]
    public func getOriginalUrl(): String

    /**
     * Get back forward stack list from current webview.
     *
     * @returns { BackForwardList } Back forward list for current webview.
     * @throws { BusinessException } 17100001 - Init error.
     *                           The WebviewController must be associated with a Web component.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Web.Webview.Core",
        throwexception: true
    ]
    public func getBackForwardEntries(): BackForwardList

    /**
     * Clears the cache in the application. This API will clear the cache for all webviews in the same application.
     *
     * @param { Bool } clearRom - Whether to clear the cache in the ROM and RAM at the same time.
     *                            true means to clear the cache in the ROM and RAM at the same time;
     *                            false means to only clear the cache in the RAM.
     * @throws { BusinessException } 17100001 - Init error.
     *                           The WebviewController must be associated with a Web component.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Web.Webview.Core",
        throwexception: true
    ]
    public func removeCache(clearRom: Bool): Unit

    /**
     * Scroll to the position within specified time.
     *
     * @param { Float32 } x - the x of the position.Unit: vp.
     * @param { Float32 } y - the y of the position.Unit: vp.
     * @param { ?Int32 } [duration] - the scroll animation duration. Unit: millisecond.
     *                              If the value is not passed, or is negative or 0, there is no animation.
     * @throws { BusinessException } 17100001 - Init error.
     *                           The WebviewController must be associated with a Web component.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Web.Webview.Core",
        throwexception: true
    ]
    public func scrollTo(x: Float32, y: Float32, duration!: ?Int32 = None): Unit

    /**
     * Scroll by the delta position.
     *
     * API Note:
     * In nested scroll scenarios, calling scrollBy does not trigger nested scrolling in the parent component.
     *
     * @param { Float32 } deltaX - the delta x of the position.Unit: vp.
     * @param { Float32 } deltaY - the delta y of the position.Unit: vp.
     * @param { ?Int32 } [duration] - the scroll animation duration. Unit: millisecond.
     *                              If the value is not passed, or is negative or 0, there is no animation.
     * @throws { BusinessException } 17100001 - Init error.
     *                           The WebviewController must be associated with a Web component.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Web.Webview.Core",
        throwexception: true
    ]
    public func scrollBy(deltaX: Float32, deltaY: Float32, duration!: ?Int32 = None): Unit

    /**
     * Set custom user agent.
     *
     * @param { String } userAgent - User custom agent information.
     * @throws { BusinessException } 17100001 - Init error.
     *                           The WebviewController must be associated with a Web component.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Web.Webview.Core",
        throwexception: true
    ]
    public func setCustomUserAgent(userAgent: String): Unit

    /**
     * Get custom user agent.
     *
     * @returns { String } Get custom User agent information.
     * @throws { BusinessException } 17100001 - Init error.
     *                           The WebviewController must be associated with a Web component.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Web.Webview.Core",
        throwexception: true
    ]
    public func getCustomUserAgent(): String

    /**
     * Get the security level of the current page.
     *
     * @returns { SecurityLevel } the security level of current page.
     * @throws { BusinessException } 17100001 - Init error.
     *                           The WebviewController must be associated with a Web component.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Web.Webview.Core",
        throwexception: true
    ]
    public func getSecurityLevel(): SecurityLevel

    /**
     * Whether the incognito mode is set.
     *
     * @returns { Bool } The value true indicates that the incognito mode is enabled for Webview.
     * and false indicates the opposite.
     * The default value is false.
     * @throws { BusinessException } 17100001 - Init error.
     *                           The WebviewController must be associated with a Web component.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Web.Webview.Core",
        throwexception: true
    ]
    public func isIncognitoMode(): Bool
}
