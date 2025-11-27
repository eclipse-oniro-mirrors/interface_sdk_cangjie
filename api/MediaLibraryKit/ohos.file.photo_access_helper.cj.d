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

package ohos.file.photo_access_helper

import ohos.app.ability.ui_ability.*
import ohos.callback_invoke.*
import ohos.data.data_share_predicates.*
import ohos.labels.*
import ohos.multimedia.image.*
import std.collection.*

/**
 * Defines the abstract interface of albums.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
]
public open class AbsAlbum {
    
    protected init(id: Int64)

    /**
     * Album type
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    public prop albumType: AlbumType

    /**
     * Album subtype
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    public prop albumSubtype: AlbumSubtype

    /**
     * Album name.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    public mut prop albumName: String

    /**
     * Album uri.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    public prop albumUri: String

    /**
     * Number of assets in the album
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    public prop count: Int32

    /**
     * Cover uri for the album
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    public prop coverUri: String

    /**
     * Fetch assets in an album.
     * @param { FetchOptions } options - Fetch options.
     * @returns { PhotoAssetResult } Returns the fetch result
     * @throws { BusinessException } 201 - Permission denied
     * @throws { BusinessException } 13900020 - Invalid argument
     * @throws { BusinessException } 14000011 - System inner fail
     */
    @!APILevel[
        since: "22",
        permission: "ohos.permission.READ_IMAGEVIDEO",
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core",
        throwexception: true,
        workerthread: true
    ]
    public func getAssets(options: FetchOptions): PhotoAssetResult
}

/**
 * Defines the album.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
]
public class Album <: AbsAlbum {
    /**
     * Number of image assets in the album
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    public prop imageCount: Int32

    /**
     * Number of video assets in the album
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    public prop videoCount: Int32

    /**
     * Modify metadata for the album
     * @throws { BusinessException } 201 - Permission denied
     * @throws { BusinessException } 13900020 - Invalid argument
     * @throws { BusinessException } 14000011 - System inner fail
     */
    @!APILevel[
        since: "22",
        permission: "ohos.permission.WRITE_IMAGEVIDEO",
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core",
        throwexception: true,
        workerthread: true
    ]
    public func commitModify(): Unit
}

