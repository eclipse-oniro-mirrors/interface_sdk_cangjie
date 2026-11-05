/*
 * Copyright (c) 2026 Huawei Device Co., Ltd.
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

package ohos.multimedia.camera_picker

import ohos.app.ability.ui_ability.UIAbilityContext
import ohos.callback_invoke.AsyncCallback
import ohos.labels.APILevel
import ohos.multimedia.camera as camera

/**
 * Defines the configuration information about the camera picker.
 */
@!APILevel[
    since: "26.1.0",
    syscap: "SystemCapability.Multimedia.Camera.Core"
]
public class PickerProfile {
    /**
     * Camera position.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public mut prop cameraPosition: camera.CameraPosition

    /**
     * URI for saving the configuration information. For details about the default value, see **File URI**. The
     * **saveUri** parameter is optional. If it is not specified, images and videos are automatically saved to the media
     * library. To prevent them from being saved to the media library, specify a valid file path within your
     * application's sandbox. When you use your own resource path, ensure that the file exists and is writable;
     * otherwise, the save operation fails.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public mut prop saveUri: ?String

    /**
     * Maximum video duration, in seconds. The default value is **0**, indicating that the maximum video duration is not
     * set.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public mut prop videoDuration: ?Int32

    /**
     * A constructor used to create a PickerProfile.
     *
     * @param { camera.CameraPosition } cameraPosition - Camera position.
     * @param { ?String } [saveUri] - URI for saving the configuration information.
     * @param { ?Int32 } [videoDuration] - Maximum video duration, in seconds.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public init(cameraPosition: camera.CameraPosition, saveUri!: ?String = None, videoDuration!: ?Int32 = None)
}

/**
 * Enumerates the media types displayed in the camera picker.
 */
@!APILevel[
    since: "26.1.0",
    syscap: "SystemCapability.Multimedia.Camera.Core"
]
public enum PickerMediaType {
    /**
     * Photo mode.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    Photo
    |
    /**
     * Video mode.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    Video
    | ...
}

extend PickerMediaType <: ToString {
    /**
     * Converts the PickerMediaType to its string representation.
     * @returns { String } A string representation of the PickerMediaType.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public func toString(): String
}

extend PickerMediaType <: Equatable<PickerMediaType> {
    /**
     * Compares this PickerMediaType with another for equality.
     * @param { PickerMediaType } other - The PickerMediaType to compare with.
     * @returns { Bool } True if both modes are equal, false otherwise.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public operator func ==(other: PickerMediaType): Bool

    /**
     * Compares this PickerMediaType with another for inequality.
     * @param { PickerMediaType } other - The PickerMediaType to compare with.
     * @returns { Bool } True if both modes are not equal, false otherwise.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public operator func !=(other: PickerMediaType): Bool
}

/**
 * Defines the processing result of the camera picker.
 */
@!APILevel[
    since: "26.1.0",
    syscap: "SystemCapability.Multimedia.Camera.Core"
]
public class PickerResult {
    /**
     * Result code. The value **0** means that the processing is successful, and **-1** means that the processing fails.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public mut prop resultCode: Int32

    /**
     * URI of the result. If **saveUri** is empty, **resultUri** is a public media path. If **saveUri** is not empty and
     * the application has the write permission on the URI, the value of **resultUri** is the same as that of
     * **saveUri**. If **saveUri** is not empty and the application does not have the write permission on the URI,
     * **resultUri** cannot be obtained.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public mut prop resultUri: String

    /**
     * Media type.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Multimedia.Camera.Core"
    ]
    public mut prop mediaType: PickerMediaType
}

/**
 * Starts the camera picker and enters the corresponding mode based on the media type. This API uses an asynchronous
 * callback to return the result.
 *
 * **NOTE**
 *
 * When an application is running on a widescreen foldable device and the camera picker is launched while the device is
 * unfolded, switching the device from unfolded to folded will automatically move the camera picker to the background.
 *
 * @param { UIAbilityContext } context - Application context.
 * @param { Array<PickerMediaType> } mediaTypes - Media type.
 * @param { PickerProfile } pickerProfile - Profile of the camera picker.
 * @param { AsyncCallback<PickerResult> } callback - Callback used to return the processing result
 *     (**PickerResult**) of the camera picker.
 */
@!APILevel[
    since: "26.1.0",
    syscap: "SystemCapability.Multimedia.Camera.Core"
]
public func pick(context: UIAbilityContext, mediaTypes: Array<PickerMediaType>, pickerProfile: PickerProfile,
    callback: AsyncCallback<PickerResult>): Unit
