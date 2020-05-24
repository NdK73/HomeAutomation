# Security Chips

This folder contains developement notes and references to the needed personalization of the supported security chips (coprocessors).

## Included

Nothing yet. SW only.

## WIP

### ATECC608A

I2C address: **0x60**

16 key slots, supporting
 - NISTP256 curve for ECDH, key-derivation and signature
 - AES keys
 - Secrets for SHA

Since full datasheet is not freely available for ATECC608A, the results are obtained by reverse engineering from the publicly available datasheets and code:
 - [ATSHA204A official datasheet](ATSHA204A-Data-Sheet-40002025A.pdf)
 - [ATECC508A **full** datasheet](ATECC508A.pdf)
 - [ATECC608A **brief** datasheet](ATECC608A_(brief).pdf) (too bad the full one is under NDA)
 - [Microchip AN2589](ATECC608A-AN2589.pdf) for some more details about config area changes
 - [SparkFun_ATECCX08a_Arduino_Library](https://github.com/sparkfun/SparkFun_ATECCX08a_Arduino_Library)
 - Microchip's [cryptoauthlib](https://github.com/MicrochipTech/cryptoauthlib) and [cryptoauthtools](https://github.com/MicrochipTech/cryptoauthtools/)
 - [atecc608a python lib source](https://github.com/ergo70/atecc608a)
 - [ECC608-AES-GCM-Test](https://github.com/kmwebnet/ECC608-AES-GCM-test)

Slot allocations:
 - 0: device private key for attestation (ECDH=0, Internal sigs=1, External sigs=0), **must be locked after generating key**
 - 1: device private key for ECDH (ECDH=1, Internal sigs=0, External sigs=0), **must be locked after generating key**
 - 2: 1st base station's PK for ECDH
 - 3: 2nd base station's PK for ECDH
 - 4: Master secret 1 (node-bs1) (written by ECDH 1+2)
 - 5: Shared key 1 (derived from key 4 via KDF)
 - 6: Master secret 2 (node-bs2) (written by ECDH 1+3)
 - 7: Shared key 2 (derived from key 6 via KDF)
 - 8-15: Group secrets for SHA

Generate device attestation certificate:
 - generate key 0: GenKey(0b00001100 /* Generate digest in TmpKey, new random private key */, 0x0000 /* Keyslot * */ ), check return value (might fail); save returned pubkey (64 bytes, X,Y)
 - generate self signed certificate: Sign(0x80 /* InternalSig */, 0x0000 /* Keyslot 0 */); save result (64 bytes, R,S)

Verify device attestation certificate:
**TODO**

#### Python code

The code uses 

## TBD

### ATSHA204A

I2C address: **0x64**

Not being able to do actual crypto, it requires  **secure initialization** of the shared secret.
Depending on your security requirements it can range from easy to very difficult.

References:
 - [ATSHA204A official datasheet](ATSHA204A-Data-Sheet-40002025A.pdf)

### SE050

NXP SE050 (SE050C1 variant) is in a not very hobbyst-friendly package but supports all ECC curves, including Curve25510/Ed25519, **and** RSA up to 4096 bits.
A1 variant only supports ECC curver, B1 variant only RSA.

### DS2477 / DS28C50

Just supports SHA3 for authentication, no crypto. Similar to ATSHA204, but from Maxim.
