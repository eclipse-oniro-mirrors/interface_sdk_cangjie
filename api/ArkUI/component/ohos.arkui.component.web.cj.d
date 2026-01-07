package ohos.arkui.component.web

import ohos.arkui.component.common.*
import ohos.arkui.component.native_struct.*
import ohos.arkui.component.util.*
import ohos.base.*
import ohos.ffi.*
import ohos.labels.APILevel
import ohos.resource.*
import ohos.web.webview.*
import std.collection.ArrayList

/**
 * Defines the triggered function at the begin of web page loading.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Web.Webview.Core"
]
public class OnPageBeginEvent {
    /**
     * The url of page.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public var url: String

    /**
     * Defines OnPageBeginEvent Component instance.
     *
     * @param { String } url - The URL of the page that begins to load.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public init(url: String)
}

/**
 * Defines the triggered function at the end of web page loading.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Web.Webview.Core"
]
public class OnPageEndEvent {
    /**
     * The URL of the page.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public var url: String

    /**
     * Defines OnPageEndEvent Component instance.
     *
     * @param { String } url - The URL of the page that finished loading.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public init(url: String)
}

/**
 * Defines the triggered callback when the resources loading is intercepted.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Web.Webview.Core"
]
public class OnLoadInterceptEvent {
    /**
     * The information of request.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public var data: WebResourceRequest

    /**
     * Defines OnLoadInterceptEvent Component instance.
     *
     * @param { WebResourceRequest } data - The web resource request information.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public init(data: WebResourceRequest)
}

/**
 * Defines the Web's request/response header.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Web.Webview.Core"
]
public class Header {
    /**
     * Gets the key of the request/response header.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public var headerKey: ?String

    /**
     * Gets the value of the request/response header.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public var headerValue: ?String
}

/**
 * Defines the Web resource request.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Web.Webview.Core"
]
public class WebResourceRequest {
    /**
     * Gets request headers.
     *
     * @returns { Array<Header> }
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public func getRequestHeader(): Array<Header>

    /**
     * Gets the request URL.
     *
     * @returns { String }
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public func getRequestUrl(): String

    /**
     * Check whether the request is for getting the main frame.
     *
     * @returns { Bool }
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public func isMainFrame(): Bool

    /**
     * Check whether the request redirects.
     *
     * @returns { Bool }
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public func isRedirect(): Bool

    /**
     * Check whether the request is associated with gesture.
     *
     * @returns { Bool }
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public func isRequestGesture(): Bool

    /**
     * Get request method.
     *
     * @returns { String }
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public func getRequestMethod(): String
}

/**
 * Defines the triggered callback when the host application that web content from the specified origin is
 * attempting to access the resources.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Web.Webview.Core"
]
public class OnPermissionRequestEvent {
    /**
     * Defines the onPermissionRequest callback.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public var request: PermissionRequest

    /**
     * Defines OnPermissionRequestEvent Component instance.
     *
     * @param { PermissionRequest } request - The permission request object.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public init(request: PermissionRequest)
}

/**
 * Implements the PermissionRequest object, related to onPermissionRequest method.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Web.Webview.Core"
]
public class PermissionRequest {
    /**
     * Reject the request.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public func deny(): Unit

    /**
     * Gets the source if the webpage that attempted to access the restricted resource.
     *
     * @returns { String }
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public func getOrigin(): String

    /**
     * Obtains the list of accessible resources requested for the web page.
     *
     * @returns { Array<String> }
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public func getAccessibleResource(): Array<String>

    /**
     * Grant origin access to a given resource.
     *
     * @param { Array<String> } resources - An array of resources to grant access to.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public func grant(resources: Array<String>): Unit
}

/**
 * Defines Web Component.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Web.Webview.Core"
]
public class Web <: CommonMethodComponent<Web> & WebAttribute {
    /**
     * Web constructor.
     *
     * @param { ResourceStr } src - The source URL of the web content.
     * @param { WebviewController } controller - The controller for managing the web component.
     * @returns { This }
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public init(
        src!: ResourceStr,
        controller!: WebviewController
    )

    /**
     * Sets whether to enable access to the file system in the application.
     *
     * @param { ?Bool } fileAccess - true means enable local file system access in Web; false otherwise.
     *     The default value is false.
     * @returns { This }
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public func fileAccess(fileAccess: ?Bool): This

    /**
     * Sets whether to enable the DOM Storage API. By default, this feature is disabled.
     *
     * @param { ?Bool } domStorageAccess - Whether to enable the DOM Storage API. true means to enable
     *     the DOM Storage API; false means to disable the DOM Storage API.
     *     The default value is false.
     * @returns { This }
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public func domStorageAccess(domStorageAccess: ?Bool): This

    /**
     * Sets whether to enable automatic image loading.
     *
     * @param { ?Bool } imageAccess - Sets whether to enable automatic image loading.
     *     true means the Web can automatically load image resources, false otherwise.
     *     Default value: true.
     * @returns { This }
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public func imageAccess(imageAccess: ?Bool): This

    /**
     * Sets whether to enable access to online images through HTTP and HTTPS.
     *
     * @param { ?Bool } onlineImageAccess - Sets whether to enable access to online images.
     *     true means means setting to allow loading image resources from the network, false otherwise.
     *     Default value: true.
     * @returns { This }
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public func onlineImageAccess(onlineImageAccess: ?Bool): This

    /**
     * Sets the behavior when a secure origin attempts to load a resource from an insecure origin.
     * The default is MixedMode.None, meaning not allow a secure origin to load content from an insecure origin.
     *
     * @param { ?MixedMode } mixedMode - The mixed mode, which can be MixedMode.
     *     Default value: MixedMode.None, which means that secure origin is not allowed to load content from insecure origin.
     * @returns { This }
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public func mixedMode(mixedMode: ?MixedMode): This

    /**
     * Sets whether the Web supports zooming using gestures.
     *
     * @param { ?Bool } zoomAccess - true means the Web supports zooming using gestures; false otherwise. The default value is true
     * @returns { This }
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public func zoomAccess(zoomAccess: ?Bool): This

    /**
     * Set whether to enable geolocation access. By default, this feature is enabled.
     * For details, see Managing Location Permissions.
     *
     * @param { ?Bool } geolocationAccess - Whether to enable geolocation access. true means the Web
     *     allows access to geographical locations; false means the
     *     Web disallows access to geographical locations. The default value is true.
     * @returns { This }
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public func geolocationAccess(geolocationAccess: ?Bool): This

    /**
     * Set whether paint vertical scroll bar, including the system default scrollbar and user-defined scrollbar.
     *
     * @param { ?Bool } verticalScrollBar - True if it needs to paint vertical scroll bar. The default value is true
     * @returns { This }
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public func verticalScrollBarAccess(verticalScrollBar: ?Bool): This

    /**
     * Called to setting the nested scroll options.
     *
     * @param { ?NestedScrollMode } scrollForward - Set NestedScrollMode when the scrollable component scrolls forward.
     * @param { ?NestedScrollMode } scrollBackward - Set NestedScrollMode when the scrollable component scrolls backward.
     * @returns { This }
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public func nestedScroll(
        scrollForward!: ?NestedScrollMode,
        scrollBackward!: ?NestedScrollMode
    ): This

    /**
     * Triggered when the resources loading is intercepted.
     *
     * @param { ?Callback<OnLoadInterceptEvent, Bool> } callback - The triggered callback when the resources loading is intercepted
     * @returns { This }
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public func onLoadIntercept(callback: ?Callback<OnLoadInterceptEvent, Bool>): This

    /**
     * Called when the web page starts to be loaded.
     *
     * @param { ?Callback<OnPageBeginEvent, Unit> } callback - The triggered function at the begin of web page loading
     * @returns { This }
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public func onPageBegin(callback: ?Callback<OnPageBeginEvent, Unit>): This

    /**
     * Triggered at the end of web page loading.
     *
     * @param { ?Callback<OnPageEndEvent, Unit> } callback - The triggered function at the end of web page loading
     * @returns { This }
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public func onPageEnd(callback: ?Callback<OnPageEndEvent, Unit>): This

    /**
     * Registers the supplied ArkTS object in javaScriptProxy into this Web component.
     *
     * @param { ?Array<(String) -> String> } funcList - An array of functions to register.
     * @param { ?String } name - The name of the JavaScript object.
     * @param { ?Array<String> } methodList - An array of method names to register.
     * @param { ?WebviewController } controller - The web view controller.
     * @returns { This }
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public func javaScriptProxy(funcList!: ?Array<(String) -> String>, name!: ?String, methodList!: ?Array<String>,
        controller!: ?WebviewController): This

    /**
     * Sets the web dark mode. By default, web dark mode is disabled. When it is enabled,
     * the Web component enables the dark theme defined for web pages
     * if the theme has been defined in prefers-color-scheme of a media query,
     * and remains unchanged otherwise. To enable the forcible dark mode, use this API with forceDarkAccess.
     *
     * @param { ?WebDarkMode } mode - Web dark mode to set.
     *     Default value: WebDarkMode.Off.
     * @returns { This }
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Web.Webview.Core"
    ]
    public func darkMode(mode: ?WebDarkMode): This

    /**
     * Sets whether to enable forcible dark mode for the web page. This API is applicable only when dark mode is enabled in {
         *
         * @param { ?Bool } access - Sets whether to enable forcible dark mode for the web page.
         *      true means enable forcible dark mode for the web page.
         *      false means not enable forcible dark mode for the web page.
         *      The default value is false.
         * @returns { This }
         */
        @!APILevel[
            since: "22",
            syscap: "SystemCapability.Web.Webview.Core"
        ]
    public func forceDarkAccess(access: ?Bool): This
}

    /**
     * Defines the Web attribute functions.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Web.Webview.Core"
    ]
sealed interface WebAttribute <: CommonMethod<WebAttribute> {
        /**
         * Sets whether to enable access to the file system in the application.
         *
         * @param { ?Bool } fileAccess - true means enable local file system access in Web; false otherwise.
         *     The default value is false.
         * @returns { WebAttribute }
         */
        @!APILevel[
            since: "22",
            syscap: "SystemCapability.Web.Webview.Core"
        ]
    func fileAccess(fileAccess: ?Bool): WebAttribute

        /**
         * Sets whether to enable the DOM Storage API. By default, this feature is disabled.
         *
         * @param { ?Bool } domStorageAccess - Whether to enable the DOM Storage API. {@code true} means to enable
         *     the DOM Storage API; {@code false} means to disable the DOM Storage API.
         *     The default value is false.
         * @returns { WebAttribute }
         */
        @!APILevel[
            since: "22",
            syscap: "SystemCapability.Web.Webview.Core"
        ]
    func domStorageAccess(domStorageAccess: ?Bool): WebAttribute

        /**
         * Sets whether to enable automatic image loading.
         *
         * @param { ?Bool } imageAccess - Sets whether to enable automatic image loading.
         *      true means the Web can automatically load image resources, false otherwise.
         *      Default value: true.
         * @returns { WebAttribute }
         */
        @!APILevel[
            since: "22",
            syscap: "SystemCapability.Web.Webview.Core"
        ]
    func imageAccess(imageAccess: ?Bool): WebAttribute

        /**
         * Sets whether to enable access to online images through HTTP and HTTPS.
         *
         * @param { ?Bool } onlineImageAccess -  Sets whether to enable access to online images.
         *      true means means setting to allow loading image resources from the network, false otherwise.
         *      Default value: true.
         * @returns { WebAttribute }
         */
        @!APILevel[
            since: "22",
            syscap: "SystemCapability.Web.Webview.Core"
        ]
    func onlineImageAccess(onlineImageAccess: ?Bool): WebAttribute

        /**
         * Sets the behavior when a secure origin attempts to load a resource from an insecure origin.
         * The default is MixedMode.None, meaning not allow a secure origin to load content from an insecure origin.
         *
         * @param { ?MixedMode } mixedMode - The mixed mode, which can be MixedMode.
         *      Default value: MixedMode.None, which means that secure origin is not allowed to load content from insecure origin.
         * @returns { WebAttribute }
         */
        @!APILevel[
            since: "22",
            syscap: "SystemCapability.Web.Webview.Core"
        ]
    func mixedMode(mixedMode: ?MixedMode): WebAttribute

        /**
         * Sets whether the Web supports zooming using gestures.
         *
         * @param { ?Bool } zoomAccess - true means the Web supports zooming using gestures; false otherwise.
         *      The default value is true.
         * @returns { WebAttribute }
         */
        @!APILevel[
            since: "22",
            syscap: "SystemCapability.Web.Webview.Core"
        ]
    func zoomAccess(zoomAccess: ?Bool): WebAttribute

        /**
         * Set whether to enable geolocation access. By default, this feature is enabled.
         * For details, see Managing Location Permissions.
         *
         * @param { ?Bool } geolocationAccess - Whether to enable geolocation access. true means the Web
         *      allows access to geographical locations; false means the
         *      Web disallows access to geographical locations. The default value is true.
         * @returns { WebAttribute }
         */
        @!APILevel[
            since: "22",
            syscap: "SystemCapability.Web.Webview.Core"
        ]
    func geolocationAccess(geolocationAccess: ?Bool): WebAttribute

        /**
         * Set whether paint vertical scroll bar, including the system default scrollbar and user-defined scrollbar.
         *
         * @param { ?Bool } verticalScrollBar - True if it needs to paint vertical scroll bar. The default value is true.
         * @returns { WebAttribute }
         */
        @!APILevel[
            since: "22",
            syscap: "SystemCapability.Web.Webview.Core"
        ]
    func verticalScrollBarAccess(verticalScrollBar: ?Bool): WebAttribute

        /**
         * Called to setting the nested scroll options.
         *
         * @param { ?NestedScrollMode } scrollForward - Set NestedScrollMode when the scrollable component scrolls forward.
         * @param { ?NestedScrollMode } scrollBackward - Set NestedScrollMode when the scrollable component scrolls backward.
         * @returns { WebAttribute }
         */
        @!APILevel[
            since: "22",
            syscap: "SystemCapability.Web.Webview.Core"
        ]
    func nestedScroll(
        scrollForward!: ?NestedScrollMode,
        scrollBackward!: ?NestedScrollMode
    ): WebAttribute

        /**
         * Triggered when the resources loading is intercepted.
         *
         * @param { ?Callback<OnLoadInterceptEvent, Bool> } callback - The triggered callback when the resources loading is intercepted.
         * @returns { WebAttribute }
         */
        @!APILevel[
            since: "22",
            syscap: "SystemCapability.Web.Webview.Core"
        ]
    func onLoadIntercept(callback: ?Callback<OnLoadInterceptEvent, Bool>): WebAttribute

        /**
         * Called when the web page starts to be loaded.
         *
         * @param { ?Callback<OnPageBeginEvent, Unit> } callback - The triggered function at the end of web page loading.
         * @returns { WebAttribute }
         */
        @!APILevel[
            since: "22",
            syscap: "SystemCapability.Web.Webview.Core"
        ]
    func onPageBegin(callback: ?Callback<OnPageBeginEvent, Unit>): WebAttribute

        /**
         * Triggered at the end of web page loading.
         *
         * @param { ?Callback<OnPageEndEvent, Unit> } callback - The callback function triggered when page loading completes.
         * @returns { WebAttribute }
         */
        @!APILevel[
            since: "22",
            syscap: "SystemCapability.Web.Webview.Core"
        ]
    func onPageEnd(callback: ?Callback<OnPageEndEvent, Unit>): WebAttribute

        /**
         * Registers the supplied ArkTS object in javaScriptProxy into this Web component.
         *
         * @param { ?Array<(String) -> String> } funcList - An array of functions to register.
         * @param { ?String } name - The name of the JavaScript object.
         * @param { ?Array<String> } methodList - An array of method names to register.
         * @param { ?WebviewController } controller - The web view controller.
         * @returns { WebAttribute }
         */
        @!APILevel[
            since: "22",
            syscap: "SystemCapability.Web.Webview.Core"
        ]
    func javaScriptProxy(funcList!: ?Array<(String) -> String>, name!: ?String, methodList!: ?Array<String>,
        controller!: ?WebviewController): WebAttribute

        /**
         * Sets the web dark mode. By default, web dark mode is disabled. When it is enabled,
         * the Web component enables the dark theme defined for web pages
         * if the theme has been defined in prefers-color-scheme of a media query,
         * and remains unchanged otherwise. To enable the forcible dark mode, use this API with forceDarkAccess.
         *
         * @param { ?WebDarkMode } mode - The dark mode setting to apply.
         * @returns { WebAttribute }
         */
        @!APILevel[
            since: "22",
            syscap: "SystemCapability.Web.Webview.Core"
        ]
    func darkMode(mode: ?WebDarkMode): WebAttribute

        /**
         * Sets whether to enable forcible dark mode for the web page.
         * This API is applicable only when dark mode is enabled in darkMode.
         *
         * @param { ?Bool } access - Sets whether to enable forcible dark mode for the web page.
         *      true means enable forcible dark mode for the web page.
         *      false means not enable forcible dark mode for the web page.
         *      The default value is false.
         * @returns { WebAttribute }
         */
        @!APILevel[
            since: "22",
            syscap: "SystemCapability.Web.Webview.Core"
        ]
    func forceDarkAccess(access: ?Bool): WebAttribute
}