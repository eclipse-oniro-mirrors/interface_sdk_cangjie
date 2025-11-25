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

package ohos.security.huks

import ohos.labels.APILevel

/**
 * Enumerates the key purposes.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Security.Huks.Core"
]
public class HuksKeyPurpose {
    /**
     * Used to encrypt the plaintext.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_KEY_PURPOSE_ENCRYPT: UInt32 = 1
    /**
     * Used to decrypt the cipher text.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_KEY_PURPOSE_DECRYPT: UInt32 = 2
    /**
     * Used for signing.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_KEY_PURPOSE_SIGN: UInt32 = 4
    /**
     * Used to verify the signature.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_KEY_PURPOSE_VERIFY: UInt32 = 8
    /**
     * Used to derive a key.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_KEY_PURPOSE_DERIVE: UInt32 = 16
    /**
     * Used for an encrypted export.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_KEY_PURPOSE_WRAP: UInt32 = 32
    /**
     * Used for an encrypted import.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_KEY_PURPOSE_UNWRAP: UInt32 = 64
    /**
     * Used to generate a message authentication code (MAC).
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_KEY_PURPOSE_MAC: UInt32 = 128
    /**
     * Used for key agreement.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_KEY_PURPOSE_AGREE: UInt32 = 256
}

/**
 * Enumerates the digest algorithms.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Security.Huks.Core"
]
public class HuksKeyDigest {
    /**
     * No digest algorithm.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_DIGEST_NONE: UInt32 = 0
    /**
     * MD5.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_DIGEST_MD5: UInt32 = 1
    /**
     * SM3.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_DIGEST_SM3: UInt32 = 2
    /**
     * SHA-1.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_DIGEST_SHA1: UInt32 = 10
    /**
     * SHA-224.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_DIGEST_SHA224: UInt32 = 11
    /**
     * SHA-256.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_DIGEST_SHA256: UInt32 = 12
    /**
     * SHA-384.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_DIGEST_SHA384: UInt32 = 13
    /**
     * SHA-512.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_DIGEST_SHA512: UInt32 = 14
}

/**
 * Enumerates the padding algorithms.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Security.Huks.Core"
]
public class HuksKeyPadding {
    /**
     * No padding algorithm is used.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_PADDING_NONE: UInt32 = 0
    /**
     * Optimal Asymmetric Encryption Padding (OAEP).
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_PADDING_OAEP: UInt32 = 1
    /**
     * Probabilistic Signature Scheme (PSS).
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_PADDING_PSS: UInt32 = 2
    /**
     * Public Key Cryptography Standards (PKCS) #1 v1.5.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_PADDING_PKCS1_V1_5: UInt32 = 3
    /**
     * PKCS #5.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_PADDING_PKCS5: UInt32 = 4
    /**
     * PKCS #7.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_PADDING_PKCS7: UInt32 = 5
}

/**
 * Enumerates the cipher modes.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Security.Huks.Core"
]
public class HuksCipherMode {
    /**
     * Electronic Code Block (ECB) mode.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_MODE_ECB: UInt32 = 1
    /**
     * Cipher Block Chaining (CBC) mode.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_MODE_CBC: UInt32 = 2
    /**
     * Counter (CTR) mode.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_MODE_CTR: UInt32 = 3
    /**
     * Output Feedback (OFB) mode.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_MODE_OFB: UInt32 = 4
    /**
     * Counter with CBC-MAC (CCM) mode.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_MODE_CCM: UInt32 = 31
    /**
     * Galois/Counter (GCM) mode.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_MODE_GCM: UInt32 = 32
}

/**
 * Enumerates the key sizes.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Security.Huks.Core"
]
public class HuksKeySize {
    /**
     * Rivest-Shamir-Adleman (RSA) key of 512 bits.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_RSA_KEY_SIZE_512: UInt32 = 512
    /**
     * RSA key of 768 bits.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_RSA_KEY_SIZE_768: UInt32 = 768
    /**
     * RSA key of 1024 bits.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_RSA_KEY_SIZE_1024: UInt32 = 1024
    /**
     * RSA key of 2048 bits.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_RSA_KEY_SIZE_2048: UInt32 = 2048
    /**
     * RSA key of 3072 bits.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_RSA_KEY_SIZE_3072: UInt32 = 3072
    /**
     * RSA key of 4096 bits.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_RSA_KEY_SIZE_4096: UInt32 = 4096
    /**
     * Elliptic Curve Cryptography (ECC) key of 224 bits.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_ECC_KEY_SIZE_224: UInt32 = 224
    /**
     * ECC key of 256 bits.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_ECC_KEY_SIZE_256: UInt32 = 256
    /**
     * ECC key of 384 bits.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_ECC_KEY_SIZE_384: UInt32 = 384
    /**
     * ECC key of 521 bits.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_ECC_KEY_SIZE_521: UInt32 = 521
    /**
     * Advanced Encryption Standard (AES) key of 128 bits.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_AES_KEY_SIZE_128: UInt32 = 128
    /**
     * AES key of 192 bits.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_AES_KEY_SIZE_192: UInt32 = 192
    /**
     * AES key of 256 bits.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_AES_KEY_SIZE_256: UInt32 = 256
    /**
     * Curve25519 key of 256 bits.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_CURVE25519_KEY_SIZE_256: UInt32 = 256
    /**
     * Diffie-Hellman (DH) key of 2048 bits.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_DH_KEY_SIZE_2048: UInt32 = 2048
    /**
     * DH key of 3072 bits.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_DH_KEY_SIZE_3072: UInt32 = 3072
    /**
     * DH key of 4096 bits.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_DH_KEY_SIZE_4096: UInt32 = 4096
    /**
     * ShangMi2 (SM2) key of 256 bits.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_SM2_KEY_SIZE_256: UInt32 = 256
    /**
     * ShangMi4 (SM4) key of 128 bits.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_SM4_KEY_SIZE_128: UInt32 = 128
}

/**
 * Enumerates the key algorithms.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Security.Huks.Core"
]
public class HuksKeyAlg {
    /**
     * RSA.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_ALG_RSA: UInt32 = 1
    /**
     * ECC.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_ALG_ECC: UInt32 = 2
    /**
     * DSA.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_ALG_DSA: UInt32 = 3
    /**
     * AES.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_ALG_AES: UInt32 = 20
    /**
     * HMAC.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_ALG_HMAC: UInt32 = 50
    /**
     * HKDF.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_ALG_HKDF: UInt32 = 51
    /**
     * PBKDF2.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_ALG_PBKDF2: UInt32 = 52
    /**
     * ECDH.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_ALG_ECDH: UInt32 = 100
    /**
     * X25519.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_ALG_X25519: UInt32 = 101
    /**
     * Ed25519.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_ALG_ED25519: UInt32 = 102
    /**
     * DH.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_ALG_DH: UInt32 = 103
    /**
     * SM2.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_ALG_SM2: UInt32 = 150
    /**
     * SM3.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_ALG_SM3: UInt32 = 151
    /**
     * SM4.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_ALG_SM4: UInt32 = 152
}

/**
 * Enumerates the algorithm suites that can be used for importing a key in ciphertext.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Security.Huks.Core"
]
public class HuksUnwrapSuite {
    /**
     * Use X25519 for key agreement and then use AES-256 GCM to encrypt the key.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_UNWRAP_SUITE_X25519_AES_256_GCM_NO_PADDING: UInt32 = 1
    /**
     * Use ECDH for key agreement and then use AES-256 GCM to encrypt the key.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_UNWRAP_SUITE_ECDH_AES_256_GCM_NO_PADDING: UInt32 = 2
}

/**
 * Enumerates the storage security levels of a key.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Security.Huks.Core"
]
public class HuksAuthStorageLevel {
    /**
     * The key can be accessed only after the device is started.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_AUTH_STORAGE_LEVEL_DE: UInt32 = 0
    /**
     * The key can be accessed only after the first unlock of the device.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_AUTH_STORAGE_LEVEL_CE: UInt32 = 1
    /**
     * The key can be accessed only when the device is unlocked.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_AUTH_STORAGE_LEVEL_ECE: UInt32 = 2
}

/**
 * Enumerates the key generation types.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Security.Huks.Core"
]
public class HuksKeyGenerationType {
    /**
    * Key generated by default.
    */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_KEY_GENERATE_TYPE_DEFAULT: UInt32 = 0
    /**
     * Derived key.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_KEY_GENERATE_TYPE_DERIVE: UInt32 = 1
    /**
     * Key generated by agreement.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_KEY_GENERATE_TYPE_AGREE: UInt32 = 2
}

/**
 * Enumerates the key generation modes.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Security.Huks.Core"
]
public class HuksKeyFlag {
    /**
    * Import a key using an API.
    */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_KEY_FLAG_IMPORT_KEY: UInt32 = 1
    /**
     * Generate a key by using an API.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_KEY_FLAG_GENERATE_KEY: UInt32 = 2
    /**
     * Generate a key by using a key agreement API.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_KEY_FLAG_AGREE_KEY: UInt32 = 3
    /**
     * Derive a key by using an API.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_KEY_FLAG_DERIVE_KEY: UInt32 = 4
}

/**
 * Enumerates the key storage modes.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Security.Huks.Core"
]
public class HuksKeyStorageType {
    /**
     * The key derived from the master key is stored in the HUKS and managed by the HUKS.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_STORAGE_ONLY_USED_IN_HUKS: UInt32 = 2
    /**
     * The key derived from the master key is exported to the service, and not managed by the HUKS.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_STORAGE_KEY_EXPORT_ALLOWED: UInt32 = 3
}

/**
 * Enumerates the types of keys to import. By default, a public key is imported. This field is not
 * required when a symmetric key is imported.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Security.Huks.Core"
]
public class HuksImportKeyType {
    /**
     * Public key.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_KEY_TYPE_PUBLIC_KEY: UInt32 = 0
    /**
     * Private key.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_KEY_TYPE_PRIVATE_KEY: UInt32 = 1
    /**
    * Public and private key pair.
    */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_KEY_TYPE_KEY_PAIR: UInt32 = 2
}

