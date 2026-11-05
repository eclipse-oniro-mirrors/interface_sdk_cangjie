package ohos.notification_manager

import ohos.app.ability.ui_ability.UIAbilityContext
import ohos.business_exception.AsyncCallback
import ohos.labels.APILevel
import ohos.multimedia.image.PixelMap

/**
 * Publishes a notification. This API uses an asynchronous callback to return the result.
 *
 * After a notification is published, it will be displayed as a notification widget in the device's notification
 * center, status bar, etc. If the ID and tag of the newly published notification are the same as those of an already
 * published notification, the new notification will replace the original one, achieving a notification update
 * effect.
 *
 * @param { NotificationRequest } request - Content and related configuration of the notification to publish.
 * @param { AsyncCallback<Unit> } callback - Callback used to return the result. If the operation is successful,
 *     **err** is **undefined**; otherwise, **err** is an error object.
 * @throws { BusinessException } 1600001 - Internal error.
 * @throws { BusinessException } 1600002 - Marshalling or unmarshalling error.
 * @throws { BusinessException } 1600003 - Failed to connect to the service.
 * @throws { BusinessException } 1600004 - Notification disabled.
 * @throws { BusinessException } 1600005 - Notification slot disabled.
 * @throws { BusinessException } 1600007 - The notification does not exist.
 * @throws { BusinessException } 1600009 - The notification sending frequency reaches the upper limit.
 * @throws { BusinessException } 1600012 - No memory space.
 * @throws { BusinessException } 1600014 - No permission.
 * @throws { BusinessException } 1600015 - The current notification status does not support duplicate configurations.
 * @throws { BusinessException } 1600016 - The notification version for this update is too low.
 * @throws { BusinessException } 1600020 - The application is not allowed to send notifications due to permission
 *     settings.
 * @throws { BusinessException } 1600029 - The system failed to find the ExtensionAbility instance for the custom Live
 *     View widget template.
 * @throws { BusinessException } 2300007 - Network unreachable.
 */
@!APILevel[
    since: "26.1.0",
    syscap: "SystemCapability.Notification.Notification",
    throwexception: true
]
public func publish(request: NotificationRequest, callback: AsyncCallback<Unit>): Unit

/**
 * Cancels all notifications of this application. This API uses an asynchronous callback to return the result.
 *
 * After cancellation, all notifications of the current application will be removed from the notification center,
 * status bar, and other locations, and will no longer be visible to the user. This is suitable for scenarios such as
 * application exit or when the user manually clears all notifications.
 *
 * @param { AsyncCallback<Unit> } callback - Callback used to return the result. If the operation is successful,
 *     **err** is **undefined**; otherwise, **err** is an error object.
 * @throws { BusinessException } 1600001 - Internal error.
 * @throws { BusinessException } 1600002 - Marshalling or unmarshalling error.
 * @throws { BusinessException } 1600003 - Failed to connect to the service.
 */
@!APILevel[
    since: "26.1.0",
    syscap: "SystemCapability.Notification.Notification",
    throwexception: true
]
public func cancelAll(callback: AsyncCallback<Unit>): Unit

/**
 * Synchronously queries the notification authorization status of the current application.
 *
 * This API is used to quickly check whether the current application is allowed to send notifications before
 * publishing. It is synchronous and returns the result immediately after being called, suitable for scenarios where
 * the enabled status needs to be obtained in a synchronous code flow.
 *
 * @returns { Bool } Result of the notification enabling status. The value **true** means that the notification is
 *     enabled, and **false** means the opposite.
 * @throws { BusinessException } 1600001 - Internal error.
 * @throws { BusinessException } 1600002 - Marshalling or unmarshalling error.
 * @throws { BusinessException } 1600003 - Failed to connect to the service.
 */
@!APILevel[
    since: "26.1.0",
    syscap: "SystemCapability.Notification.Notification",
    throwexception: true
]
public func isNotificationEnabledSync(): Bool

/**
 * Requests notification to be enabled for this application. You can call this API to display a dialog box prompting
 * the user to enable notification for your application before publishing a notification. This API uses an asynchronous
 * callback to return the result.
 *
 * This API can be called only after the application UI is loaded (that is, **loadContent** is successfully called).
 *
 * @param { UIAbilityContext } context - Ability context bound to the notification dialog box.
 * @param { AsyncCallback<Unit> } callback - Callback used to return the result. If the operation is successful,
 *     **err** is **undefined**; otherwise, **err** is an error object.
 * @throws { BusinessException } 1600001 - Internal error.
 * @throws { BusinessException } 1600002 - Marshalling or unmarshalling error.
 * @throws { BusinessException } 1600003 - Failed to connect to the service.
 * @throws { BusinessException } 1600004 - Notification disabled.
 * @throws { BusinessException } 1600013 - A notification dialog box is already displayed.
 */
@!APILevel[
    since: "26.1.0",
    syscap: "SystemCapability.Notification.Notification",
    throwexception: true
]
public func requestEnableNotification(context: UIAbilityContext, callback: AsyncCallback<Unit>): Unit

