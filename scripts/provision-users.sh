#!/bin/bash

# ── Human accounts ──────────────────────────
sudo useradd -m -s /bin/bash -c "System Administrator" alex
sudo useradd -m -s /bin/bash -c "Developer" bob
sudo useradd -m -s /bin/bash -c "Auditor" vekez

# ── Service accounts ────────────────────────
sudo useradd -r -s /usr/sbin/nologin -M -c "Web server" nginx
sudo useradd -r -s /usr/sbin/nologin -M -c "Backend application" backendapp
sudo useradd -r -s /usr/sbin/nologin -M -c "Database" db

# ── Verification ────────────────────────────
echo "──── Human accounts ────"
grep -E "alex|bob|vekez" /etc/passwd
echo "──── Service accounts ────"
grep -E "nginx|backendapp|db" /etc/passwd
echo "──── Done ────"
