#!/usr/bin/env bash
# setup_ssh_dir.sh
# Creates the ~/.ssh directory and sets correct permissions on it and its key files.

set -euo pipefail

SSH_DIR="${HOME}/.ssh"

# ── 1. Create the directory if it doesn't exist ───────────────────────────────
if [ ! -d "${SSH_DIR}" ]; then
    mkdir -p "${SSH_DIR}"
    echo "Created ${SSH_DIR}"
else
    echo "${SSH_DIR} already exists"
fi

# ── 2. Set correct permissions on the directory itself ───────────────────────
# Must be 700: only the owner can read, write, or enter it.
chmod 700 "${SSH_DIR}"
echo "Set ${SSH_DIR} permissions to 700"

# ── 3. Fix permissions on common files inside ~/.ssh ─────────────────────────

# Private keys → 600 (owner read/write only)
for private_key in "${SSH_DIR}"/id_* ; do
    # Skip public keys and non-existent globs
    [[ "${private_key}" == *.pub ]] && continue
    [ -f "${private_key}" ] || continue
    chmod 600 "${private_key}"
    echo "Set ${private_key} permissions to 600 (private key)"
done

# Public keys → 644 (owner rw, others read)
for public_key in "${SSH_DIR}"/*.pub ; do
    [ -f "${public_key}" ] || continue
    chmod 644 "${public_key}"
    echo "Set ${public_key} permissions to 644 (public key)"
done

# authorized_keys → 600
if [ -f "${SSH_DIR}/authorized_keys" ]; then
    chmod 600 "${SSH_DIR}/authorized_keys"
    echo "Set authorized_keys permissions to 600"
fi

# known_hosts → 644
if [ -f "${SSH_DIR}/known_hosts" ]; then
    chmod 644 "${SSH_DIR}/known_hosts"
    echo "Set known_hosts permissions to 644"
fi

# config → 600 (may contain sensitive host/proxy settings)
if [ -f "${SSH_DIR}/config" ]; then
    chmod 600 "${SSH_DIR}/config"
    echo "Set config permissions to 600"
fi

# ── 4. Verify ─────────────────────────────────────────────────────────────────
echo ""
echo "=== Final permissions ==="
ls -la "${SSH_DIR}"

echo ""
echo "Done. SSH directory is ready."