/**
 * Sets the notification badge number. This API uses an asynchronous callback to return the result.
 *
 * A badge is a numeric identifier displayed in the upper right corner of an application's desktop icon, used to
 * prompt the user about the number of unprocessed notifications. After setting, the desktop icon will display the
 * corresponding badge number. This is suitable for scenarios where the number of pending messages needs to be
 * prompted on the desktop icon, such as the number of unread messages and to-do items.
 *
 * This API can be properly called on devices other than wearables. If it is called on wearables, error code 801 is
 * returned.
 *
 * @param { Int32 } badgeNumber - Notification badge number to set. If **badgeNumber** is set to a value less than or
 *     equal to **0**, badges are cleared; if the value is greater than **99**, **99+** is displayed on the badge.
 * @param { AsyncCallback<Unit> } callback - Callback used to return the result. If the operation is successful,
 *     **err** is **undefined**; otherwise, **err** is an error object.
 * @throws { BusinessException } 801 - Capability not supported.
 * @throws { BusinessException } 1600001 - Internal error.
 * @throws { BusinessException } 1600002 - Marshalling or unmarshalling error.
 * @throws { BusinessException } 1600003 - Failed to connect to the service.
 * @throws { BusinessException } 1600012 - No memory space.
 */
@!APILevel[
    since: "26.1.0",
    syscap: "SystemCapability.Notification.Notification",
    throwexception: true
]
public func setBadgeNumber(badgeNumber: Int32, callback: AsyncCallback<Unit>): Unit

/**
 * Defines the data structure of a notification request, which is used to describe all information about a
 * notification, including the notification content, identifier, display style, and interaction behavior.
 */
