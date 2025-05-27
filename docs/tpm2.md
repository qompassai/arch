<!-- ~/.GH/Qompass/Arch/docs/tpm2.md -->
<!-- ------------------------------- -->
<!-- Copyright (C) 2025 Qompass AI, All rights reserved -->

<h2> Trusted Platform Module v2 </h2>

<h3> TPM2 Encryption Legend </h3>
| Key Size | Security Level | Real-World Equivalent | Recommendation | Use Case |
|----------|----------------|----------------------|----------------|----------|
| **32 bytes** | [AES-256](https://csrc.nist.gov/publications/detail/fips/197/final) | 🏆 **Military/Government Grade** | ✅ **Recommended** | Standard secure storage |
| **64 bytes** | Beyond AES | 🔒 **Theoretical Ultra-High** | ⚠️ **Overkill** | Paranoid security |
| **128 bytes** | Beyond AES | 🔐 **Extreme Theoretical** | ❌ **Unnecessary** | Academic research only |
| **4,096 bytes** | Beyond AES | 🚀 **Science Fiction Level** | ❌ **Wasteful for most** | **Valid for security professionals/highly sensitive data at rest** |

### **Real World Translation*

- **32 bytes (AES-256)**: Used by banks, governments, and military 🏛️
- **64+ bytes**: Like using a 50-foot steel door on a house 🏠
- **Bigger ≠ Better**: Extra size doesn't add real security 📏

### **What This Means**

- [AES-256](https://csrc.nist.gov/publications/detail/fips/197/final) would take longer than the age of the universe to crack 🌌
- [NIST standards](https://csrc.nist.gov/projects/cryptographic-standards-and-guidelines) mandate AES-256 for sensitive government data 🏛️
- [NSA approves](https://www.nsa.gov/Cybersecurity/Commercial-Solutions-for-Classified-Program/) AES-256 for TOP SECRET information 🇺🇸
- [Federal requirements](https://csrc.nist.gov/publications/detail/fips/140/2/final) specify AES-256 for classified systems 📋
- [Industry standard
  Encryption](https://learn.microsoft.com/en-us/windows/security/hardware-security/tpm/switch-pcr-banks-on-tpm-2-0-devices) Widespread Enterprise adoption 

---

<h3> How to Create your TPM2 Keyfiles (The Linux way) </h3>

---

<h4> 256-bit/32-byte: AES-256 </h4>

```sh
sudo dd if=/dev/urandom of=/boot/keyfile.bin bs=32 count=1
```

<h4> 512-bit/64-byte </h4>

```sh
sudo dd if=/dev/urandom of=/boot/keyfile.bin bs=64 count=1
```

<h4> 1024-bit/128-byte </h4>

```sh
sudo dd if=/dev/urandom of=/boot/keyfile.bin bs=128 count=1
```
<h4> 32768-bit/4096 byte </h4>

```
sudo dd if=/dev/urandom of=/boot/keyfile.bin bs=4096 count=1
```
---

```sh
sudo tpm2_create -C 0x81000007 -G ecc256 -u /boot/keyfile.pub -r /boot/keyfile.priv \
    -L "pcr:sha256:0,7,14" -i /boot/keyfile.bin
```

```sh
sudo tpm2_load -C 0x81000007 -u /boot/keyfile.pub -r /boot/keyfile.priv -c /boot/keyfile.ctx
```

<h4> Create Policy and then build- 2 step process </h4>

<h5> What's a policy? </h5>

```tldr
The policy file (/boot/pcr_policy.dat) is like written instructions that tell your computer's security chip (TPM) exactly when it's safe to unlock your encrypted data.
```

```long version
How it works:

    Your computer takes "fingerprints" of important system parts (boot process, security settings, etc.)

    These fingerprints are stored as PCR values (0, 7, 14)

    The policy file says: "Only unlock the secret key if these exact fingerprints match"

It's like a bank vault that only opens when:

    ✅ The right person shows up (Platform Configuration Register (PCR) 0 is your computer's identity)

    ✅ They have the correct security badge (PCR 7 - boot security status)

    ✅ They pass the building's security scan (PCR 14 - additional verification)

What this protects against:

    🚫 Someone stealing your hard drive and putting it in another computer

    🚫 Malicious software changing your boot process

    🚫 Hackers trying to bypass your computer's security

Bottom line: Your encrypted data stays locked unless your computer is in its exact, trusted state!
```

- 1.

```sh
sudo tpm2_createpolicy --policy-pcr -l "sha256:0,7,14" -L /boot/pcr_policy.dat
```
- 2.

```sh
sudo tpm2_create -C 0x81000007 -u /boot/keyfile.pub -r /boot/keyfile.priv \
    -L /boot/pcr_policy.dat -i /boot/keyfile.bin
```