/**
 * Provides APIs to manage the file retrieval result.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
]
public open class FetchResult {
    
    protected init(id: Int64)

    /**
     * Obtains the total number of objects in the fetch result.
     * @returns { Int32 } Total number of objects.
     * @throws { BusinessException } 13900020 - Invalid argument
     * @throws { BusinessException } 14000011 - System inner fail
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core",
        throwexception: true
    ]
    public func getCount(): Int32

    /**
     * Checks whether the result set points to the last row.
     * You need to check whether the object is the last one before calling getNextObject.
     * @returns { Bool } Whether the object is the last one in the fetch result.
     * @throws { BusinessException } 13900020 - Invalid argument
     * @throws { BusinessException } 14000011 - System inner fail
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core",
        throwexception: true
    ]
    public func isAfterLast(): Bool

    /**
     * Release the fetch result.
     * @throws { BusinessException } 13900020 - Invalid argument
     * @throws { BusinessException } 14000011 - System inner fail
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core",
        throwexception: true
    ]
    public func close(): Unit
}

/**
 * Provides APIs to manage the file retrieval album result.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
]
public class AlbumResult <: FetchResult {
    /**
     * Obtains the first object in the fetch result.
     * @returns { Album } Returns the first Album object in the fetch result.
     * @throws { BusinessException } 13900020 - Invalid argument
     * @throws { BusinessException } 14000011 - System inner fail
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core",
        throwexception: true,
        workerthread: true
    ]
    public func getFirstObject(): Album

    /**
     * Obtains the next object in the fetch result.
     * Before using this API, you must use isAfterLast() to check whether the current position is the end of the result set.
     * in the fetch result. This method only works when the current position is not the last row.
     * @returns { Album } Returns the next Album object in the fetch result.
     * @throws { BusinessException } 13900020 - Invalid argument
     * @throws { BusinessException } 14000011 - System inner fail
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core",
        throwexception: true,
        workerthread: true
    ]
    public func getNextObject(): Album

    /**
     * Obtains the last object asset in the fetch result.
     * @returns { Album } Returns the last Album object
     * @throws { BusinessException } 13900020 - Invalid argument
     * @throws { BusinessException } 14000011 - System inner fail
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core",
        throwexception: true,
        workerthread: true
    ]
    public func getLastObject(): Album

    /**
     * Obtains the object with the specified index in the result set.
     * @param { Int32 } index - Index of the file asset to obtain. The value starts from 0.
     * @returns { Album } Returns the Album object at the specified index.
     * @throws { BusinessException } 13900020 - Invalid argument
     * @throws { BusinessException } 14000011 - System inner fail
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core",
        throwexception: true,
        workerthread: true
    ]
    public func getObjectByPosition(index: Int32): Album

    /**
     * Obtains all objects in the fetch result.
     * @returns { Array<Album> } Returns an array containing all Album objects in the fetch result.
     * @throws { BusinessException } 13900020 - Invalid argument
     * @throws { BusinessException } 14000011 - System inner fail
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core",
        throwexception: true,
        workerthread: true
    ]
    public func getAllObjects(): Array<Album>
}

/**
 * Defines information about the images or videos selected.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
]
public class PhotoAssetResult <: FetchResult {
    /**
     * Obtains the first object in the fetch result.
     * @returns { PhotoAsset } Returns the first PhotoAsset object in the fetch result.
     * @throws { BusinessException } 13900020 - Invalid argument
     * @throws { BusinessException } 14000011 - System inner fail
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core",
        throwexception: true,
        workerthread: true
    ]
    public func getFirstObject(): PhotoAsset

    /**
     * Obtains the next object in the fetch result.
     * Before using this API, you must use isAfterLast() to check whether the current position is the end of the result set.
     * in the fetch result. This method only works when the current position is not the last row.
     * @returns { PhotoAsset } Returns the next PhotoAsset object in the fetch result.
     * @throws { BusinessException } 13900020 - Invalid argument
     * @throws { BusinessException } 14000011 - System inner fail
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core",
        throwexception: true,
        workerthread: true
    ]
    public func getNextObject(): PhotoAsset

    /**
     * Obtains the last object asset in the fetch result.
     * @returns { PhotoAsset } Returns the last PhotoAsset object
     * @throws { BusinessException } 13900020 - Invalid argument
     * @throws { BusinessException } 14000011 - System inner fail
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core",
        throwexception: true,
        workerthread: true
    ]
    public func getLastObject(): PhotoAsset

    /**
     * Obtains the object with the specified index in the result set.
     * @param { Int32 } index - Index of the file asset to obtain. The value starts from 0.
     * @returns { PhotoAsset } Returns the PhotoAsset object at the specified index.
     * @throws { BusinessException } 13900020 - Invalid argument
     * @throws { BusinessException } 14000011 - System inner fail
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core",
        throwexception: true,
        workerthread: true
    ]
    public func getObjectByPosition(index: Int32): PhotoAsset

    /**
     * Obtains all objects in the fetch result.
     * @returns { Array<PhotoAsset> } Returns an array containing all PhotoAsset objects in the fetch result.
     * @throws { BusinessException } 13900020 - Invalid argument
     * @throws { BusinessException } 14000011 - System inner fail
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core",
        throwexception: true,
        workerthread: true
    ]
    public func getAllObjects(): Array<PhotoAsset>
}

/**
 * Defines the class of media album change request.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
]
public class MediaAlbumChangeRequest <: MediaChangeRequest {
    /**
     * The constructor to create a MediaAlbumChangeRequest instance.
     * @param { Album } album - Specify which album to change
     * @throws { BusinessException } 14000011 - System inner fail
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core",
        throwexception: true
    ]
    public init(album: Album)

    /**
     * Obtains the album in the current album change request.
     * @returns { Album } Returns the album
     * @throws { BusinessException } 14000011 - System inner fail
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core",
        throwexception: true
    ]
    public func getAlbum(): Album

    /**
     * Sets the album name.
     * @param { String } name - Album name to set.
     * @throws { BusinessException } 14000011 - System inner fail
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core",
        throwexception: true
    ]
    public func setAlbumName(name: String): Unit

    /**
     * Add assets to the album.
     * @param { Array<PhotoAsset> } assets - Array of assets to add.
     * @throws { BusinessException } 14000011 - System inner fail
     * @throws { BusinessException } 14000016 - Operation Not Support
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core",
        throwexception: true
    ]
    public func addAssets(assets: Array<PhotoAsset>): Unit

    /**
     * Removes assets from the album.
     * @param { Array<PhotoAsset> } assets - Array of assets to remove.
     * @throws { BusinessException } 14000011 - System inner fail
     * @throws { BusinessException } 14000016 - Operation Not Support
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core",
        throwexception: true
    ]
    public func removeAssets(assets: Array<PhotoAsset>): Unit
}

/**
 * Defines the interface of media change request.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
]
public interface MediaChangeRequest {}

/**
 * Defines the class of media asset change request.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
]
public class MediaAssetChangeRequest <: MediaChangeRequest {
    /**
     * Constructor used to initialize an asset change request.
     * @param { PhotoAsset } asset - Assets to change.
     * @throws { BusinessException } 14000011 - System inner fail
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core",
        throwexception: true
    ]
    public init(asset: PhotoAsset)

    /**
     * Creates an image asset change request.
     * @param { UIAbilityContext } context - Context of the ability instance.
     * @param { String } fileUri - Data source of the image asset, which is specified by a URI in the application sandbox directory.
     * @returns { MediaAssetChangeRequest } Returns a MediaAssetChangeRequest instance
     * @throws { BusinessException } 13900002 - The file corresponding to the URI is not in the app sandbox.
     * @throws { BusinessException } 14000011 - System inner fail
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core",
        throwexception: true
    ]
    public static func createImageAssetRequest(context: UIAbilityContext, fileUri: String): MediaAssetChangeRequest

    /**
     * Creates a video asset change request.
     * @param { UIAbilityContext } context - Context of the ability instance.
     * @param { String } fileUri - Data source of the video asset, which is specified by a URI in the application sandbox directory.
     * @returns { MediaAssetChangeRequest } Returns a MediaAssetChangeRequest instance
     * @throws { BusinessException } 13900002 - The file corresponding to the URI is not in the app sandbox.
     * @throws { BusinessException } 14000011 - System inner fail
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core",
        throwexception: true
    ]
    public static func createVideoAssetRequest(context: UIAbilityContext, fileUri: String): MediaAssetChangeRequest

    /**
     * Create an asset change request based on the file type and filename extension.
     * @param { UIAbilityContext } context - Context of the ability instance.
     * @param { PhotoType } photoType - Type of the file to create, which can be image or video.
     * @param { String } extension - File name extension, for example, 'jpg'.
     * @param { CreateOptions } [options] - Options for creating the image or video asset.
     * @returns { MediaAssetChangeRequest } Returns a MediaAssetChangeRequest instance
     * @throws { BusinessException } 14000011 - System inner fail
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core",
        throwexception: true
    ]
    public static func createAssetRequest(context: UIAbilityContext, photoType: PhotoType, extension: String,
        options!: CreateOptions = CreateOptions(title: "", subtype: Default)): MediaAssetChangeRequest

    /**
     * Deletes media assets.
     * @param { UIAbilityContext } context - Context of the ability instance.
     * @param { Array<PhotoAsset> } assets - Array of assets to delete.
     * @throws { BusinessException } 201 - Permission denied
     * @throws { BusinessException } 14000011 - System inner fail
     */
    @!APILevel[
        since: "22",
        permission: "ohos.permission.WRITE_IMAGEVIDEO",
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core",
        throwexception: true,
        workerthread: true
    ]
    public static func deleteAssets(context: UIAbilityContext, assets: Array<PhotoAsset>): Unit

    /**
     * Deletes media assets.
     * @param { UIAbilityContext } context - Context of the ability instance.
     * @param { Array<String> } assets - URIs of the media files to delete.
     * @throws { BusinessException } 201 - Permission denied
     * @throws { BusinessException } 14000002 - The uri format is incorrect or does not exist.
     * @throws { BusinessException } 14000011 - System inner fail
     */
    @!APILevel[
        since: "22",
        permission: "ohos.permission.WRITE_IMAGEVIDEO",
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core",
        throwexception: true,
        workerthread: true
    ]
    public static func deleteAssets(context: UIAbilityContext, assets: Array<String>): Unit

    /**
     * Obtains the asset in this asset change request.
     * @returns { PhotoAsset } Returns the PhotoAsset object in this change request.
     * @throws { BusinessException } 14000011 - System inner fail
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core",
        throwexception: true
    ]
    public func getAsset(): PhotoAsset

    /**
     * Sets the media asset title.
     * @param { String } title - Title to set.
     * @throws { BusinessException } 14000011 - System inner fail
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core",
        throwexception: true
    ]
    public func setTitle(title: String): Unit

    /**
     * Obtains the handler used for writing a file to cache.
     * @returns { Int32 } Returns the write cache handler
     * @throws { BusinessException } 201 - Permission denied
     * @throws { BusinessException } 14000011 - System inner fail
     * @throws { BusinessException } 14000016 - Operation Not Support
     */
    @!APILevel[
        since: "22",
        permission: "ohos.permission.WRITE_IMAGEVIDEO",
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core",
        throwexception: true,
        workerthread: true
    ]
    public func getWriteCacheHandler(): Int32

    /**
     * Adds a resource using fileUri.
     * @param { ResourceType } resourceType - Type of the resource to add.
     * @param { String } fileUri - Data source of the resource to be added, which is specified by a URI in the application sandbox directory.
     * @throws { BusinessException } 13900002 - The file corresponding to the URI is not in the app sandbox.
     * @throws { BusinessException } 14000011 - System inner fail
     * @throws { BusinessException } 14000016 - Operation Not Support
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core",
        throwexception: true
    ]
    public func addResource(resourceType: ResourceType, fileUri: String): Unit

    /**
     * Adds a resource using ArrayBuffer data.
     * @param { ResourceType } resourceType - Type of the resource to add.
     * @param { Array<Byte> } data - Data of the resource to add.
     * @throws { BusinessException } 14000011 - System inner fail
     * @throws { BusinessException } 14000016 - Operation Not Support
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core",
        throwexception: true
    ]
    public func addResource(resourceType: ResourceType, data: Array<Byte>): Unit

    /**
     * Saves the photo taken by the camera.
     * @throws { BusinessException } 14000011 - System inner fail
     * @throws { BusinessException } 14000016 - Operation Not Support
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core",
        throwexception: true
    ]
    public func saveCameraPhoto(): Unit

    /**
     * Discards the photo taken by the camera.
     * @throws { BusinessException } 14000011 - Internal system error
     * @throws { BusinessException } 14000016 - Operation Not Support
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core",
        throwexception: true
    ]
    public func discardCameraPhoto(): Unit
}

/**
 * Obtains a PhotoAccessHelper instance for accessing and modifying media files in the album.
 * @param { UIAbilityContext } context - Context of the ability instance.
 * @returns { PhotoAccessHelper } Instance of PhotoAccessHelper
 * @throws { BusinessException } 13900020 - Invalid argument
 */
