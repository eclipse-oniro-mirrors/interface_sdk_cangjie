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

package ohos.security.crypto_framework

import ohos.business_exception.AsyncCallback
import ohos.labels.APILevel	
import std.math.numeric.BigInt

/**
 * Create a cipher object for encryption and decryption operations according to the given specifications.
 * Two different Cipher objects should be created when using RSA encryption and decryption,
 * even with the same specifications.
 *
 * @param { String } transformation - indicates the description to be transformed to cipher specifications.
 *                                    Multiple parameters need to be concatenated by "|".
 * @returns { Cipher } the cipher object returned by the function.
 * @throws { BusinessException } 801 - this operation is not supported.
 * @throws { BusinessException } 17620001 - memory operation failed.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Security.CryptoFramework.Cipher",
    throwexception: true
]
public func createCipher(transformation: String): Cipher

/**
 * Provides the Cipher type, which is used for encryption and decryption operations.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Security.CryptoFramework.Cipher"
]
public class Cipher {
    /**
     * Indicates the algorithm name of the cipher object.
     *
     * @returns { String } algName representation of the Result.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.CryptoFramework.Cipher"
    ]
    public prop algName: String

    /**
     * Init the crypto operation with the given crypto mode, key and parameters.
     * init, update, and doFinal must be used together. init and doFinal are mandatory, and update is optional.
     *
     * @param { CryptoMode } opMode - indicates the crypto mode is encryption or decryption.
     * @param { Key } key - indicates the symmetric key or the asymmetric key.
     * @param { ?ParamsSpec } params - indicates the algorithm parameters such as IV.
     * @throws { BusinessException } 17620001 - memory operation failed.
     * @throws { BusinessException } 17620002 - failed to convert parameters between cj and c.
     * @throws { BusinessException } 17630001 - crypto operation error.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.CryptoFramework.Cipher",
        throwexception: true
    ]
    public func initialize(opMode: CryptoMode, key: Key, params: ?ParamsSpec): Unit

    /**
     * Update the crypto operation with the input data, and feed back the encrypted or decrypted data
     * this time. RSA is not supported in this function.
     *
     * @param { DataBlob } data - indicates the data to be encrypted or decrypted.
     * @returns { DataBlob } the data returned by the function.
     * @throws { BusinessException } 17620001 - memory operation failed.
     * @throws { BusinessException } 17620002 - failed to convert parameters between cj and c.
     * @throws { BusinessException } 17630001 - crypto operation error.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.CryptoFramework.Cipher",
        throwexception: true,
        workerthread: true
    ]
    public func update(data: DataBlob): DataBlob

    /**
     * Finish the crypto operation, encrypt or decrypt the input data, and then feed back the output data.
     * Data cannot be updated after the crypto operation is finished.
     *
     * @param { DataBlob } data - indicates the data to be finally encrypted or decrypted.
     * @throws { BusinessException } 17620001 - memory operation failed.
     * @throws { BusinessException } 17620002 - failed to convert parameters between cj and c.
     * @throws { BusinessException } 17630001 - crypto operation error.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.CryptoFramework.Cipher",
        throwexception: true,
        workerthread: true
    ]
    public func doFinal(data: ?DataBlob): DataBlob
}

/**
 * Defines a buffer array of the Binary Large Object (BLOB) type.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Security.CryptoFramework"
]
public class DataBlob {
    /**
     * Indicates the content of data blob.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.CryptoFramework"
    ]
    public var data: Array<UInt8>

    /**
     * DataBlob constructor.
     *
     * @param { Array<UInt8> } data - indicates the  data blob.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.CryptoFramework"
    ]
    public init(data: Array<UInt8>)
}

/**
 * Defines the child class of ParamsSpec. It is a parameter of init for symmetric encryption or decryption.
 * IvParamsSpec applies to the cipher modes such as CBC, CTR, OFB, and CFB, which use only the IV.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Security.CryptoFramework.Cipher"
]
public class IvParamsSpec <: ParamsSpec {
    /**
     * IV for encryption or decryption.
     * Options:
     * - AES CBC, CTR, OFB, or CFB mode: 16-byte IV
     * - 3DES CBC, OFB, or CFB mode: 8-byte IV
     * - SM4 CBC, CTR, OFB, or CFB mode: 16-byte IV
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.CryptoFramework.Cipher"
    ]
    public var iv: DataBlob

    /**
     * IvParamsSpec constructor.
     *
     * @param { String } algName - Indicates the algorithm name.
     * @param { DataBlob } iv - indicates the data blob.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.CryptoFramework.Cipher"
    ]
    public init(algName: String, iv: DataBlob)
}

/**
 * Provides the GcmParamsSpec type, including the parameter iv, aad and authTag.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Security.CryptoFramework.Cipher"
]
public class GcmParamsSpec <: ParamsSpec {
    /**
     * Indicates the additional Authenticated Data in GCM mode.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.CryptoFramework.Cipher"
    ]
    public var aad: DataBlob

    /**
     * Indicates the GCM algorithm parameters such as iv.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.CryptoFramework.Cipher"
    ]
    public var iv: DataBlob

    /**
     * Indicates the output tag from the encryption operation. The tag is used for integrity check.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.CryptoFramework.Cipher"
    ]
    public var authTag: DataBlob

    /**
     * GcmParamsSpec constructor.
     *
     * @param { String } algName - Indicates the algorithm name.
     * @param { DataBlob } iv - Indicates the GCM algorithm parameters such as iv.
     * @param { DataBlob } aad - Indicates the additional Authenticated Data in GCM mode.
     * @param { DataBlob } authTag - Indicates the output tag from the encryption operation. The tag is used for integrity check.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.CryptoFramework.Cipher"
    ]
    public init(algName: String, iv: DataBlob, aad: DataBlob, authTag: DataBlob)
}

/**
 * Provides the CcmParamsSpec type, including the parameter iv, aad and authTag.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Security.CryptoFramework.Cipher"
]
public class CcmParamsSpec <: ParamsSpec {
    /**
     * Indicates the output tag from the encryption operation. The tag is used for integrity check.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.CryptoFramework.Cipher"
    ]
    public var authTag: DataBlob

    /**
     * Indicates the Additional Authenticated Data in CCM mode.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.CryptoFramework.Cipher"
    ]
    public var aad: DataBlob

    /**
     * Indicates the GCM algorithm parameters such as IV.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.CryptoFramework.Cipher"
    ]
    public var iv: DataBlob

    /**
     * CcmParamsSpec constructor.
     *
     * @param { String } algName - Indicates the algorithm name.
     * @param { DataBlob } iv - Indicates the GCM algorithm parameters such as IV.
     * @param { DataBlob } aad - Indicates the Additional Authenticated Data in CCM mode.
     * @param { DataBlob } authTag - Indicates the output tag from the encryption operation. The tag is used for integrity check.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.CryptoFramework.Cipher"
    ]
    public init(algName: String, iv: DataBlob, aad: DataBlob, authTag: DataBlob)
}

/**
 * Enumerates the cryptographic operations.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Security.CryptoFramework.Cipher"
]
public enum CryptoMode {
    /**
     * The value of encryption operation for AES, 3DES and RSA.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.CryptoFramework.Cipher"
    ]
    EncryptMode
    | 
    
    /**
     * The value of decryption operation for AES, 3DES and RSA.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.CryptoFramework.Cipher"
    ]
    DecryptMode
    | ...
}


extend CryptoMode <: ToString {
    
    /**
     * Converts the CryptoMode to its string representation.
     * @returns { String } A representation of the CryptoMode.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.CryptoFramework.Cipher"
    ]
    public func toString(): String
}


extend CryptoMode <: Equatable<CryptoMode> {
    
    /**
     * Compares this CryptoMode with another for equality.
     * @param { CryptoMode } other - The CryptoMode to compare with.
     * @returns { Bool } True if both modes are equal, false otherwise.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.CryptoFramework.Cipher"
    ]
    public operator func ==(other: CryptoMode): Bool
    
    /**
     * Compares this CryptoMode with another for inequality.
     * @param { CryptoMode } other - The CryptoMode to compare with.
     * @returns { Bool } True if both modes are not equal, false otherwise.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.CryptoFramework.Cipher"
    ]
    public operator func !=(other: CryptoMode): Bool
}

/**
 * Enum for encryption specified parameters.
 * You can use setCipherSpec to set cipher parameters, and use getCipherSpec to obtain cipher parameters.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Security.CryptoFramework.Cipher"
]
public enum CipherSpecItem {
    /**
     * Indicates the algorithm name of the message digest function. It is used during RSA encryption.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.CryptoFramework.Cipher"
    ]
    OaepMdNameStr
    | 

    /**
     * Indicates the algorithm name for the mask generation function. It is used during RSA encryption.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.CryptoFramework.Cipher"
    ]
    OaepMgfNameStr
    | 

    /**
     * Indicates the message digest parameter for the MGF1 mask generation function. It is used during RSA encryption.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.CryptoFramework.Cipher"
    ]
    OaepMgf1MdStr
    | 
    
    /**
     * Indicates the source of the encoding input P. It is used during RSA encryption.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.CryptoFramework.Cipher"
    ]
    OaepMgf1PsrcUint8Arr
    | ...
}


extend CipherSpecItem <: ToString {
    
    /**
     * Converts the CipherSpecItem to its string representation.
     * @returns { String } A representation of the CipherSpecItem.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.CryptoFramework.Cipher"
    ]
    public func toString(): String
}


extend CipherSpecItem <: Equatable<CipherSpecItem> {
    
    /**
     * Compares this CipherSpecItem with another for equality.
     * @param { CipherSpecItem } other -  The CipherSpecItem to compare with.
     * @returns { Bool } True if both modes are equal, false otherwise.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.CryptoFramework.Cipher"
    ]
    public operator func ==(other: CipherSpecItem): Bool
    
    /**
     * Compares this CipherSpecItem with another for inequality.
     * @param { CipherSpecItem } other -  The CipherSpecItem to compare with.
     * @returns { Bool } True if both modes are not equal, false otherwise.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.CryptoFramework.Cipher"
    ]
    public operator func !=(other: CipherSpecItem): Bool
}

/**
 * Enum for signature verification parameters, which can be set by using setVerifySpec, and obtained by using
 * getVerifySpec.
 *
 * Currently, only RSA and SM2 are supported.
 */
