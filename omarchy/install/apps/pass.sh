#!/bin/bash
echo "==> Installing pass and gnupg if not present..."
sudo pacman -S --needed pass gnupg

echo
echo "How do you want to generate your GPG key?"
echo "  [1] Automated (recommended: ECC, Ed25519 sign + Curve25519 encrypt)"
echo "  [1] Manual/Expert (interactive wizard)"
read -p "Choice [1/2]: " mode
keygen_ok=false

if [[ "$mode" == "1" ]]; then
    echo
    echo "==> Creating a secure ECC key (Ed25519 for sign, Curve25519 for encryption)..."
    cat >genkey-batch <<EOF
Key-Type: eddsa
Key-Curve: Ed25519
Key-Usage: sign
Subkey-Type: ecdh
Subkey-Curve: Curve25519
Subkey-Usage: encrypt
Name-Real: $USER
Name-Email: ${USER}@$(hostname)
Expire-Date: 2y
%commit
EOF
    gpg --batch --gen-key genkey-batch
    gpg_exit_code=$?
    rm genkey-batch
    if [[ $gpg_exit_code -eq 0 ]]; then
        keygen_ok=true
        echo "Automated ECC key generation complete."
    else
        echo "ERROR: Automated ECC key generation failed!"
        echo "Falling back to manual method. Please generate your key interactively:"
        echo
        echo "    gpg --full-generate-key"
        echo "When prompted, choose:"
        echo " - Key type: ECC (sign/encrypt)"
        echo " - Curve: Ed25519 (primary), Curve25519 (subkey)"
        echo " - Use sign for main, encrypt for subkey"
        echo " - Appropriate name/email/expiry"
        exit 1
    fi
else
    echo
    echo "==> Launching manual expert key generation:"
    echo "(For highest security, choose ECC sign/encrypt; Ed25519 and Curve25519)"
    gpg --full-generate-key
    if [[ $? -eq 0 ]]; then
        keygen_ok=true
    else
        echo "ERROR: Manual key generation failed. Please troubleshoot and re-run this script."
        exit 1
    fi
fi

if $keygen_ok; then
    echo
    echo "==> Detecting your most recently created GPG key ID..."
    gpgid=$(gpg --list-secret-keys --with-colons | grep '^sec' | tail -n1 | cut -d: -f5)
    if [[ -z "$gpgid" ]]; then
        echo "ERROR: No GPG key detected. Please run gpg --list-secret-keys --with-colons to verify."
        exit 1
    fi
    echo "Detected key ID: $gpgid"
    echo
    # Password store logic
    if [[ -d "$HOME/.password-store" ]]; then
        echo "A password-store already exists at $HOME/.password-store."
        read -p "Do you want to overwrite it? (y/n): " overwrite
        if [[ $overwrite =~ ^[Yy] ]]; then
            rm -rf "$HOME/.password-store"
            echo "Previous password-store deleted."
            pass init "$gpgid"
            echo "New password-store initialized with your GPG key."
        else
            echo "Keeping existing password store and skipping pass initialization."
        fi
    else
        pass init "$gpgid"
        echo "New password-store initialized with your GPG key."
    fi
else
    echo "ERROR: No GPG key was created."
    exit 1
fi

echo
read -p "Do you want to initialize git in your password-store for backup/versioning? (y/n): " ans
if [[ $ans =~ ^[Yy] ]]; then
    cd "$HOME/.password-store" || exit 1
    git init
    echo "Git initialized in ~/.password-store"
fi

echo
echo "==> Creating ~/.gnupg/gpg.conf and setting permissions..."
mkdir -p "$HOME/.gnupg"
chmod 700 "$HOME/.gnupg"
cat >"$HOME/.gnupg/gpg.conf" <<EOGPGCONF
use-agent
armor
charset utf-8
no-greeting
no-permission-warning
no-escape-from-lines
no-batch
keyserver hkp://keys.openpgp.org
keyserver hkp://keyserver.ubuntu.com
keyserver-options auto-key-retrieve no-honor-keyserver-url include-revoked import-clean timeout=60
auto-key-locate local,keyserver,wkd,dane
import-options import-clean repair-pks-subkey-bug
no-secmem-warning
list-options show-policy-urls show-notations show-keyserver-urls show-uid-validity
verify-options show-uid-validity
with-fingerprint
with-keygrip
keyid-format 0xlong
no-emit-version
no-comments
export-options export-minimal
default-key 0x$gpgid
default-recipient-self
personal-cipher-preferences AES256 AES192 AES CAMELLIA256 TWOFISH
personal-aead-preferences EAX OCB
personal-digest-preferences SHA512 SHA384 SHA256
default-preference-list SHA512 SHA384 SHA256 AES256 AES192 AES ZLIB BZIP2 ZIP Uncompressed
personal-compress-preferences ZLIB BZIP2 ZIP Uncompressed
cert-digest-algo SHA512
s2k-cipher-algo AES256
s2k-digest-algo SHA512
compliance gnupg
enable-dsa2
trust-model tofu+pgp
allow-weak-digest-algos
allow-weak-key-signatures
allow-old-cipher-algos
log-file ~/.gnupg/gpg.log
utf8-strings
auto-key-retrieve
auto-key-import
include-key-block
EOGPGCONF
chmod 600 "$HOME/.gnupg/gpg.conf"
echo
echo "To validate your gpg.conf, run: gpg --gpgconf-test"
echo "pass setup complete! Don't forget to back up your ~/.gnupg and ~/.password-store!"