@!APILevel[
    since: "22",
    permission: "ohos.permission.INTERACT_ACROSS_LOCAL_ACCOUNTS",
    syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core",
    throwexception: true
]
public func getPhotoAccessHelper(context: UIAbilityContext): PhotoAccessHelper

/**
 * Helper functions to access photos and albums.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
]
public class PhotoAccessHelper {
    /**
     * Fetch photo assets
     * @param { FetchOptions } options - Options for fetching the image and video assets.
     * @returns { PhotoAssetResult } Returns the fetch result.
     * @throws { BusinessException } 201 - Permission denied
     * @throws { BusinessException } 13900020 - Invalid argument
     * @throws { BusinessException } 14000011 - System inner fail
     */
    @!APILevel[
        since: "22",
        permission: "ohos.permission.READ_IMAGEVIDEO",
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core",
        throwexception: true,
        workerthread: true
    ]
    public func getAssets(options: FetchOptions): PhotoAssetResult

    /**
     * Fetch a group of burst assets
     * @param { String } burstKey - UUID of a set of burst photos (BURST_KEY of PhotoKeys). The value is a string of 36 characters.
     * @param { FetchOptions } options - Options for fetching the burst photos.
     * @returns { PhotoAssetResult } Returns the fetch result.
     * @throws { BusinessException } 201 - Permission denied
     * @throws { BusinessException } 14000011 - Internal system error
     */
    @!APILevel[
        since: "22",
        permission: "ohos.permission.READ_IMAGEVIDEO",
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core",
        throwexception: true,
        workerthread: true
    ]
    public func getBurstAssets(burstKey: String, options: FetchOptions): PhotoAssetResult

    /**
     * Obtains albums based on the specified options and album type.
     * Before the operation, ensure that the albums to obtain exist.
     * @param { AlbumType } albumType - Type of the album.
     * @param { AlbumSubtype } subtype - Album subtype.
     * @param { FetchOptions } [options] - Options for fetching the albums.
     * @returns { AlbumResult } Returns the fetch result
     * @throws { BusinessException } 201 - Permission denied
     * @throws { BusinessException } 13900020 - Invalid argument
     * @throws { BusinessException } 14000011 - System inner fail
     */
    @!APILevel[
        since: "22",
        permission: "ohos.permission.READ_IMAGEVIDEO",
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core",
        throwexception: true,
        workerthread: true
    ]
    public func getAlbums(albumType: AlbumType, subtype: AlbumSubtype,
        options!: FetchOptions = FetchOptions(["uri", "album_name"], DataSharePredicates())): AlbumResult

    /**
     * Registers listening for the specified URI. This API uses a callback to return the result.
     * @param { String } uri - URI of the photo asset, URI of the album, or DefaultChangeUri.
     * @param { Bool } forChildUris - Whether to perform fuzzy listening.
     * If uri is the URI of an album, the value true means to listen for the changes of the files in the album;
     * the value false means to listen for the changes of the album only.
     * If uri is the URI of a photoAsset, there is no difference between true and false for forChildUris.
     * If uri is DefaultChangeUri, forChildUris must be set to true. If forChildUris is false,
     * the URI cannot be found and no message can be received.
     * @param { Callback1Argument<ChangeData> } callback - Callback used to return the ChangeData.
     * Multiple callback listeners can be registered for a URI.
     * You can use unRegisterChange to unregister all listeners for the URI or a specified callback listener.
     * @throws { BusinessException } 13900012 - Permission denied
     * @throws { BusinessException } 13900020 - Invalid argument
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core",
        throwexception: true
    ]
    public func registerChange(uri: String, forChildUris: Bool, callback: Callback1Argument<ChangeData>): Unit

    /**
     * Unregisters listening for the specified URI. Multiple callbacks can be registered for a URI for listening.
     * You can use this API to unregister the listening of the specified callbacks or all callbacks.
     * @param { String } uri - URI of the photo asset, URI of the album, or DefaultChangeUri.
     * @param { ?Callback1Argument<ChangeData> } [callback] - The callback function to unregister.
     * @throws { BusinessException } 13900012 - Permission denied
     * @throws { BusinessException } 13900020 - Invalid argument
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core",
        throwexception: true
    ]
    public func unregisterChange(uri: String, callback!: ?Callback1Argument<ChangeData> = None): Unit

    /**
     * Create a save dialog to save photos
     * @param { Array<String> } srcFileUris - List of the file uris to be saved
     * @param { Array<PhotoCreationConfig> } photoCreationConfigs - List of the photo asset creation configs
     * @param { Callback1Argument<Array<String>> } callback - Callback used to returns the media library file uri list to application which has been authorized
     * @throws { BusinessException } 14000011 - Internal system error
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core",
        throwexception: true
    ]
    public func showAssetsCreationDialog(srcFileUris: Array<String>, photoCreationConfigs: Array<PhotoCreationConfig>,
        callback: Callback1Argument<Array<String>>): Unit

    /**
     * Releases this PhotoAccessHelper instance.
     * Call this API when the APIs of the PhotoAccessHelper instance are no longer used.
     *
     * @throws { BusinessException } 13900020 - Invalid argument
     * @throws { BusinessException } 14000011 - System inner fail
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core",
        throwexception: true,
        workerthread: true
    ]
    public func release(): Unit

    /**
     * Applies media changes.
     * @param { MediaChangeRequest } mediaChangeRequest - Request for asset changes or album changes.
     * @throws { BusinessException } 201 - Permission denied
     * @throws { BusinessException } 14000011 - System inner fail
     */
    @!APILevel[
        since: "22",
        permission: "ohos.permission.WRITE_IMAGEVIDEO",
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core",
        throwexception: true,
        workerthread: true
    ]
    public func applyChanges(mediaChangeRequest: MediaChangeRequest): Unit
}

