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

package ohos.file.fileuri

import ohos.labels.APILevel

/**
 * FileUri represents the uri of the file.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.FileManagement.AppFileService"
]
public class FileUri {
    /**
     * Constructor for obtaining the instance of the FileUri class.
     *
     * @param { String } uriOrPath - Uri or Path.
     * @throws { BusinessException } 13900005 - I/O error
     * @throws { BusinessException } 13900011 - Out of memory
     * @throws { BusinessException } 13900020 - Invalid argument
     * @throws { BusinessException } 13900042 - Unknown error
     * @throws { BusinessException } 14300002 - Invalid uri
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.AppFileService",
        throwexception: true
    ]
    public init(uriOrPath: String)

    /**
     * Gets/Sets the path portion of the URI.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.AppFileService"
    ]
    public override prop path: String

    /**
     * Obtains the file name of uri.
     *
     * @throws { BusinessException } 13900005 - I/O error
     * @throws { BusinessException } 13900042 - Unknown error
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.AppFileService",
        throwexception: true
    ]
    public prop name: String

    /**
     * Converts this URI into an encoded string.
     *
     * @returns { String } Return the file uri string
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.AppFileService"
    ]
    public override func toString(): String
}

/**
 * Get the uri from the path of file in app sandbox
 *
 * @param { String } path - the path of file in app sandbox
 * @returns { String } Return the file uri
 * @throws { BusinessException } 13900020 - Invalid argument.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.FileManagement.AppFileService",
    throwexception: true
]
public func getUriFromPath(path: String): String