@!APILevel[
    since: "26.1.0",
    syscap: "SystemCapability.Security.CryptoFramework.Signature"
]
public enum SignSpecItem {
    /**
     * Message digest algorithm used with the PSS padding mode in RSA.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Security.CryptoFramework.Signature"
    ]
    PssMdNameStr
    |
    /**
     * Mask generation algorithm used with the PSS padding mode in RSA. Currently, only MGF1 is supported.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Security.CryptoFramework.Signature"
    ]
    PssMgfNameStr
    |
    /**
     * Message digest algorithm for the MGF1 mask generation used with the PSS padding mode in RSA.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Security.CryptoFramework.Signature"
    ]
    PssMgf1MdStr
    |
    /**
     * Length of the salt in bytes used with the PSS padding mode in RSA.
     *
     * According to the FIPS 186-4 standard, sLen should be greater than or equal to 0 and less than or equal to the
     * hash length.
     *
     * Default values:
     * - For sign, automatically calculate the maximum salt length.
     * - For verify, automatically calculate the salt length.
     *
     * Special values:
     * - For sign, you can also set the value to -1 to use the digest length as the salt length, and -2 or -3 to
     * automatically calculate the maximum salt length. The recommended value is -1.
     * - For verify, you can also set the value to -1 to use the digest length as the salt length, -2 to automatically
     * calculate the salt length, or -3 to use the maximum salt length. The recommended value is -2.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Security.CryptoFramework.Signature"
    ]
    PssSaltLenNum
    |
    /**
     * Trailer field used in the encoding operation when PSS padding mode is used in RSA.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Security.CryptoFramework.Signature"
    ]
    PssTrailerFieldNum
    |
    /**
     * User ID field in SM2.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Security.CryptoFramework.Signature"
    ]
    Sm2UserIdUint8arr
    |
    /**
     * Indicates whether deterministic signing is used for the ML-DSA signing and verifying process.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Security.CryptoFramework.Signature"
    ]
    MlDsaDeterministicBool
    |
    /**
     * Indicates the mu parameter value for the ML-DSA signing and verifying process.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Security.CryptoFramework.Signature"
    ]
    MlDsaMuBool
    |
    /**
     * Indicates the context data for the ML-DSA signing and verifying process.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Security.CryptoFramework.Signature"
    ]
    MlDsaContextUint8arr
    | ...
}


extend SignSpecItem <: ToString {

    /**
     * Converts the SignSpecItem to its string representation.
     * @returns { String } A string representation of the SignSpecItem.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Security.CryptoFramework.Signature"
    ]
    public func toString(): String
}


extend SignSpecItem <: Equatable<SignSpecItem> {

    /**
     * Compares this SignSpecItem with another for equality.
     * @param { SignSpecItem } other - The SignSpecItem to compare with.
     * @returns { Bool } True if both modes are equal, false otherwise.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Security.CryptoFramework.Signature"
    ]
    public operator func ==(other: SignSpecItem): Bool

    /**
     * Compares this SignSpecItem with another for inequality.
     * @param { SignSpecItem } other - The SignSpecItem to compare with.
     * @returns { Bool } True if both modes are not equal, false otherwise.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Security.CryptoFramework.Signature"
    ]
    public operator func !=(other: SignSpecItem): Bool
}


/**
 * Provides the Key type, which is the common parent class of keys.
 * Before performing cryptographic operations, you need to construct a child class object of Key and pass it to init of
 * the Cipher instance.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Security.CryptoFramework.Key"
]
public interface Key {
    /**
     * Indicates the format of the key object.
     *
     * @returns { String } format representation of the Result.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.CryptoFramework.Key"
    ]
    prop format: String

    /**
     * Indicates the algorithm name of the key object. This parameter contains the key length if the key is a symmetric
     * key.
     *
     * @returns { String } algName representation of the Result.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.CryptoFramework.Key"
    ]
    prop algName: String

    /**
     * Encode the key object to binary data.
     * The key can be a symmetric key, public key, or private key.
     * The public key must be in DER encoding format and comply with the ASN.1 syntax and X.509 specifications.
     * The private key must be in DER encoding format and comply with the ASN.1 syntax and PKCS#8 specifications.
     *
     * @returns { DataBlob } the binary data of the key object.
     * @throws { BusinessException } 801 - this operation is not supported.
     * @throws { BusinessException } 17620001 - memory operation failed.
     * @throws { BusinessException } 17630001 - crypto operation error.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.CryptoFramework.Key",
        throwexception: true
    ]
    func getEncoded(): DataBlob
}

/**
 * Provides APIs for private key operations. PriKey is a child class of Key. It needs to be passed in during
 * asymmetric decryption, signing, and key agreement.
 *
 * The private key can be generated by using the asymmetric key generator AsyKeyGenerator or AsyKeyGeneratorBySpec.
 */
@!APILevel[
    since: "26.1.0",
    syscap: "SystemCapability.Security.CryptoFramework.Key.AsymKey"
]
public class PriKey <: Key {
    /**
     * Indicates the format of the key object.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Security.CryptoFramework.Key"
    ]
    public prop format: String

    /**
     * Indicates the algorithm name of the key object. This parameter contains the key length if the key is a symmetric
     * key.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Security.CryptoFramework.Key"
    ]
    public prop algName: String

    /**
     * Clears the key data in memory. This API returns the result synchronously.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Security.CryptoFramework.Key.AsymKey"
    ]
    public func clearMem(): Unit

    /**
     * Obtains a key parameter. This API returns the result synchronously.
     *
     * @param { AsyKeySpecItem } itemType - Key parameter type to obtain.
     * @returns { ResultSpec } Content of the key parameter obtained.
     * @throws { BusinessException } 801 - This operation is not supported.
     * @throws { BusinessException } 17620001 - Memory operation failed.
     * @throws { BusinessException } 17630001 - Crypto operation error.
     * @throws { BusinessException } 17620003 - Parameter check failed.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Security.CryptoFramework.Key.AsymKey",
        throwexception: true
    ]
    public func getAsyKeySpec(itemType: AsyKeySpecItem): ResultSpec

    /**
     * Obtains the private key data that complies with the ASN.1 syntax and DER encoding based on the specified format
     * (such as the key specifications).
     *
     * Note:
     * The difference between Key.getEncoded() and this API is as follows:
     * 1. You can specify the format of the key data to be obtained in this API.
     * 2. The format of the key data to be obtained cannot be specified in Key.getEncoded().
     *
     * @param { String } format - Format of the key. Supports EC keys, with the format value 'PKCS8' supported.
     *     Since API version 26.0.0, RSA keys are supported, with the format values 'PKCS1' and 'PKCS8' supported.
     *     Since API version 26.0.0, ML-DSA and ML-KEM keys are supported, with the format value 'X509' supported.
     * @returns { DataBlob } Private key data in DER encoding.
     * @throws { BusinessException } 17620001 - Memory operation failed.
     * @throws { BusinessException } 17630001 - Crypto operation error.
     * @throws { BusinessException } 17620003 - Parameter check failed.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Security.CryptoFramework.Key.AsymKey",
        throwexception: true
    ]
    public func getEncodedDer(format: String): DataBlob

    /**
     * Obtains the private key data in PEM encoding. This API returns the result synchronously.
     *
     * @param { String } format - Encoding format of the key data to obtain. Supports RSA keys, with the format value
     *     'PKCS8' or 'PKCS1' supported.
     *     Since API version 26.0.0, EC keys are supported, with the format values 'PKCS8' or 'EC' supported.
     *     Since API version 26.0.0, ML-DSA and ML-KEM keys are supported, with the format value 'PKCS8' supported.
     * @returns { String } Private key data in PEM encoding.
     * @throws { BusinessException } 17620001 - Memory operation failed.
     * @throws { BusinessException } 17630001 - Crypto operation error.
     * @throws { BusinessException } 17620003 - Parameter check failed.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Security.CryptoFramework.Key.AsymKey",
        throwexception: true
    ]
    public func getEncodedPem(format: String): String

    /**
     * Encode the key object to binary data.
     * The key can be a symmetric key, public key, or private key.
     * The public key must be in DER encoding format and comply with the ASN.1 syntax and X.509 specifications.
     * The private key must be in DER encoding format and comply with the ASN.1 syntax and PKCS#8 specifications.
     *
     * @returns { DataBlob } the binary data of the key object.
     * @throws { BusinessException } 801 - this operation is not supported.
     * @throws { BusinessException } 17620001 - memory operation failed.
     * @throws { BusinessException } 17630001 - crypto operation error.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Security.CryptoFramework.Key",
        throwexception: true
    ]
    public func getEncoded(): DataBlob
}

/**
 * Provides APIs for public key operations. PubKey is a child class of Key. It needs to be passed in during
 * asymmetric encryption, signature verification, and key agreement.
 *
 * The public key can be generated by using the asymmetric key generator AsyKeyGenerator or AsyKeyGeneratorBySpec.
 */
@!APILevel[
    since: "26.1.0",
    syscap: "SystemCapability.Security.CryptoFramework.Key.AsymKey"
]
public class PubKey <: Key {
    /**
     * Indicates the format of the key object.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Security.CryptoFramework.Key"
    ]
    public prop format: String

    /**
     * Indicates the algorithm name of the key object. This parameter contains the key length if the key is a symmetric
     * key.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Security.CryptoFramework.Key"
    ]
    public prop algName: String

    /**
     * Obtains a key parameter. This API returns the result synchronously.
     *
     * @param { AsyKeySpecItem } itemType - Key parameter to obtain.
     * @returns { ResultSpec } Content of the key parameter obtained.
     * @throws { BusinessException } 17620001 - Memory operation failed.
     * @throws { BusinessException } 17630001 - Crypto operation error.
     * @throws { BusinessException } 801 - This operation is not supported.
     * @throws { BusinessException } 17620003 - Parameter check failed.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Security.CryptoFramework.Key.AsymKey",
        throwexception: true
    ]
    public func getAsyKeySpec(itemType: AsyKeySpecItem): ResultSpec

    /**
     * Obtains the public key data that complies with the ASN.1 syntax and DER encoding format based on the specified
     * key format (such as the specifications and compression status).
     *
     * Note:
     * The difference between Key.getEncoded() and this API is as follows:
     * 1. You can specify the format of the data to be obtained in this API.
     * 2. The format of the key to be obtained cannot be specified in Key.getEncoded().
     *
     * @param { String } format - Format of the key. Supports EC keys, with the format values 'X509|COMPRESSED' and
     *     'X509|UNCOMPRESSED' supported.
     *     Since API version 26.0.0, RSA keys are supported, with the format values 'PKCS1' and 'X509' supported.
     *     Since API version 26.0.0, ML-DSA and ML-KEM keys are supported, with the format value 'X509' supported.
     * @returns { DataBlob } Public key data in DER encoding.
     * @throws { BusinessException } 17620001 - Memory operation failed.
     * @throws { BusinessException } 17630001 - Crypto operation error.
     * @throws { BusinessException } 17620003 - Parameter check failed.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Security.CryptoFramework.Key.AsymKey",
        throwexception: true
    ]
    public func getEncodedDer(format: String): DataBlob

    /**
     * Obtains the public key data in PEM encoding. This API returns the result synchronously.
     *
     * @param { String } format - Encoding format of the key data to obtain. Supports RSA keys, with the format values
     *     'X509' or 'PKCS1' supported.
     *     Since API version 26.0.0, EC, ML-DSA, and ML-KEM keys are supported, with the format value 'X509'
     *     supported.
     * @returns { String } Public key data in PEM encoding.
     * @throws { BusinessException } 17620001 - Memory operation failed.
     * @throws { BusinessException } 17630001 - Crypto operation error.
     * @throws { BusinessException } 17620003 - Parameter check failed.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Security.CryptoFramework.Key.AsymKey",
        throwexception: true
    ]
    public func getEncodedPem(format: String): String

    /**
     * Encode the key object to binary data.
     * The key can be a symmetric key, public key, or private key.
     * The public key must be in DER encoding format and comply with the ASN.1 syntax and X.509 specifications.
     * The private key must be in DER encoding format and comply with the ASN.1 syntax and PKCS#8 specifications.
     *
     * @returns { DataBlob } the binary data of the key object.
     * @throws { BusinessException } 801 - this operation is not supported.
     * @throws { BusinessException } 17620001 - memory operation failed.
     * @throws { BusinessException } 17630001 - crypto operation error.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Security.CryptoFramework.Key",
        throwexception: true
    ]
    public func getEncoded(): DataBlob
}

/**
 * Defines an asymmetric key pair, which includes a public key and a private key.
 *
 * The asymmetric key pair can be generated by using the asymmetric key generator AsyKeyGenerator or
 * AsyKeyGeneratorBySpec.
 *
 * Note:
 * The pubKey and priKey objects are members of the KeyPair object. When the KeyPair object is out of the scope, its
 * pubKey and priKey objects will be destructed.
 *
 * The service must reference the KeyPair object instead of the internal pubKey or priKey object.
 */
@!APILevel[
    since: "26.1.0",
    syscap: "SystemCapability.Security.CryptoFramework.Key.AsymKey"
]
public class KeyPair {
    /**
     * KeyPair's private key.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Security.CryptoFramework.Key.AsymKey"
    ]
    public prop priKey: PriKey

    /**
     * KeyPair's public key.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Security.CryptoFramework.Key.AsymKey"
    ]
    public prop pubKey: PubKey
}

/**
 * Encapsulates the parameters used for encryption or decryption.You need to construct its child class object and
 * pass it to init for symmetric encryption or decryption.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Security.CryptoFramework.Cipher"
]
public open class ParamsSpec {
    /**
     * Indicates the algorithm name. Should be set before initialization of a cipher object.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.CryptoFramework.Cipher"
    ]
    public var algName: String
}

/**
 * Creates a Mac instance for MAC operations.
 *
 * @param { String } algName - indicates the mac algorithm name.
 * @returns { Mac } returns the created mac instance.
 * @throws { BusinessException } 17620001 - memory operation failed.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Security.CryptoFramework.Mac",
    throwexception: true
]
public func createMac(algName: String): Mac

/**
 * Provides the Mac type, which is used for Mac generation.
 * Before using any API of the Mac class, you must create a Mac instance by using createMac.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Security.CryptoFramework.Mac"
]
public class Mac {
    /**
     * Indicates the algorithm name.
     *
     * @returns { String } algName representation of the Result.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.CryptoFramework.Mac"
    ]
    public prop algName: String

    /**
     * Init mac with given SymKey.
     * This API uses an asynchronous callback to return the result. init, update, and doFinal must be used together.
     * init and doFinal are mandatory, and update is optional.
     *
     * @param { SymKey } key - indicates the SymKey.
     * @throws { BusinessException } 17620001 - memory operation failed.
     * @throws { BusinessException } 17630001 - crypto operation error.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.CryptoFramework.Mac",
        throwexception: true
    ]
    public func initialize(key: SymKey): Unit

    /**
     * Update mac with DataBlob.
     *
     * @param { DataBlob } input - indicates the DataBlob.
     * @throws { BusinessException } 17620001 - memory operation failed.
     * @throws { BusinessException } 17630001 - crypto operation error.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.CryptoFramework.Mac",
        throwexception: true,
        workerthread: true
    ]
    public func update(input: DataBlob): Unit

    /**
     * Output the result of mac calculation.
     *
     * @returns { DataBlob } returns the data blob of the result.
     * @throws { BusinessException } 17620001 - memory operation failed.
     * @throws { BusinessException } 17620002 - failed to convert parameters between cj and c.
     * @throws { BusinessException } 17630001 - crypto operation error.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.CryptoFramework.Mac",
        throwexception: true,
        workerthread: true
    ]
    public func doFinal(): DataBlob

    /**
     * Output the length of hmac result.
     *
     * @returns { UInt32 } returns the length of the mac result.
     * @throws { BusinessException } 17630001 - crypto operation error.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.CryptoFramework.Mac",
        throwexception: true
    ]
    public func getMacLength(): UInt32
}

/**
 * Creates an Md instance for MD operations.
 *
 * @param { String } algName - indicates the md algorithm name.
 * @returns { Md } returns the created md instance.
 * @throws { BusinessException } 17620001 - memory operation failed.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Security.CryptoFramework.MessageDigest",
    throwexception: true
]
public func createMd(algName: String): Md

/**
 * Provides the Md type, which is used for Md generation.
 * Before using any API of the Md class, you must create an Md instance by using createMd.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Security.CryptoFramework.MessageDigest"
]
public class Md {
    /**
     * Indicates the algorithm name.
     *
     * @returns { String } algName representation of the Result.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.CryptoFramework.MessageDigest"
    ]
    public prop algName: String

    /**
     * Update md with DataBlob.
     *
     * @param { DataBlob } input - indicates the DataBlob.
     * @throws { BusinessException } 17620001 - memory operation failed.
     * @throws { BusinessException } 17630001 - crypto operation error.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.CryptoFramework.MessageDigest",
        throwexception: true
    ]
    public func update(input: DataBlob): Unit

    /**
     * Output the result of md calculation.
     *
     * @returns { DataBlob } Return DataBlob of the result.
     * @throws { BusinessException } 17620001 - memory operation failed.
     * @throws { BusinessException } 17620002 - failed to convert parameters between cj and c.
     * @throws { BusinessException } 17630001 - crypto operation error.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.CryptoFramework.MessageDigest",
        throwexception: true,
        workerthread: true
    ]
    public func digest(): DataBlob

    /**
     * Output the length of md result.
     *
     * @returns { UInt32 } returns the length of the md result.
     * @throws { BusinessException } 17630001 - crypto operation error.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.CryptoFramework.MessageDigest",
        throwexception: true
    ]
    public func getMdLength(): UInt32
}

/**
 * Create a random generator instance.
 *
 * @returns { Random } returns the created rand instance.
 * @throws { BusinessException } 17620001 - memory operation failed.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Security.CryptoFramework.Rand",
    throwexception: true
]
public func createRandom(): Random

/**
 * Provides APIs for computing random numbers and setting seeds.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Security.CryptoFramework.Rand"
]
public class Random {
    /**
     * Indicates the random generation algorithm name. Currently, only CTR_DRBG is supported.
     *
     * @returns { String } algName representation of the Result.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.CryptoFramework.Rand"
    ]
    public prop algName: String

    /**
     * Generate random DataBlob by given length synchronously.
     *
     * @param { Int32 } len - indicates the length of random DataBlob.
     * @returns { DataBlob } return the generated random blob.
     * @throws { BusinessException } 17620001 - memory operation failed.
     * @throws { BusinessException } 17630001 - crypto operation error.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.CryptoFramework.Rand",
        throwexception: true
    ]
    public func generateRandom(len: Int32): DataBlob

    /**
     * Set seed by given DataBlob.
     *
     * @param { DataBlob } seed - indicates the seed DataBlob.
     * @throws { BusinessException } 17620001 - memory operation failed.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.CryptoFramework.Rand",
        throwexception: true
    ]
    public func setSeed(seed: DataBlob): Unit
}

/**
 * Asymmetric key generator class, defining methods for generating asymmetric keys. Before use, you must create an
 * AsyKeyGenerator instance by using createAsyKeyGenerator.
 */
@!APILevel[
    since: "26.1.0",
    syscap: "SystemCapability.Security.CryptoFramework.Key.AsymKey"
]
public class AsyKeyGenerator {
    /**
     * Indicates the algorithm name of the AsyKeyGenerator object.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Security.CryptoFramework.Key.AsymKey"
    ]
    public prop algName: String

    /**
     * Generates a random key pair using this asymmetric key generator. This API uses an asynchronous callback to
     * return the result.
     *
     * @param { AsyncCallback<KeyPair> } callback - Callback used to return the result. If the operation is
     *     successful, **data** is the key pair obtained.
     * @throws { BusinessException } 17620001 - Memory operation failed.
     * @throws { BusinessException } 17630001 - Crypto operation error.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Security.CryptoFramework.Key.AsymKey",
        throwexception: true
    ]
    public func generateKeyPair(callback: AsyncCallback<KeyPair>): Unit

    /**
     * Converts data into an asymmetric key pair. This API uses an asynchronous callback to return the result.
     *
     * @param { AsyncCallback<KeyPair> } callback - Callback used to return the result. If the operation is
     *     successful, **data** is the key pair obtained.
     * @param { ?DataBlob } [pubKey] - Public key material to convert. If no public key needs to be converted, set this
     *     parameter to **None**.
     * @param { ?DataBlob } [priKey] - Private key material to convert. If no private key needs to be converted, set
     *     this parameter to **None**.
     * @throws { BusinessException } 17620001 - Memory operation failed.
     * @throws { BusinessException } 17630001 - Crypto operation error.
     * @throws { BusinessException } 17620003 - Parameter check failed.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Security.CryptoFramework.Key.AsymKey",
        throwexception: true
    ]
    public func convertKey(callback: AsyncCallback<KeyPair>, pubKey!: Option<DataBlob> = None, priKey!: Option<DataBlob> = None): Unit

    /**
     * Converts data into an asymmetric key pair. This API uses an asynchronous callback to return the result.
     *
     * Note:
     * 1. When convertPemKey() is used to convert an external string into an asymmetric key object defined by the
     * Crypto framework, the public key must comply with the ASN.1 syntax, X.509 specifications, and PEM encoding
     * format, and the private key must comply with the ASN.1 syntax, PKCS #8 specifications, and PEM encoding format.
     * 2. In convertPemKey(), you can pass in either pubKey or priKey, or both of them. If one of them is passed in,
     * the returned KeyPair instance contains only the key converted from the data you passed in.
     * 3. When convertPemKey is used to convert an external string into an asymmetric key object defined by the Crypto
     * framework, the system does not verify whether the specifications of the generated key object are the same as
     * the key specifications specified for the asymmetric key generator.
     *
     * @param { AsyncCallback<KeyPair> } callback - Callback used to return the result. If the operation is
     *     successful, **data** is the key pair obtained.
     * @param { ?String } [pubKey] - Public key material to convert. If no public key needs to be converted, set
     *     this parameter to **None**.
     * @param { ?String } [priKey] - Private key material to convert. If no private key needs to be converted,
     *     set this parameter to **None**. Note: The public key and private key materials cannot be both None or empty
     *     strings.
     * @throws { BusinessException } 17620001 - Memory operation failed.
     * @throws { BusinessException } 17630001 - Crypto operation error.
     * @throws { BusinessException } 17620003 - Parameter check failed.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Security.CryptoFramework.Key.AsymKey",
        throwexception: true
    ]
    public func convertPemKey(callback: AsyncCallback<KeyPair>, pubKey!: Option<String> = None, priKey!: Option<String> = None): Unit

}

/**
 * Creates an AsyKeyGenerator instance based on the specified algorithm.
 *
 * @param { String } algName - Algorithm used by the asymmetric keys. For details, see the Asymmetric Key Generation
 *     and Conversion Specifications.
 * @returns { AsyKeyGenerator } Returns the AsyKeyGenerator instance corresponding to the specified algorithm.
 * @throws { BusinessException } 801 - This operation is not supported.
 * @throws { BusinessException } 17620001 - Memory operation failed.
 */
@!APILevel[
    since: "26.1.0",
    syscap: "SystemCapability.Security.CryptoFramework.Key.AsymKey",
    throwexception: true
]
public func createAsyKeyGenerator(algName: String): AsyKeyGenerator

/**
 * Provides APIs for symmetric key operations.
 * Its objects need to be passed to init of the Cipher instance in symmetric encryption and decryption.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Security.CryptoFramework.Key.SymKey"
]
public class SymKey <: Key {
    /**
     * Indicates the algorithm name of the key object. This parameter contains the key length if the key is a symmetric
     * key.
     *
     * @returns { String } algName representation of the Result.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.CryptoFramework.Key.SymKey"
    ]
    public prop algName: String

    /**
     * Indicates the format of the key object.
     *
     * @returns { String } format representation of the Result.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.CryptoFramework.Key.SymKey"
    ]
    public prop format: String

    /**
     * Encode the key object to binary data.
     * The key can be a symmetric key, public key, or private key.
     * The public key must be in DER encoding format and comply with the ASN.1 syntax and X.509 specifications.
     * The private key must be in DER encoding format and comply with the ASN.1 syntax and PKCS#8 specifications.
     *
     * @returns { DataBlob } the binary data of the key object.
     * @throws { BusinessException } 801 - this operation is not supported.
     * @throws { BusinessException } 17620001 - memory operation failed.
     * @throws { BusinessException } 17630001 - crypto operation error.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.CryptoFramework.Key.SymKey",
        throwexception: true
    ]
    public func getEncoded(): DataBlob

    /**
     * Clears the keys in the memory. This API returns the result synchronously.
     * You are advised to use this API when symmetric key instances are no longer used.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.CryptoFramework.Key.SymKey"
    ]
    public func clearMem(): Unit
}

/**
 * Create a symmetric key generator according to the given algorithm name.
 *
 * @param { String } algName - indicates the algorithm name. Multiple parameters need to be concatenated by "|".
 * @returns { SymKeyGenerator } the symmetric key generator instance.
 * @throws { BusinessException } 801 - this operation is not supported.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Security.CryptoFramework.Key.SymKey",
    throwexception: true
]
public func createSymKeyGenerator(algName: String): SymKeyGenerator

/**
 * Provides the SymKeyGenerator type, which is used for generating symmetric key.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Security.CryptoFramework.Key.SymKey"
]
public class SymKeyGenerator {
    /**
     * Indicates the algorithm name of the SymKeyGenerator object.
     *
     * @returns { String } algName representation of the Result.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.CryptoFramework.Key.SymKey"
    ]
    public prop algName: String

    /**
     * Generate a symmetric key object randomly.
     *
     * @returns { SymKey } the SymKey returned by the function.
     * @throws { BusinessException } 17620001 - memory operation failed.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.CryptoFramework.Key.SymKey",
        throwexception: true,
        workerthread: true
    ]
    public func generateSymKey(): SymKey

    /**
     * Used to convert symmetric key data to a symmetric key object.
     *
     * @param { DataBlob } key - the key data blob.
     * @returns { SymKey } the SymKey  returned by the function.
     * @throws { BusinessException } 17620001 - memory operation failed.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.CryptoFramework.Key.SymKey",
        throwexception: true,
        workerthread: true
    ]
    public func convertKey(key: DataBlob): SymKey
}

/**
 * Signature verification class, defining methods for verifying signatures using a public key. Before use, you must
 * create a Verify instance by using createVerify. Invoke init(), update(), and verify() in this class in sequence to
 * complete the signature verification.
 *
 * The Verify class does not support repeated initialization. When a new key is used for signature verification, you
 * must create a new Verify instance and call init() for initialization.
 *
 * The signature verification mode is determined in createVerify(), and the key is set by init().
 *
 * If the signed message is short, you can call verify() to pass in the signed message and signature (signatureData)
 * for signature verification after init(). That is, you do not need to use update().
 *
 * If the signed message is too long, you can call update() multiple times to pass in the signed message by segment,
 * and then call verify() to verify the full text of the message. After all the data is passed in by using update(),
 * verify() can be called to verify the signature data.
 *
 * If the DSA algorithm is used for signature verification and the digest algorithm is NoHash, update() is not
 * supported. If update() is called in this case, ERR_CRYPTO_OPERATION will be returned.
 */
@!APILevel[
    since: "26.1.0",
    syscap: "SystemCapability.Security.CryptoFramework.Signature"
]
public class Verify {
    /**
     * Indicates the algorithm name of the Verify instance.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Security.CryptoFramework.Signature"
    ]
    public prop algName: String

    /**
     * Initializes the Verify object using a public key. This API uses an asynchronous callback to return the result.
     * init, update, and verify must be used together. init and verify are mandatory, and update is optional.
     *
     * @param { PubKey } pubKey - Public key used to initialize the Verify instance.
     * @param { AsyncCallback<Unit> } callback - Callback used to return the result.
     * @throws { BusinessException } 17620001 - Memory operation failed.
     * @throws { BusinessException } 17620002 - Failed to obtain the native object or convert parameters.
     * @throws { BusinessException } 17630001 - Crypto operation error.
     * @throws { BusinessException } 17620003 - Parameter check failed. Possible causes: 1. Incorrect key type.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Security.CryptoFramework.Signature",
        throwexception: true
    ]
    public func initialize(pubKey: PubKey, callback: AsyncCallback<Unit>): Unit

    /**
     * Updates the data for signature verification. This API uses an asynchronous callback to return the result.
     *
     * This API can be called only after the Verify instance is initialized using init or initSync.
     *
     * Note:
     * You can call update multiple times or do not use update (call verify after init), depending on the data volume.
     *
     * The amount of the data to be passed in by update() (one-time or accumulative) is not limited. If there is a
     * large amount of data, you are advised to call update() multiple times to pass in the data by segment. This
     * prevents too much memory from being requested at a time.
     *
     * OnlyVerify cannot be used with update(). If OnlyVerify is specified, use verify() to pass in data.
     *
     * If the DSA algorithm is used for signature verification and the digest algorithm is NoHash, update() is not
     * supported. If update() is called in this case, ERR_CRYPTO_OPERATION will be returned.
     *
     * @param { DataBlob } data - Data to pass in.
     * @param { AsyncCallback<Unit> } callback - Callback used to return the result.
     * @throws { BusinessException } 17620001 - Memory operation failed.
     * @throws { BusinessException } 17620002 - Failed to obtain the native object or convert parameters.
     * @throws { BusinessException } 17630001 - Crypto operation error.
     * @throws { BusinessException } 17620004 - Invalid function call.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Security.CryptoFramework.Signature",
        throwexception: true
    ]
    public func update(data: DataBlob, callback: AsyncCallback<Unit>): Unit

    /**
     * Verifies the message, including the update data. This API uses an asynchronous callback to return the result.
     *
     * @param { DataBlob } data - Data to be verified.
     * @param { DataBlob } signatureData - The signature data.
     * @param { AsyncCallback<Bool> } callback - Callback used to return the result. The value **true**
     *     indicates that the signature verification is successful, and **false** indicates the opposite.
     * @throws { BusinessException } 17620001 - Memory operation failed.
     * @throws { BusinessException } 17620002 - Failed to obtain the native object or convert parameters.
     * @throws { BusinessException } 17630001 - Crypto operation error.
     * @throws { BusinessException } 17620003 - Parameter check failed.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Security.CryptoFramework.Signature",
        throwexception: true
    ]
    public func verify(data: DataBlob, signatureData: DataBlob, callback: AsyncCallback<Bool>): Unit

    /**
     * Verifies the signature of the data. This API uses an asynchronous callback to return the result.
     *
     * @param { DataBlob } signatureData - Signature data.
     * @param { AsyncCallback<Bool> } callback - Callback used to return the result. The value **true**
     *     indicates that the signature verification is successful, and **false** indicates the opposite.
     * @param { ?DataBlob } [data] - Data to pass in.
     * @throws { BusinessException } 17620001 - Memory operation failed.
     * @throws { BusinessException } 17620002 - Failed to obtain the native object or convert parameters.
     * @throws { BusinessException } 17630001 - Crypto operation error.
     * @throws { BusinessException } 17620003 - Parameter check failed.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Security.CryptoFramework.Signature",
        throwexception: true
    ]
    public func verify(signatureData: DataBlob, callback: AsyncCallback<Bool>, data!: Option<DataBlob> = None): Unit

    /**
     * Recovers the original data from a signature. This API uses an asynchronous callback to return the result.
     *
     * Note:
     * Currently, only RSA is supported.
     *
     * @param { DataBlob } signatureData - Signature data.
     * @param { AsyncCallback<?DataBlob> } callback - Callback used to return the result. If the operation is
     *     successful, **data** is the recovered original data.
     * @throws { BusinessException } 17620001 - Memory operation failed.
     * @throws { BusinessException } 17620002 - Failed to obtain the native object or convert parameters.
     * @throws { BusinessException } 17630001 - Crypto operation error.
     * @throws { BusinessException } 17620004 - Invalid function call.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Security.CryptoFramework.Signature",
        throwexception: true
    ]
    public func recover(signatureData: DataBlob, callback: AsyncCallback<?DataBlob>): Unit

    /**
     * Sets signature verification specifications. You can use this API to set signature verification parameters that
     * cannot be set by createVerify.
     *
     * Currently, only RSA and SM2 are supported.
     *
     * The parameters for signature verification must be the same as those for signing.
     *
     * @param { SignSpecItem } itemType - Signature verification parameter to set.
     * @param { Int32 } itemValue - Value of the signature verification parameter to set.
     * @throws { BusinessException } 801 - This operation is not supported.
     * @throws { BusinessException } 17620001 - Memory operation failed.
     * @throws { BusinessException } 17630001 - Crypto operation error.
     * @throws { BusinessException } 17620003 - Parameter check failed.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Security.CryptoFramework.Signature",
        throwexception: true
    ]
    public func setVerifySpec(itemType: SignSpecItem, itemValue: Int32): Unit

    /**
     * Sets the specified parameter for the Verify instance.
     *
     * Currently, only PSS_SALT_LEN in RSA and USER_ID in SM2 are supported.
     *
     * The parameters for signature verification must be the same as those for signing.
     *
     * @param { SignSpecItem } itemType - Indicates the specified parameter type.
     * @param { Array<UInt8> } itemValue - The value of the specified parameter.
     * @throws { BusinessException } 801 - This operation is not supported.
     * @throws { BusinessException } 17620001 - Memory operation failed.
     * @throws { BusinessException } 17620002 - Failed to obtain the native object or convert parameters.
     * @throws { BusinessException } 17620003 - Parameter check failed.
     * @throws { BusinessException } 17620004 - Invalid function call.
     * @throws { BusinessException } 17630001 - Crypto operation error.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Security.CryptoFramework.Signature",
        throwexception: true
    ]
    public func setVerifySpec(itemType: SignSpecItem, itemValue: Array<UInt8>): Unit

    /**
     * Obtains signature verification specifications. Currently, only RSA is supported.
     *
     * @param { SignSpecItem } itemType - Signature verification parameter to obtain.
     * @returns { ResultSpec } Returns the value of the parameter obtained.
     * @throws { BusinessException } 801 - This operation is not supported.
     * @throws { BusinessException } 17620001 - Memory operation failed.
     * @throws { BusinessException } 17630001 - Crypto operation error.
     * @throws { BusinessException } 17620003 - Parameter check failed.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Security.CryptoFramework.Signature",
        throwexception: true
    ]
    public func getVerifySpec(itemType: SignSpecItem): ResultSpec
}

/**
 * Creates a Verify instance.
 *
 * @param { String } algName - Signature verification algorithm to use. Currently, RSA, ECC, DSA, SM2, Ed25519 and
 *     ML-DSA are supported.
 *     If RSA PKCS1 is used, you must set the digest. If RSA PSS is used, you must set the digest and mask digest.
 *     When the RSA algorithm is used for signature verification, you can use recover to verify and recover the
 *     signed data.
 * @returns { Verify } Returns the Verify instance corresponding to the specified algorithm.
 * @throws { BusinessException } 801 - This operation is not supported.
 * @throws { BusinessException } 17620001 - Memory operation failed.
 */
@!APILevel[
    since: "26.1.0",
    syscap: "SystemCapability.Security.CryptoFramework.Signature",
    throwexception: true
]
public func createVerify(algName: String): Verify

/**
 * Enumerates the asymmetric key parameters.
 */
@!APILevel[
    since: "26.1.0",
    syscap: "SystemCapability.Security.CryptoFramework.Key.AsymKey"
]
public enum AsyKeySpecItem {
    /**
     * Prime modulus **p** in the DSA algorithm.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Security.CryptoFramework.Key.AsymKey"
    ]
    DsaPBn
    |
    /**
     * Parameter **q**, prime factor of (p - 1) in the DSA algorithm.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Security.CryptoFramework.Key.AsymKey"
    ]
    DsaQBn
    |
    /**
     * Parameter **g** in the DSA algorithm.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Security.CryptoFramework.Key.AsymKey"
    ]
    DsaGBn
    |
    /**
     * Private key **sk** in the DSA algorithm.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Security.CryptoFramework.Key.AsymKey"
    ]
    DsaSkBn
    |
    /**
     * Public key **pk** in the DSA algorithm.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Security.CryptoFramework.Key.AsymKey"
    ]
    DsaPkBn
    |
    /**
     * Prime number **p** in the **Fp** field of the elliptic curve in the ECC algorithm.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Security.CryptoFramework.Key.AsymKey"
    ]
    EccFpPBn
    |
    /**
     * First coefficient **a** of the elliptic curve in the ECC algorithm.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Security.CryptoFramework.Key.AsymKey"
    ]
    EccABn
    |
    /**
     * Second coefficient **b** of the elliptic curve in the ECC algorithm.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Security.CryptoFramework.Key.AsymKey"
    ]
    EccBBn
    |
    /**
     * X coordinate of the base point **g** in the ECC algorithm.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Security.CryptoFramework.Key.AsymKey"
    ]
    EccGXBn
    |
    /**
     * Y coordinate of the base point **g** in the ECC algorithm.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Security.CryptoFramework.Key.AsymKey"
    ]
    EccGYBn
    |
    /**
     * Order **n** of the base point **g** in the ECC algorithm.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Security.CryptoFramework.Key.AsymKey"
    ]
    EccNBn
    |
    /**
     * Cofactor **h** in the ECC algorithm.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Security.CryptoFramework.Key.AsymKey"
    ]
    EccHNum
    |
    /**
     * Private key **sk** in the ECC algorithm.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Security.CryptoFramework.Key.AsymKey"
    ]
    EccSkBn
    |
    /**
     * X coordinate of the public key **pk** (a point on the elliptic curve) in the ECC algorithm.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Security.CryptoFramework.Key.AsymKey"
    ]
    EccPkXBn
    |
    /**
     * Y coordinate of the public key **pk** (a point on the elliptic curve) in the ECC algorithm.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Security.CryptoFramework.Key.AsymKey"
    ]
    EccPkYBn
    |
    /**
     * Elliptic curve field type in the ECC algorithm. Currently, only the **Fp** field is supported.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Security.CryptoFramework.Key.AsymKey"
    ]
    EccFieldTypeStr
    |
    /**
     * Size of the field in the ECC algorithm, in bits.
     *
     * Note: The size of the **Fp** field is the length of the prime **p**, in bits.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Security.CryptoFramework.Key.AsymKey"
    ]
    EccFieldSizeNum
    |
    /**
     * Standards for Efficient Cryptography Group (SECG) curve name in the ECC algorithm.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Security.CryptoFramework.Key.AsymKey"
    ]
    EccCurveNameStr
    |
    /**
     * Modulus **n** in the RSA algorithm.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Security.CryptoFramework.Key.AsymKey"
    ]
    RsaNBn
    |
    /**
     * Private key **sk** (private key exponent **d**) in the RSA algorithm.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Security.CryptoFramework.Key.AsymKey"
    ]
    RsaSkBn
    |
    /**
     * Public key **pk** (public key exponent **e**) in the RSA algorithm.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Security.CryptoFramework.Key.AsymKey"
    ]
    RsaPkBn
    |
    /**
     * Prime **p** in the DH algorithm.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Security.CryptoFramework.Key.AsymKey"
    ]
    DhPBn
    |
    /**
     * Parameter **g** in the DH algorithm.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Security.CryptoFramework.Key.AsymKey"
    ]
    DhGBn
    |
    /**
     * Length of the private key in the DH algorithm, in bits.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Security.CryptoFramework.Key.AsymKey"
    ]
    DhLNum
    |
    /**
     * Private key **sk** in the DH algorithm.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Security.CryptoFramework.Key.AsymKey"
    ]
    DhSkBn
    |
    /**
     * Public key **pk** in the DH algorithm.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Security.CryptoFramework.Key.AsymKey"
    ]
    DhPkBn
    |
    /**
     * Private key **sk** in the Ed25519 algorithm.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Security.CryptoFramework.Key.AsymKey"
    ]
    Ed25519SkBn
    |
    /**
     * Public key **pk** in the Ed25519 algorithm.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Security.CryptoFramework.Key.AsymKey"
    ]
    Ed25519PkBn
    |
    /**
     * Private key **sk** in the X25519 algorithm.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Security.CryptoFramework.Key.AsymKey"
    ]
    X25519SkBn
    |
    /**
     * Public key **pk** in the X25519 algorithm.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Security.CryptoFramework.Key.AsymKey"
    ]
    X25519PkBn
    | ...
}


extend AsyKeySpecItem <: ToString {

    /**
     * Converts the AsyKeySpecItem to its string representation.
     * @returns { String } A string representation of the AsyKeySpecItem.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Security.CryptoFramework.Key.AsymKey"
    ]
    public func toString(): String
}


extend AsyKeySpecItem <: Equatable<AsyKeySpecItem> {

    /**
     * Compares this AsyKeySpecItem with another for equality.
     * @param { AsyKeySpecItem } other - The AsyKeySpecItem to compare with.
     * @returns { Bool } True if both modes are equal, false otherwise.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Security.CryptoFramework.Key.AsymKey"
    ]
    public operator func ==(other: AsyKeySpecItem): Bool

    /**
     * Compares this AsyKeySpecItem with another for inequality.
     * @param { AsyKeySpecItem } other - The AsyKeySpecItem to compare with.
     * @returns { Bool } True if both modes are not equal, false otherwise.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Security.CryptoFramework.Key.AsymKey"
    ]
    public operator func !=(other: AsyKeySpecItem): Bool
}


@!APILevel[
    since: "26.1.0",
    syscap: "SystemCapability.Security.CryptoFramework"
]
public enum ResultSpec {
    /**
     * Represents a BigInt value, corresponding to the ArkTS bigint type.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Security.CryptoFramework"
    ]
    BigintValue(BigInt)
    |
    /**
     * Represents an Int32 value, corresponding to the ArkTS int (number) type.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Security.CryptoFramework"
    ]
    Int32Value(Int32)
    |
    /**
     * Represents a String value, corresponding to the ArkTS string type.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Security.CryptoFramework"
    ]
    StringValue(String)
    |
    /**
     * Represents a UInt8Array value, corresponding to the ArkTS Uint8Array type.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Security.CryptoFramework"
    ]
    Uint8ArrayValue(Array<UInt8>)
    | ...
}

extend ResultSpec <: ToString {
    /**
     * Converts the ResultSpec to its string representation.
     * @returns { String } A string representation of the ResultSpec.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Security.CryptoFramework"
    ]
    public func toString(): String
}

extend ResultSpec <: Equatable<ResultSpec> {
    /**
     * Compares this ResultSpec with another for equality.
     * @param { ResultSpec } other - The ResultSpec to compare with.
     * @returns { Bool } True if both values are equal, false otherwise.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Security.CryptoFramework"
    ]
    public operator func ==(other: ResultSpec): Bool

    /**
     * Compares this ResultSpec with another for inequality.
     * @param { ResultSpec } other - The ResultSpec to compare with.
     * @returns { Bool } True if both values are not equal, false otherwise.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Security.CryptoFramework"
    ]
    public operator func !=(other: ResultSpec): Bool
}