@!APILevel[
    since: "26.1.0",
    syscap: "SystemCapability.Notification.Notification"
]
public class NotificationRequest {
    /**
     * Notification display content, including the notification title and body.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Notification.Notification"
    ]
    public mut prop content: NotificationContent

    /**
     * Notification ID. The default value is **0**. If a notification with the same ID exists, the notification is
     * updated. If no notification with the same ID exists, a new notification is created.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Notification.Notification"
    ]
    public mut prop id: ?Int32

    /**
     * Notification slot type. The default value is **OTHER_TYPES**. The notification reminder mode varies depending on
     * the notification slot type.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Notification.Notification"
    ]
    public mut prop notificationSlotType: ?SlotType

    /**
     * Notification label. The **label** field functions similarly to an ID and can be used alone or combined with the
     * ID to serve as the notification identifier. It is recommended to use the ID. If the **label** is not empty when a
     * notification is published, the corresponding **label** must also be specified when the notification is updated or
     * deleted. The size does not exceed 202 bytes, and the excess part will be truncated. The value is empty by default.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Notification.Notification"
    ]
    public mut prop label: ?String

    /**
     * Small notification icon. This parameter is left empty by default. The total number of the icon pixel bytes
     * cannot exceed 192 KB (which is obtained through **getPixelBytesNumber**). The setting does not take effect if
     * the limit is exceeded. When **smallIcon** is not set, the notification displays the default application icon.
     * The recommended icon size is 128 × 128 pixels. The display effect depends on the device capability and
     * notification center UI style.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Notification.Notification"
    ]
    public mut prop smallIcon: ?PixelMap

    /**
     * A constructor used to create a NotificationRequest.
     *
     * @param { NotificationContent } content - Notification display content, including the notification title and
     *     body.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Notification.Notification"
    ]
    public init(content: NotificationContent)
}

/**
 * Describes the basic text notification, which is used to display the title and body content. It serves as the basic
 * content structure for other notification types. Other notification types (such as long text, multi-line text,
 * picture, and live view) inherit this API and extend their own specific fields on this basis.
 */
@!APILevel[
    since: "26.1.0",
    syscap: "SystemCapability.Notification.Notification"
]
public open class NotificationBasicContent {
    /**
     * Notification title, displayed at the top of the notification. It cannot be an empty string. The size does not
     * exceed 1024 bytes, and the excess part will be truncated.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Notification.Notification"
    ]
    public mut prop title: String

    /**
     * Notification body content, displayed below the title. It cannot be an empty string. The size does not exceed
     * 3072 bytes, and the excess part will be truncated.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Notification.Notification"
    ]
    public mut prop text: String

    /**
     * Additional notification content, which supplements the notification content and is not displayed in the
     * notification center. It defaults to empty. The size does not exceed 3072 bytes, and the excess part will be
     * truncated.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Notification.Notification"
    ]
    public mut prop additionalText: ?String

    /**
     * Picture displayed on the lock screen. This parameter is left empty by default. Currently, only the live view
     * notification is supported. The total number of the icon pixel bytes cannot exceed 192 KB (which is obtained
     * through **getPixelBytesNumber**). The recommended icon size is 128 x 128 pixels. The display effect depends on
     * the device capability and notification center UI style.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Notification.Notification"
    ]
    public mut prop lockscreenPicture: ?PixelMap

    /**
     * A constructor used to create a NotificationBasicContent.
     *
     * @param { String } title - Notification title, displayed at the top of the notification.
     * @param { String } text - Notification body content, displayed below the title.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Notification.Notification"
    ]
    public init(title: String, text: String)
}

/**
 * Describes the notification contents.
 */
@!APILevel[
    since: "26.1.0",
    syscap: "SystemCapability.Notification.Notification"
]
public class NotificationContent {
    /**
     * Notification content type, used to specify the content layout type of the notification, which determines the
     * display style of the notification in the notification center. It must be used together with the corresponding
     * notification content object. For example, when this parameter is set to
     * **NOTIFICATION_CONTENT_BASIC_TEXT**, the **normal** field must be specified at the same time.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Notification.Notification"
    ]
    public mut prop notificationContentType: ContentType

    /**
     * Basic notification content. This parameter is used when **notificationContentType** is
     * **NOTIFICATION_CONTENT_BASIC_TEXT**. The notification displays the title and body in a plain text style.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Notification.Notification"
    ]
    public mut prop normal: ?NotificationBasicContent

    /**
     * A constructor used to create a NotificationContent.
     *
     * @param { ContentType } notificationContentType - Notification content type, used to specify the content layout
     *     type of the notification, which determines the display style of the notification in the notification
     *     center.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Notification.Notification"
    ]
    public init(notificationContentType: ContentType)
}

/**
 * Enumerates the notification slot types.
 *
 * Different types correspond to different **SlotLevel** values, determining the reminder behavior of the
 * notification.
 */
@!APILevel[
    since: "26.1.0",
    syscap: "SystemCapability.Notification.Notification"
]
public enum SlotType {
    /**
     * Unknown type. This type corresponds to the **SlotLevel** of **LEVEL_MIN**.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Notification.Notification"
    ]
    UnknownType
    |
    /**
     * Social communication. This type corresponds to the **SlotLevel** of **LEVEL_HIGH**.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Notification.Notification"
    ]
    SocialCommunication
    |
    /**
     * Service information. This type corresponds to the **SlotLevel** of **LEVEL_HIGH**.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Notification.Notification"
    ]
    ServiceInformation
    |
    /**
     * Content information. This type corresponds to the **SlotLevel** of **LEVEL_MIN**.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Notification.Notification"
    ]
    ContentInformation
    |
    /**
     * Live view. A third-party application cannot directly create a notification of this type. Instead, after the
     * system proxy creates a notification, the third-party application can release the notification with the same ID
     * to update the specified content. This type corresponds to the **SlotLevel** of **LEVEL_DEFAULT**.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Notification.Notification"
    ]
    LiveView
    |
    /**
     * Customer service message. This type is used for messages between users and customer service providers. The
     * messages must be initiated by users. This type corresponds to the **SlotLevel** of **LEVEL_DEFAULT**.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Notification.Notification"
    ]
    CustomerService
    |
    /**
     * Emergency event.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Notification.Notification"
    ]
    EmergencyInformation
    |
    /**
     * Other types. This type corresponds to the **SlotLevel** of **LEVEL_MIN**.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Notification.Notification"
    ]
    OtherTypes
    | ...
}

extend SlotType <: ToString {
    /**
     * Converts the SlotType to its string representation.
     * @returns { String } A string representation of the SlotType.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Notification.Notification"
    ]
    public func toString(): String
}

extend SlotType <: Equatable<SlotType> {
    /**
     * Compares this SlotType with another for equality.
     * @param { SlotType } other - The SlotType to compare with.
     * @returns { Bool } True if both modes are equal, false otherwise.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Notification.Notification"
    ]
    public operator func ==(other: SlotType): Bool

    /**
     * Compares this SlotType with another for inequality.
     * @param { SlotType } other - The SlotType to compare with.
     * @returns { Bool } True if both modes are not equal, false otherwise.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Notification.Notification"
    ]
    public operator func !=(other: SlotType): Bool
}

/**
 * Enumerates the notification content types.
 */
@!APILevel[
    since: "26.1.0",
    syscap: "SystemCapability.Notification.Notification"
]
public enum ContentType {
    /**
     * Normal text notification.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Notification.Notification"
    ]
    NotificationContentBasicText
    | ...
}

extend ContentType <: ToString {
    /**
     * Converts the ContentType to its string representation.
     * @returns { String } A string representation of the ContentType.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Notification.Notification"
    ]
    public func toString(): String
}

extend ContentType <: Equatable<ContentType> {
    /**
     * Compares this ContentType with another for equality.
     * @param { ContentType } other - The ContentType to compare with.
     * @returns { Bool } True if both modes are equal, false otherwise.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Notification.Notification"
    ]
    public operator func ==(other: ContentType): Bool

    /**
     * Compares this ContentType with another for inequality.
     * @param { ContentType } other - The ContentType to compare with.
     * @returns { Bool } True if both modes are not equal, false otherwise.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Notification.Notification"
    ]
    public operator func !=(other: ContentType): Bool
}