/**
 * Enumerates the salt_len types to set when PSS padding is used in RSA signing or signature
 * verification.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Security.Huks.Core"
]
public class HuksRsaPssSaltLenType {
    /**
     * salt_len is set to the digest length.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_RSA_PSS_SALT_LEN_DIGEST: UInt32 = 0

    /**
     * salt_len is set to the maximum length.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_RSA_PSS_SALT_LEN_MAX: UInt32 = 1
}

/**
 * Enumerates the user authentication types.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Security.Huks.Extension"
]
public class HuksUserAuthType {
    /**
     * Fingerprint authentication.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.Huks.Extension"
    ]
    public static const HUKS_USER_AUTH_TYPE_FINGERPRINT: UInt32 = 1 << 0
    /**
     * Facial authentication.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.Huks.Extension"
    ]
    public static const HUKS_USER_AUTH_TYPE_FACE: UInt32 = 1 << 1
    /**
     * PIN authentication.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.Huks.Extension"
    ]
    public static const HUKS_USER_AUTH_TYPE_PIN: UInt32 = 1 << 2
}

/**
 * Enumerates the access control types.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Security.Huks.Extension"
]
public class HuksAuthAccessType {
    /**
     * The key becomes invalid after the password is cleared.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.Huks.Extension"
    ]
    public static const HUKS_AUTH_ACCESS_INVALID_CLEAR_PASSWORD: UInt32 = 1 << 0
    /**
     * The key becomes invalid after a new biometric feature is added.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.Huks.Extension"
    ]
    public static const HUKS_AUTH_ACCESS_INVALID_NEW_BIO_ENROLL: UInt32 = 1 << 1
}

/**
 * Enumerates the types of the challenges generated when a key is used.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Security.Huks.Extension"
]
public class HuksChallengeType {
    /**
     * Normal challenge, which is of 32 bytes by default.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.Huks.Extension"
    ]
    public static const HUKS_CHALLENGE_TYPE_NORMAL: UInt32 = 0
    /**
     * Custom challenge, which supports only one authentication for multiple keys.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.Huks.Extension"
    ]
    public static const HUKS_CHALLENGE_TYPE_CUSTOM: UInt32 = 1
    /**
     * Challenge is not required.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.Huks.Extension"
    ]
    public static const HUKS_CHALLENGE_TYPE_NONE: UInt32 = 2
}

/**
 * Enumerates the positions of the 8-byte valid value in a custom challenge generated.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Security.Huks.Extension"
]
public class HuksChallengePosition {
    /**
     * Bytes 0 to 7.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.Huks.Extension"
    ]
    public static const HUKS_CHALLENGE_POS_0: UInt32 = 0
    /**
     * Bytes 8 to 15.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.Huks.Extension"
    ]
    public static const HUKS_CHALLENGE_POS_1: UInt32 = 1
    /**
     * Bytes 16 to 23.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.Huks.Extension"
    ]
    public static const HUKS_CHALLENGE_POS_2: UInt32 = 2
    /**
     * Bytes 24 to 31.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.Huks.Extension"
    ]
    public static const HUKS_CHALLENGE_POS_3: UInt32 = 3
}

/**
 * Enumerates the signature types of the key generated or imported. 
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Security.Huks.Extension"
]
public class HuksSecureSignType {
    /**
     * The signature carries authentication information. This field is specified when a key is generated or
     * imported. When the key is used for signing, the data will be added with the authentication information and then
     * be signed.
     * NOTICE:
     * The carried authentication information contains personal identification details. Developers are required
     * to clearly state the purpose of use, retention policy, and destruction method of such personal information in
     * their privacy statement.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.Huks.Extension"
    ]
    public static const HUKS_SECURE_SIGN_WITH_AUTH_INFO: UInt32 = 1
}

/**
 * Enumerates the tag data types.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Security.Huks.Core"
]
public class HuksTagType {
    /**
     * Invalid tag type.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_TAG_TYPE_INVALID: UInt32 = 0 << 28
    /**
     * Number of the int type.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_TAG_TYPE_INT: UInt32 = 1 << 28
    /**
     * Number of the uint type.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_TAG_TYPE_UINT: UInt32 = 2 << 28
    /**
     * BigInt.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_TAG_TYPE_ULONG: UInt32 = 3 << 28
    /**
     * Boolean.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_TAG_TYPE_BOOL: UInt32 = 4 << 28
    /**
     * Uint8Array.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_TAG_TYPE_BYTES: UInt32 = 5 << 28
}

/**
 * Enumerates the tags used to invoke parameters.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Security.Huks.Core"
]
public class HuksTag {
    /**
     * Algorithm.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_TAG_ALGORITHM: UInt32 = HuksTagType.HUKS_TAG_TYPE_UINT | 1
    /**
     * Purpose of the key.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_TAG_PURPOSE: UInt32 = HuksTagType.HUKS_TAG_TYPE_UINT | 2
    /**
     * Key size.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_TAG_KEY_SIZE: UInt32 = HuksTagType.HUKS_TAG_TYPE_UINT | 3
    /**
     * Digest algorithm.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_TAG_DIGEST: UInt32 = HuksTagType.HUKS_TAG_TYPE_UINT | 4
    /**
     * Padding mode.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_TAG_PADDING: UInt32 = HuksTagType.HUKS_TAG_TYPE_UINT | 5
    /**
     * Cipher mode.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_TAG_BLOCK_MODE: UInt32 = HuksTagType.HUKS_TAG_TYPE_UINT | 6
    /**
     * Key type.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_TAG_KEY_TYPE: UInt32 = HuksTagType.HUKS_TAG_TYPE_UINT | 7
    /**
     * Associated authentication data.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_TAG_ASSOCIATED_DATA: UInt32 = HuksTagType.HUKS_TAG_TYPE_BYTES | 8
    /**
     * Nonce for key encryption and decryption.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_TAG_NONCE: UInt32 = HuksTagType.HUKS_TAG_TYPE_BYTES | 9
    /**
     * IV.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_TAG_IV: UInt32 = HuksTagType.HUKS_TAG_TYPE_BYTES | 10
    /**
     * Information generated during key derivation.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_TAG_INFO: UInt32 = HuksTagType.HUKS_TAG_TYPE_BYTES | 11
    /**
     * Salt value used for key derivation.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_TAG_SALT: UInt32 = HuksTagType.HUKS_TAG_TYPE_BYTES | 12
    /**
     * Number of iterations for key derivation.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_TAG_ITERATION: UInt32 = HuksTagType.HUKS_TAG_TYPE_UINT | 14
    /**
     * Key generation type.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_TAG_KEY_GENERATION_TYPE: UInt32 = HuksTagType.HUKS_TAG_TYPE_UINT | 15
    /**
     * Type of the algorithm used for key agreement.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_TAG_ALG_FOR_AGREEMENT: UInt32 = HuksTagType.HUKS_TAG_TYPE_UINT | 19
    /**
     * Public key alias used in key agreement.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_TAG_AGREE_PUBLIC_KEY_IS_KEY_ALIAS: UInt32 = HuksTagType.HUKS_TAG_TYPE_BOOL | 20
    /**
     * Private key alias used in key agreement.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_TAG_PRIVATE_KEY_ALIAS_FOR_AGREEMENT: UInt32 = HuksTagType.HUKS_TAG_TYPE_BYTES | 21
    /**
     * Public key used in key agreement.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_TAG_PUBLIC_KEY_FOR_AGREEMENT: UInt32 = HuksTagType.HUKS_TAG_TYPE_BYTES | 22
    /**
     * Key alias.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_TAG_KEY_ALIAS: UInt32 = HuksTagType.HUKS_TAG_TYPE_BYTES | 23
    /**
     * Size of the derived key.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_TAG_DERIVE_KEY_SIZE: UInt32 = HuksTagType.HUKS_TAG_TYPE_UINT | 24
    /**
     * Type of the imported key.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_TAG_IMPORT_KEY_TYPE: UInt32 = HuksTagType.HUKS_TAG_TYPE_UINT | 25
    /**
     * Algorithm suite required for encrypted imports.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_TAG_UNWRAP_ALGORITHM_SUITE: UInt32 = HuksTagType.HUKS_TAG_TYPE_UINT | 26
    /**
     * Storage type of the derived key or agreed key.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_TAG_DERIVED_AGREED_KEY_STORAGE_FLAG: UInt32 = HuksTagType.HUKS_TAG_TYPE_UINT | 29
    /**
     * Type of the rsa_pss_salt_length.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_TAG_RSA_PSS_SALT_LEN_TYPE: UInt32 = HuksTagType.HUKS_TAG_TYPE_UINT | 30
    /**
     * ID of the user to which the key belongs.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_TAG_USER_ID: UInt32 = HuksTagType.HUKS_TAG_TYPE_UINT | 302
    /**
     * Reserved.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_TAG_NO_AUTH_REQUIRED: UInt32 = HuksTagType.HUKS_TAG_TYPE_BOOL | 303
    /**
     * User authentication type. For details, see HuksUserAuthType. This parameter must be set together with
     * HuksAuthAccessType. You can set a maximum of two user authentication types at a time. For example, if
     * HuksAuthAccessType is HUKS_SECURE_ACCESS_INVALID_NEW_BIO_ENROLL, you can set the user authentication type to
     * HUKS_USER_AUTH_TYPE_FACE, HUKS_USER_AUTH_TYPE_FINGERPRINT or
     * HUKS_USER_AUTH_TYPE_FACE | HUKS_USER_AUTH_TYPE_FINGERPRINT.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.Huks.Extension"
    ]
    public static const HUKS_TAG_USER_AUTH_TYPE: UInt32 = HuksTagType.HUKS_TAG_TYPE_UINT | 304
    /**
     * One-time validity period of the authentication token.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.Huks.Extension"
    ]
    public static const HUKS_TAG_AUTH_TIMEOUT: UInt32 = HuksTagType.HUKS_TAG_TYPE_UINT | 305
    /**
     * Authentication token.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.Huks.Extension"
    ]
    public static const HUKS_TAG_AUTH_TOKEN: UInt32 = HuksTagType.HUKS_TAG_TYPE_BYTES | 306
    /**
     * Access control type. For details, see HuksAuthAccessType. This parameter must be set together with
     * HuksUserAuthType.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.Huks.Extension"
    ]
    public static const HUKS_TAG_KEY_AUTH_ACCESS_TYPE: UInt32 = HuksTagType.HUKS_TAG_TYPE_UINT | 307
    /**
     * Signature type of the key generated or imported.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.Huks.Extension"
    ]
    public static const HUKS_TAG_KEY_SECURE_SIGN_TYPE: UInt32 = HuksTagType.HUKS_TAG_TYPE_UINT | 308
    /**
     * Type of the challenge generated for a key. For details, see HuksChallengeType.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.Huks.Extension"
    ]
    public static const HUKS_TAG_CHALLENGE_TYPE: UInt32 = HuksTagType.HUKS_TAG_TYPE_UINT | 309
    /**
     * Position of the 8-byte valid value in a custom challenge. For details, see HuksChallengePosition.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.Huks.Extension"
    ]
    public static const HUKS_TAG_CHALLENGE_POS: UInt32 = HuksTagType.HUKS_TAG_TYPE_UINT | 310
    /**
     * Key authentication purpose.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.Huks.Extension"
    ]
    public static const HUKS_TAG_KEY_AUTH_PURPOSE: UInt32 = HuksTagType.HUKS_TAG_TYPE_UINT | 311
    /**
     * Key storage security level, which is a value of HuksAuthStorageLevel.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.Huks.Extension"
    ]
    public static const HUKS_TAG_AUTH_STORAGE_LEVEL: UInt32 = HuksTagType.HUKS_TAG_TYPE_UINT | 316
    /**
     * Challenge value used in the attestation.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.Huks.Extension"
    ]
    public static const HUKS_TAG_ATTESTATION_CHALLENGE: UInt32 = HuksTagType.HUKS_TAG_TYPE_BYTES | 501
    /*
     * Whether to use the alias passed in during key generation.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_TAG_IS_KEY_ALIAS: UInt32 = HuksTagType.HUKS_TAG_TYPE_BOOL | 1001
    /*
     * Key storage mode.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_TAG_KEY_STORAGE_FLAG: UInt32 = HuksTagType.HUKS_TAG_TYPE_UINT | 1002
    /*
     * Reserved.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_TAG_IS_ALLOWED_WRAP: UInt32 = HuksTagType.HUKS_TAG_TYPE_BOOL | 1003
    /*
     * Reserved.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_TAG_KEY_WRAP_TYPE: UInt32 = HuksTagType.HUKS_TAG_TYPE_UINT | 1004
    /*
     * Reserved.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.Huks.Extension"
    ]
    public static const HUKS_TAG_KEY_AUTH_ID: UInt32 = HuksTagType.HUKS_TAG_TYPE_BYTES | 1005
    /*
     * Flag of the key.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_TAG_KEY_FLAG: UInt32 = HuksTagType.HUKS_TAG_TYPE_UINT | 1007
    /*
     * Reserved.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_TAG_KEY: UInt32 = HuksTagType.HUKS_TAG_TYPE_BYTES | 10006
    /*
     * Used to pass in the AEAD in GCM mode.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public static const HUKS_TAG_AE_TAG: UInt32 = HuksTagType.HUKS_TAG_TYPE_BYTES | 10009
}

/**
 * Checks whether a key exists.
 *
 * @param { String } keyAlias - Alias of the key to check.
 * @param { HuksOptions } options - Options for checking the key. For example, you can pass in HuksAuthStorageLevel to
 * specify the security level of the key to check. HuksAuthStorageLevel can be left empty, which means the default
 * value HUKS_AUTH_STORAGE_LEVEL_DE is used.
 * @returns { Bool } Used to return the result. If the key exists, then() performs subsequent
 * @throws { BusinessException } 801 - api is not supported
 * @throws { BusinessException } 12000004 - operating file failed
 * @throws { BusinessException } 12000005 - IPC communication failed
 * @throws { BusinessException } 12000006 - error occurred in crypto engine
 * @throws { BusinessException } 12000011 - queried entity does not exist
 * @throws { BusinessException } 12000012 - Device environment or input parameter abnormal
 * @throws { BusinessException } 12000014 - memory is insufficient
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Security.Huks.Extension",
    throwexception: true,
    workerthread: true
]
public func hasKeyItem(keyAlias: String, options: HuksOptions): Bool

/**
 * Obtains key properties.
 *
 * @param { String } keyAlias - Key alias, which must be the same as the alias used when the key was generated.
 * @param { HuksOptions } _ - Empty object (leave this parameter empty).
 * @returns { Array<HuksParam> } Used to return the result. If the operation is successful,
 * properties in Array<HuksParam> holds the parameters required for generating the key.
 * @throws { BusinessException } 801 - api is not supported
 * @throws { BusinessException } 12000001 - algorithm mode is not supported
 * @throws { BusinessException } 12000004 - operating file failed
 * @throws { BusinessException } 12000005 - IPC communication failed
 * @throws { BusinessException } 12000006 - error occurred in crypto engine
 * @throws { BusinessException } 12000011 - queried entity does not exist
 * @throws { BusinessException } 12000012 - Device environment or input parameter abnormal
 * @throws { BusinessException } 12000014 - memory is insufficient
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Security.Huks.Extension",
    throwexception: true,
    workerthread: true
]
public func getKeyItemProperties(keyAlias: String, _: HuksOptions): Array<HuksParam>

/**
 * Obtains the certificate for anonymous attestation. This
 * operation requires Internet access and takes time. If error code 12000012 is returned, the network is abnormal. If
 * the device is not connected to the network, display a message, indicating that the network is not connected. If the
 * network is connected, the failure may be caused by network jitter. Try again later.
 *
 * @param { String } keyAlias - Alias of the key. The certificate to be obtained stores the key.
 * @param { HuksOptions } options - Parameters and data required for obtaining the certificate.
 * @returns { Array<String> } Used to return the result. If the operation is successful,
 * certChains in Array<String> is the certificate chain obtained.
 * @throws { BusinessException } 201 - check permission failed
 * @throws { BusinessException } 801 - api is not supported
 * @throws { BusinessException } 12000001 - algorithm mode is not supported
 * @throws { BusinessException } 12000004 - operating file failed
 * @throws { BusinessException } 12000005 - IPC communication failed
 * @throws { BusinessException } 12000006 - error occurred in crypto engine
 * @throws { BusinessException } 12000011 - queried entity does not exist
 * @throws { BusinessException } 12000012 - Device environment or input parameter abnormal
 * @throws { BusinessException } 12000014 - memory is insufficient
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Security.Huks.Extension",
    throwexception: true,
    workerthread: true
]
public func anonAttestKeyItem(keyAlias: String, options: HuksOptions): Array<String>

/**
 * Exports a key. This API uses a Array<UInt8> to return the result.
 *
 * @param { String } keyAlias - Key alias, which must be the same as the alias used when the key was generated.
 * @param { HuksOptions } _ - Empty object (leave this parameter empty).
 * @returns { Bytes } Used to return the result. If the operation is successful, outData
 * in Bytes is the public key exported.
 * @throws { BusinessException } 801 - api is not supported
 * @throws { BusinessException } 12000001 - algorithm mode is not supported
 * @throws { BusinessException } 12000004 - operating file failed
 * @throws { BusinessException } 12000005 - IPC communication failed
 * @throws { BusinessException } 12000006 - error occurred in crypto engine
 * @throws { BusinessException } 12000011 - queried entity does not exist
 * @throws { BusinessException } 12000012 - Device environment or input parameter abnormal
 * @throws { BusinessException } 12000014 - memory is insufficient
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Security.Huks.Extension",
    throwexception: true,
    workerthread: true
]
public func exportKeyItem(keyAlias: String, _: HuksOptions): Bytes

/**
 * Imports a wrapped key.
 *
 * @param { String } keyAlias - Alias of the wrapped key to import.
 * @param { String } wrappingKeyAlias - Alias of the data used to unwrap the key imported.
 * @param { HuksOptions } options - Tags required for the import and the wrapped key to import. The algorithm, key
 * purpose, and key length are mandatory.
 * @throws { BusinessException } 201 - check permission failed
 * @throws { BusinessException } 801 - api is not supported
 * @throws { BusinessException } 12000001 - algorithm mode is not supported
 * @throws { BusinessException } 12000002 - algorithm param is missing
 * @throws { BusinessException } 12000003 - algorithm param is invalid
 * @throws { BusinessException } 12000004 - operating file failed
 * @throws { BusinessException } 12000005 - IPC communication failed
 * @throws { BusinessException } 12000006 - error occurred in crypto engine
 * @throws { BusinessException } 12000011 - queried entity does not exist
 * @throws { BusinessException } 12000012 - Device environment or input parameter abnormal
 * @throws { BusinessException } 12000013 - queried credential does not exist
 * @throws { BusinessException } 12000014 - memory is insufficient
 * @throws { BusinessException } 12000015 - Failed to obtain the security information via UserIAM
 * @throws { BusinessException } 12000017 - The key with same alias is already exist
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Security.Huks.Extension",
    throwexception: true,
    workerthread: true
]
public func importWrappedKeyItem(keyAlias: String, wrappingKeyAlias: String, options: HuksOptions): Unit

/**
 * Generates a key. Because the key is always
 * protected in a trusted environment (such as a TEE), the result does not return the key content.
 * It returns only the information indicating whether the API is successfully called.
 *
 * @param { String } keyAlias - keyAlias indicates the key's name.
 * @param { HuksOptions } options - Tags required for generating the key. The algorithm, key purpose,
 * and key length are mandatory.
 * @throws { BusinessException } 801 - api is not supported
 * @throws { BusinessException } 12000001 - algorithm mode is not supported
 * @throws { BusinessException } 12000002 - algorithm param is missing
 * @throws { BusinessException } 12000003 - algorithm param is invalid
 * @throws { BusinessException } 12000004 - operating file failed
 * @throws { BusinessException } 12000005 - IPC communication failed
 * @throws { BusinessException } 12000006 - error occured in crypto engine
 * @throws { BusinessException } 12000012 - Device environment or input parameter abnormal
 * @throws { BusinessException } 12000013 - queried credential does not exist
 * @throws { BusinessException } 12000014 - memory is insufficient
 * @throws { BusinessException } 12000015 - Failed to obtain the security information via UserIAM
 * @throws { BusinessException } 12000017 - The key with same alias is already exist
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Security.Huks.Extension",
    throwexception: true,
    workerthread: true
]
public func generateKeyItem(keyAlias: String, options: HuksOptions): Unit

/**
 * Deletes a key.
 *
 * @param { String } keyAlias - Alias of the key to delete. It must be the key alias passed in when the key
 * was generated.
 * @param { HuksOptions } options - Options for deleting the key. For example, you can pass in HuksAuthStorageLevel to
 * specify the security level of the key to delete. HuksAuthStorageLevel can be left empty, which means the default
 * value HUKS_AUTH_STORAGE_LEVEL_DE is used.
 * @throws { BusinessException } 801 - api is not supported
 * @throws { BusinessException } 12000004 - operating file failed
 * @throws { BusinessException } 12000005 - IPC communication failed
 * @throws { BusinessException } 12000011 - queried entity does not exist
 * @throws { BusinessException } 12000012 - Device environment or input parameter abnormal
 * @throws { BusinessException } 12000014 - memory is insufficient
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Security.Huks.Extension",
    throwexception: true,
    workerthread: true
]
public func deleteKeyItem(keyAlias: String, options: HuksOptions): Unit

/**
 * Imports a key in plaintext.
 *
 * @param { String } keyAlias - keyAlias indicates the key's name.
 * @param { HuksOptions } options - Tags required for the import and key to import. The algorithm, key purpose, and
 * key length are mandatory.
 * @throws { BusinessException } 801 - api is not supported
 * @throws { BusinessException } 12000001 - algorithm mode is not supported
 * @throws { BusinessException } 12000002 - algorithm param is missing
 * @throws { BusinessException } 12000003 - algorithm param is invalid
 * @throws { BusinessException } 12000004 - operating file failed
 * @throws { BusinessException } 12000005 - IPC communication failed
 * @throws { BusinessException } 12000006 - error occured in crypto engine
 * @throws { BusinessException } 12000011 - queried entity does not exist
 * @throws { BusinessException } 12000012 - Device environment or input parameter abnormal
 * @throws { BusinessException } 12000013 - queried credential does not exist
 * @throws { BusinessException } 12000014 - memory is insufficient
 * @throws { BusinessException } 12000015 - Failed to obtain the security information via UserIAM
 * @throws { BusinessException } 12000017 - The key with same alias is already exist
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Security.Huks.Extension",
    throwexception: true,
    workerthread: true
]
public func importKeyItem(keyAlias: String, options: HuksOptions): Unit

/**
 * Initializes a session for a key operation.
 * huks.initSession, huks.updateSession, and huks.finishSession must be used together.
 *
 * @param { String } keyAlias - Alias of the key involved in the initSession operation.
 * @param { HuksOptions } options - Parameter set used for the initSession operation.
 * @returns { HuksSessionHandle } Used to return a session handle for subsequent operations.
 * @throws { BusinessException } 801 - api is not supported
 * @throws { BusinessException } 12000001 - algorithm mode is not supported
 * @throws { BusinessException } 12000002 - algorithm param is missing
 * @throws { BusinessException } 12000003 - algorithm param is invalid
 * @throws { BusinessException } 12000004 - operating file failed
 * @throws { BusinessException } 12000005 - IPC communication failed
 * @throws { BusinessException } 12000006 - error occurred in crypto engine
 * @throws { BusinessException } 12000010 - the number of sessions has reached limit
 * @throws { BusinessException } 12000011 - queried entity does not exist
 * @throws { BusinessException } 12000012 - Device environment or input parameter abnormal
 * @throws { BusinessException } 12000014 - memory is insufficient
 * @throws { BusinessException } 12000018 - the input parameter is invalid
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Security.Huks.Extension",
    throwexception: true,
    workerthread: true
]
public func initSession(keyAlias: String, options: HuksOptions): HuksSessionHandle

/**
 * Updates the key operation by segment. huks.initSession,
 * huks.updateSession, and huks.finishSession must be used together.
 *
 * @param { HuksHandleId } handle - Handle for the updateSession operation.
 * @param { HuksOptions } options - Parameter set used for the updateSession operation.
 * @param { Bytes } [token] - Authentication token for refined key access control. If this parameter is left blank,
 * refined key access control is not performed.
 * @returns { Option<Bytes> } Used to return the updateSession operation result.
 * @throws { BusinessException } 801 - api is not supported
 * @throws { BusinessException } 12000001 - algorithm mode is not supported
 * @throws { BusinessException } 12000002 - algorithm param is missing
 * @throws { BusinessException } 12000003 - algorithm param is invalid
 * @throws { BusinessException } 12000004 - operating file failed
 * @throws { BusinessException } 12000005 - IPC communication failed
 * @throws { BusinessException } 12000006 - error occurred in crypto engine
 * @throws { BusinessException } 12000007 - this credential is already invalidated permanently
 * @throws { BusinessException } 12000008 - verify auth token failed
 * @throws { BusinessException } 12000009 - auth token is already timeout
 * @throws { BusinessException } 12000011 - queried entity does not exist
 * @throws { BusinessException } 12000012 - Device environment or input parameter abnormal
 * @throws { BusinessException } 12000014 - memory is insufficient
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Security.Huks.Extension",
    throwexception: true,
    workerthread: true
]
public func updateSession(handle: HuksHandleId, options: HuksOptions, token!: Bytes = Bytes<UInt8>()): Option<Bytes>

/**
 * Finishes the key operation. huks.initSession,
 * huks.updateSession, and huks.finishSession must be used together.
 *
 * @param { HuksHandleId } handle - Handle for the finishSession operation.
 * @param { HuksOptions } options - Parameter set used for the finishSession operation.
 * @param { Bytes } [token] - Authentication token for refined key access control. If this parameter is left blank,
 * refined key access control is not performed.
 * @returns { Option<Bytes> } Returns Option<Bytes> of the result.
 * @throws { BusinessException } 801 - api is not supported
 * @throws { BusinessException } 12000001 - algorithm mode is not supported
 * @throws { BusinessException } 12000002 - algorithm param is missing
 * @throws { BusinessException } 12000003 - algorithm param is invalid
 * @throws { BusinessException } 12000004 - operating file failed
 * @throws { BusinessException } 12000005 - IPC communication failed
 * @throws { BusinessException } 12000006 - error occurred in crypto engine
 * @throws { BusinessException } 12000007 - this credential is already invalidated permanently
 * @throws { BusinessException } 12000008 - verify auth token failed
 * @throws { BusinessException } 12000009 - auth token is already timeout
 * @throws { BusinessException } 12000011 - queried entity does not exist
 * @throws { BusinessException } 12000012 - Device environment or input parameter abnormal
 * @throws { BusinessException } 12000014 - memory is insufficient
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Security.Huks.Extension",
    throwexception: true,
    workerthread: true
]
public func finishSession(handle: HuksHandleId, options: HuksOptions, token!: Bytes = Bytes<UInt8>()): Option<Bytes>

/**
 * Aborts a key operation.
 *
 * @param { HuksHandleId } handle - Handle for the abortSession operation.
 * @param { HuksOptions } options - Parameter set used for the abortSession operation.
 * @throws { BusinessException } 801 - api is not supported
 * @throws { BusinessException } 12000004 - operating file failed
 * @throws { BusinessException } 12000005 - IPC communication failed
 * @throws { BusinessException } 12000006 - error occured in crypto engine
 * @throws { BusinessException } 12000012 - Device environment or input parameter abnormal
 * @throws { BusinessException } 12000014 - memory is insufficient
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Security.Huks.Extension",
    throwexception: true,
    workerthread: true
]
public func abortSession(handle: HuksHandleId, options: HuksOptions): Unit

/**
 * Defines the param field in the properties array of options used in the APIs.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Security.Huks.Core"
]
public class HuksParam {
    /**
     * tag.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public var tag: UInt32

    /**
     * Value of the tag.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public var value: HuksParamValue

    /**
     *HuksParam constructor
     *
     * @param { UInt32 } tag - indicates of the huks tag.
     * @param { HuksParamValue } value - indicates of the huks value.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public init(tag: UInt32, value: HuksParamValue)
}

/**
  * Defines type Bytes.
  */