/**
 * Enumerate the album subtypes.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
]
public enum AlbumSubtype {
    
    /**
     * Generic user-created albums.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    UserGeneric
    | 
    
    /**
     * Favorite album, which assets are marked as favorite.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    Favorite
    | 
    
    /**
     * Video album, which contains all video assets.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    Video
    | 
    
    /**
     * Image album
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    Image
    | 

    /**
     * Any album
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    AnyAlbum
    | ...
}


extend AlbumSubtype <: ToString {
    
    /**
     * Converts the AlbumSubtype to its string representation.
     * @returns { String } A string representation of the AlbumSubtype.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    public func toString(): String
}


extend AlbumSubtype <: Equatable<AlbumSubtype> {
    
    /**
     * Compares this AlbumSubtype with another for equality.
     * @param { AlbumSubtype } other - The AlbumSubtype to compare with.
     * @returns { Bool } True if both modes are equal, false otherwise.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    public operator func ==(other: AlbumSubtype): Bool
    
    /**
     * Compares this AlbumSubtype with another for inequality.
     * @param { AlbumSubtype } other - The AlbumSubtype to compare with.
     * @returns { Bool } True if both modes are not equal, false otherwise.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    public operator func !=(other: AlbumSubtype): Bool
}

/**
 * Enumerates the album types.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
]
public enum AlbumType {
    
    /**
     * User album.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    User
    | 

    /**
     * System album.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    System
    | ...
}


extend AlbumType <: ToString {
    
    /**
     * Converts the AlbumType to its string representation.
     * @returns { String } A string representation of the AlbumType.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    public func toString(): String
}


extend AlbumType <: Equatable<AlbumType> {
    
    /**
     * Compares this AlbumType with another for equality.
     * @param { AlbumType } other - The AlbumType to compare with.
     * @returns { Bool } True if both modes are equal, false otherwise.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    public operator func ==(other: AlbumType): Bool
    
    /**
     * Compares this AlbumType with another for inequality.
     * @param { AlbumType } other - The AlbumType to compare with.
     * @returns { Bool } True if both modes are not equal, false otherwise.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    public operator func !=(other: AlbumType): Bool
}

/**
 * Defines the options for fetching media files.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
]
public class FetchOptions {
    /**
     * Indicates the members to query.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    public var fetchColumns: Array<String>

    /**
     * Predicates that specify the fetch criteria.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    public var predicates: DataSharePredicates

    /**
     * Create fetchOptions instance.
     *
     * @param {Array<String>} fetchColumns - indicates the members to query.
     * @param {DataSharePredicates} predicates - indicates specify the fetch criteria.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    public init(fetchColumns: Array<String>, predicates: DataSharePredicates)
}

/**
 * Enumerates the PhotoAsset types.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
]
public enum PhotoSubtype {
    
    /**
     * Default Photo Type
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    Default
    | 
    
    /**
     * Moving Photo Type
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    MovingPhoto
    | 

    /**
     * Burst Photo Type
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    Burst
    | ...
}


extend PhotoSubtype <: ToString {
    
    /**
     * Converts the PhotoSubtype to its string representation.
     * @returns { String } A string representation of the PhotoSubtype.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    public func toString(): String
}


extend PhotoSubtype <: Equatable<PhotoSubtype> {
    
    /**
     * Compares this PhotoSubtype with another for equality.
     * @param { PhotoSubtype } other - The PhotoSubtype to compare with.
     * @returns { Bool } True if both modes are equal, false otherwise.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    public operator func ==(other: PhotoSubtype): Bool
    
    /**
     * Compares this PhotoSubtype with another for inequality.
     * @param { PhotoSubtype } other - The PhotoSubtype to compare with.
     * @returns { Bool } True if both modes are not equal, false otherwise.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    public operator func !=(other: PhotoSubtype): Bool
}

/**
 * Enumerates the asset delivery modes.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
]
public enum DeliveryMode {
    
    /**
     * Fast mode.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    FastMode
    | 
    
    /**
     * High-quality mode.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    HighQualityMode
    | 
    
    /**
     * Balance mode.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    BalanceMode
    | ...
}


extend DeliveryMode <: ToString {
    
    /**
     * Converts the DeliveryMode to its string representation.
     * @returns { String } A string representation of the DeliveryMode.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    public func toString(): String
}


extend DeliveryMode <: Equatable<DeliveryMode> {
    
    /**
     * Compares this DeliveryMode with another for equality.
     * @param { DeliveryMode } other - The DeliveryMode to compare with.
     * @returns { Bool } True if both modes are equal, false otherwise.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    public operator func ==(other: DeliveryMode): Bool
    
    /**
     * Compares this DeliveryMode with another for inequality.
     * @param { DeliveryMode } other - The DeliveryMode to compare with.
     * @returns { Bool } True if both modes are not equal, false otherwise.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    public operator func !=(other: DeliveryMode): Bool
}

/**
 * PhotoViewMimeTypes represents the type of media resource that photo picker selects.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
]
public enum PhotoViewMimeTypes {
    
    /**
     * ImageType indicates that the selected media resources are images.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    ImageType
    | 
    
    /**
     * VideoType indicates that the selected media resources are videos.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    VideoType
    | 
    
    /**
     * ImageVideoType indicates that the selected media resources are images and videos.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    ImageVideoType
    | 
    
    /**
     * MovingPhotoImageType indicates that the selected media resources are moving photos.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    MovingPhotoImageType
    | ...
}


extend PhotoViewMimeTypes <: ToString {
    
    /**
     * Converts the PhotoViewMIMETypes to its string representation.
     * @returns { String } A string representation of the PhotoViewMIMETypes.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    public func toString(): String
}


extend PhotoViewMimeTypes <: Equatable<PhotoViewMIMETypes> {
    
    /**
     * Compares this PhotoViewMimeTypes with another for equality.
     * @param { PhotoViewMimeTypes } other - The PhotoViewMimeTypes to compare with.
     * @returns { Bool } True if both modes are equal, false otherwise.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    public operator func ==(other: PhotoViewMimeTypes): Bool
    
    /**
     * Compares this PhotoViewMimeTypes with another for inequality.
     * @param { PhotoViewMimeTypes } other - The PhotoViewMimeTypes to compare with.
     * @returns { Bool } True if both modes are not equal, false otherwise.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    public operator func !=(other: PhotoViewMimeTypes): Bool
}

/**
 * Enumerates the types of recommended images.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
]
public enum RecommendationType {
    
    /**
     * QrOrBarCode indicates that QR code or barcode photos can be recommended
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    QrOrBarCode
    | 
    
    /**
     * QrCode indicates that QR code photos can be recommended
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    QrCode
    | 
    
    /**
     * BarCode indicates that barcode photos can be recommended
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    BarCode
    | 
    
    /**
     * IdCard indicates that QR code or barcode photos can be recommended
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    IdCard
    | 
    
    /**
     * ProfilePicture indicates that profile picture photos can be recommended
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    ProfilePicture
    | 
    
    /**
     * PassPort indicates that passport photos can be recommended
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    Passport
    | 
    
    /**
     * BankCard indicates that bank card photos can be recommended
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    BankCard
    | 
    
    /**
     * DriverLicense indicates that driver license photos can be recommended
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    DriverLicense
    | 
    
    /**
     * DrivingLicense indicates that driving license photos can be recommended
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    DrivingLicense
    | 

    /**
     * FeaturedSinglePortrait indicates that featured single portrait photos can be recommended
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    FeaturedSinglePortrait
    | ...
}


extend RecommendationType <: ToString {
    
    /**
     * Converts the RecommendationType to its string representation.
     * @returns { String } A string representation of the RecommendationType.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    public func toString(): String
}


extend RecommendationType <: Equatable<RecommendationType> {
    
    /**
     * Compares this RecommendationType with another for equality.
     * @param { RecommendationType } other - The RecommendationType to compare with.
     * @returns { Bool } True if both modes are equal, false otherwise.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    public operator func ==(other: RecommendationType): Bool
    
    /**
     * Compares this RecommendationType with another for inequality.
     * @param { RecommendationType } other - The RecommendationType to compare with.
     * @returns { Bool } True if both modes are not equal, false otherwise.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    public operator func !=(other: RecommendationType): Bool
}

/**
 * Enumerates the formats for displaying media assets.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
]
public enum DynamicRangeType {
    
    /**
     * Standard dynamic range (Sdr).
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    Sdr
    | 

    /**
     * High dynamic range (Hdr).
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    Hdr
    | ...
}


extend DynamicRangeType <: ToString {
    
    /**
     * Converts the DynamicRangeType to its string representation.
     * @returns { String } A string representation of the DynamicRangeType.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    public func toString(): String
}


extend DynamicRangeType <: Equatable<DynamicRangeType> {
    
    /**
     * Compares this DynamicRangeType with another for equality.
     * @param { DynamicRangeType } other - The DynamicRangeType to compare with.
     * @returns { Bool } True if both modes are equal, false otherwise.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    public operator func ==(other: DynamicRangeType): Bool
    
    /**
     * Compares this DynamicRangeType with another for inequality.
     * @param { DynamicRangeType } other - The DynamicRangeType to compare with.
     * @returns { Bool } True if both modes are not equal, false otherwise.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    public operator func !=(other: DynamicRangeType): Bool
}

/**
 * Enumerates the types of the resources to write.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
]
public enum ResourceType {
    
    /**
     * Image resource
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    ImageResource
    | 

    /**
     * Video resource
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    VideoResource
    | ...
}


extend ResourceType <: ToString {
    
    /**
     * Converts the ResourceType to its string representation.
     * @returns { String } A string representation of the ResourceType.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    public func toString(): String
}


extend ResourceType <: Equatable<ResourceType> {
    
    /**
     * Compares this ResourceType with another for equality.
     * @param { ResourceType } other - The ResourceType to compare with.
     * @returns { Bool } True if both modes are equal, false otherwise.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    public operator func ==(other: ResourceType): Bool
    
    /**
     * Compares this ResourceType with another for inequality.
     * @param { ResourceType } other - The ResourceType to compare with.
     * @returns { Bool } True if both modes are not equal, false otherwise.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    public operator func !=(other: ResourceType): Bool
}

/**
 * Config to create photo asset
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
]
public class PhotoCreationConfig {
    /**
     * Extension of the asset
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    public var fileNameExtension: String

    /**
     * Specify photo type of the asset to create, include image or video
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    public var photoType: PhotoType

    /**
     * Title of the asset
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    public var title: String

    /**
     * Specify photo subtype of the asset to create, include default or moving_photo
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    public var subtype: PhotoSubtype

    /**
     * Create PhotoCreationConfig instance
     *
     * @param { String } fileNameExtension - indicates extension of the asset.
     * @param { PhotoType } photoType - indicates indicates specify photo type of the asset to create, include image or video.
     * @param { String } [title] - indicates title of the asset.
     * @param { PhotoSubtype } [subtype] - indicates specify photo subtype of the asset to create, include default or moving_photo.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    public init(fileNameExtension: String, photoType: PhotoType, title!: String = "", subtype!: PhotoSubtype = Default)
}

/**
 * Enumeration types of data change.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
]
public enum NotifyType {
    
    /**
     * Data(assets or albums) have been newly created
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    NotifyAdd
    | 
    
    /**
     * Data(assets or albums) have been modified
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    NotifyUpdate
    | 
    
    /**
     * Data(assets or albums) have been removed
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    NotifyRemove
    | 
    
    /**
     * Assets have been added to an album.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    NotifyAlbumAddAsset
    | 

    /**
     * Assets have been removed from an album.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    NotifyAlbumRemoveAsset
    | ...
}


extend NotifyType <: ToString {
    
    /**
     * Converts the NotifyType to its string representation.
     * @returns { String } A string representation of the NotifyType.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    public func toString(): String
}


extend NotifyType <: Equatable<NotifyType> {
    
    /**
     * Compares this NotifyType with another for equality.
     * @param { NotifyType } other - The NotifyType to compare with.
     * @returns { Bool } True if both modes are equal, false otherwise.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    public operator func ==(other: NotifyType): Bool
    
    /**
     * Compares this NotifyType with another for inequality.
     * @param { NotifyType } other - The NotifyType to compare with.
     * @returns { Bool } True if both modes are not equal, false otherwise.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    public operator func !=(other: NotifyType): Bool
}

/**
 * Defines the change data
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
]
public class ChangeData {
    /**
     * The NotifyType of ChangeData
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    public var notifyType: NotifyType

    /**
     * The changed uris
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    public var uris: Array<String>

    /**
     * Change details of the asset uris to an album.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    public var extraUris: Array<String>
}

/**
 * Options for creating an image or video asset.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
]
public class CreateOptions {
    /**
     * Title of the asset
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    public var title: String = ""

    /**
     * Specify subtype of the asset to create
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    public var subtype: PhotoSubtype

    /**
     * Create CreateOptions instance
     *
     * @param { String } [title] - indicates title of the asset.
     * @param { PhotoSubtype } [subtype] - indicates specify subtype of the asset to create.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    public init(title!: String = "", subtype!: PhotoSubtype = Default)
}

/**
 * Options to request media asset
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
]
public class RequestOptions {
    /**
     * Indicates the delivery mode
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    public var deliveryMode: DeliveryMode
}

/**
 * Enumeration of photo asset members
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
]
public enum PhotoKeys <: ToString {
    
    /**
     * Asset uri
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    Uri
    | 
    
    /**
     * Photo type of the asset
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    PhotoType
    | 
    
    /**
     * Asset name
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    DisplayName
    | 
    
    /**
     * Size of the asset
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    Size
    | 
    
    /**
     * Creation date of the asset
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    DateAdded
    | 
    
    /**
     * Modified date of the asset
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    DateModified
    | 
    
    /**
     * Duration of video files
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    Duration
    | 
    
    /**
     * Width of the image asset
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    Width
    | 
    
    /**
     * Height of the image asset
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    Height
    | 
    
    /**
     * Date taken of the asset
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    DateTaken
    | 
    
    /**
     * Orientation of the image asset
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    Orientation
    | 
    
    /**
     * Favorite state of the asset
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    Favorite
    | 
    
    /**
     * Title of the asset
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    Title
    | 
    
    /**
     * Creation time of the asset in milliseconds
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    DateAddedMs
    | 
    
    /**
     * Modified time of the asset in milliseconds
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    DateModifiedMs
    | 
    
    /**
     * Photo subtype of the asset
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    PhotoSubtype
    | 
    
    /**
     * Dynamic range type of the asset
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    DynamicRangeType
    | 
    
    /**
     * Cover position of the asset
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    CoverPosition
    | 
    
    /**
     * Unique uuid of the burst photos
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    BurstKey
    | 
    
    /**
     * Width and height information of lcd picture
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    LcdSize
    | 

    /**
     * Width and height information of thumbnail picture
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    ThumbnailSize
    | ...

    
    /**
     * Converts the PhotoKeys to its string representation.
     * @returns A string representation of the PhotoKeys.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    public func toString(): String
}


extend PhotoKeys <: Equatable<PhotoKeys> {
    
    /**
     * Compares this PhotoKeys with another for equality.
     * @param { PhotoKeys } other - The PhotoKeys to compare with.
     * @returns { Bool } True if both modes are equal, false otherwise.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    public operator func ==(other: PhotoKeys): Bool
    
    /**
     * Compares this PhotoKeys with another for inequality.
     * @param { PhotoKeys } other - The PhotoKeys to compare with.
     * @returns { Bool } True if both modes are not equal, false otherwise.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    public operator func !=(other: PhotoKeys): Bool
}

/**
 * Enumeration uris for registerChange.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
]
public enum DefaultChangeUri <: ToString {
    
    /**
     * Uri for default PhotoAsset, use with forDescendant{true}, will receive all PhotoAsset's change notifications
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    DefaultPhotoUri
    | 

    /**
     * Uri for default Album, use with forDescendant{true}, will receive all Album's change notifications
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    DefaultAlbumUri
    | ...

    
    /**
     * Converts the DefaultChangeUri to its string representation.
     * @returns A string representation of the DefaultChangeUri.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    public func toString(): String
}


extend DefaultChangeUri <: Equatable<DefaultChangeUri> {
    
    /**
     * Compares this DefaultChangeUri with another for equality.
     * @param { DefaultChangeUri } other - The DefaultChangeUri to compare with.
     * @returns { Bool } True if both modes are equal, false otherwise.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    public operator func ==(other: DefaultChangeUri): Bool
    
    /**
     * Compares this DefaultChangeUri with another for inequality.
     * @param { DefaultChangeUri } other - The DefaultChangeUri to compare with.
     * @returns { Bool } True if both modes are not equal, false otherwise.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    public operator func !=(other: DefaultChangeUri): Bool
}

/**
 * Enumerates the key album attributes.
 *
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
]
public enum AlbumKeys <: ToString {
    
    /**
     * URI of the album.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    Uri
    | 

    /**
     * Name of the album.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    AlbumName
    | ...

    
    /**
     * Converts the AlbumKeys to its string representation.
     * @returns A string representation of the AlbumKeys.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    public func toString(): String
}


extend AlbumKeys <: Equatable<AlbumKeys> {
    
    /**
     * Compares this AlbumKeys with another for equality.
     * @param { AlbumKeys } other - The AlbumKeys to compare with.
     * @returns { Bool } True if both modes are equal, false otherwise.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    public operator func ==(other: AlbumKeys): Bool
    
    /**
     * Compares this AlbumKeys with another for inequality.
     * @param { AlbumKeys } other - The AlbumKeys to compare with.
     * @returns { Bool } True if both modes are not equal, false otherwise.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    public operator func !=(other: AlbumKeys): Bool
}

/**
 * Enumerates media file types.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
]
public enum PhotoType {
    
    /**
     * Image asset
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    Image
    | 

    /**
     * Video asset
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    Video
    | ...
}


extend PhotoType <: ToString {
    
    /**
     * Converts the PhotoType to its string representation.
     * @returns { String } A string representation of the PhotoType.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    public func toString(): String
}


extend PhotoType <: Equatable<PhotoType> {
    
    /**
     * Compares this PhotoType with another for equality.
     * @param { PhotoType } other - The PhotoType to compare with.
     * @returns { Bool } True if both modes are equal, false otherwise.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    public operator func ==(other: PhotoType): Bool
    
    /**
     * Compares this PhotoType with another for inequality.
     * @param { PhotoType } other - The PhotoType to compare with.
     * @returns { Bool } True if both modes are not equal, false otherwise.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    public operator func !=(other: PhotoType): Bool
}

/**
 * Indicates the type of photo asset member.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
]
public enum MemberType {
    /**
     * Indicates the type of photo asset member.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ] 
    Int64Value(Int64)
    | 
    /**
     * Indicates the type of photo asset member.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ] 
    StringValue(String)
    | 
    /**
     * Indicates the type of photo asset member.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ] 
    BoolValue(Bool)
    | ...
}

/**
 * Provides APIs for encapsulating file asset attributes.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
]
public class PhotoAsset {
    /**
     * uri of the asset.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    public prop uri: String

    /**
     * Photo type, image or video
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    public prop photoType: PhotoType

    /**
     * Display name (with a file name extension) of the asset.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core"
    ]
    public prop displayName: String

    /**
     * Obtains a PhotoAsset member parameter.
     * @param { String } member - Photo asset member. for example : get(PhotoKeys.Size)
     * @returns { MemberType } Returns the value of the specified photo asset member
     * @throws { BusinessException } 13900020 - Invalid argument
     * @throws { BusinessException } 14000014 - The provided member must be a property name of PhotoKey.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core",
        throwexception: true
    ]
    public func get(member: String): MemberType

    /**
     * Sets a PhotoAsset member parameter.
     * @param { String } member - Photo asset member
     * @param { String } value - The new value of the member.
     * @throws { BusinessException } 13900020 - Invalid argument
     * @throws { BusinessException } 14000014 - The provided member must be a property name of PhotoKey.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core",
        throwexception: true
    ]
    public func set(member: String, value: String): Unit

    /**
     * Commits the modification on the file metadata to the database.
     * @throws { BusinessException } 201 - Permission denied
     * @throws { BusinessException } 13900020 - Invalid argument
     * @throws { BusinessException } 14000001 - Invalid display name
     * @throws { BusinessException } 14000011 - System inner fail
     */
    @!APILevel[
        since: "22",
        permission: "ohos.permission.WRITE_IMAGEVIDEO",
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core",
        throwexception: true,
        workerthread: true
    ]
    public func commitModify(): Unit

    /**
     * Obtains the file thumbnail of the given size.
     * @param { ?Size } [size] - Size of the thumbnail.
     * @returns { PixelMap } Returns the thumbnail's pixelMap.
     * @throws { BusinessException } 13900012 - Permission denied
     * @throws { BusinessException } 13900020 - Invalid argument
     * @throws { BusinessException } 14000011 - System inner fail
     */
    @!APILevel[
        since: "22",
        permission: "ohos.permission.READ_IMAGEVIDEO",
        syscap: "SystemCapability.FileManagement.PhotoAccessHelper.Core",
        throwexception: true,
        workerthread: true
    ]
    public func getThumbnail(size!: ?Size = Size(256, 256)): PixelMap
}