public type Bytes = Array<UInt8>

/**
 * Defines enum HuksParamValue.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Security.Huks.Core"
]
public enum HuksParamValue {
    /**
     * The returned type is Bool.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.Huks.Core"
    ] 
    BooleanValue(Bool)
    | 
    /**
     * The returned type is Int32.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.Huks.Core"
    ] 
    Int32Value(Int32)
    | 
    /**
     * The returned type is UInt32.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.Huks.Core"
    ] 
    Uint32Value(UInt32)
    | 
    /**
     * The returned type is UInt64.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.Huks.Core"
    ] 
    Uint64Value(UInt64)
    | 
    /**
     * The returned type is Bytes.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.Huks.Core"
    ] 
    BytesValue(Bytes)
    | ...
}

/**
 * Defines options used in the APIs.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Security.Huks.Core"
]
public class HuksOptions {
    /**
     * Properties used to hold the HuksParam array.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public var properties: Array<HuksParam>
    /**
     * Input data.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public var inData: Bytes
    /**
     * HuksOptions constructor
     *
     * @param { Array<HuksParam> }[properties] - indicates of the huksParam array.
     * @param { Bytes }[inData] - indicates of the huks input data.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public init(properties!: Array<HuksParam> = Array<HuksParam>(), inData!: Bytes = Bytes<UInt8>())
}

/**
 * Defines the struct for a HUKS handle.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Security.Huks.Core"
]
public class HuksSessionHandle {
    /**
     * Value of the handle.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public var handle: HuksHandleId
    /**
     * Challenge obtained after the initSession operation.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Security.Huks.Core"
    ]
    public var challenge: Bytes
}

/**
 * Interface of huks handle.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Security.Huks.Extension"
]
public class HuksHandleId {}
