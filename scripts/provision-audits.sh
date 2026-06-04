#!/bin/bash

# ── Install auditd ───────────────────────────
sudo apt install -y auditd
sudo systemctl enable auditd
sudo systemctl start auditd

# ── Audit rules ──────────────────────────────
sudo auditctl -w /etc/sudoers.d/ -p wa -k sudo_modification
sudo auditctl -w /etc/sudoers -p wa -k sudo_modification
sudo auditctl -w /etc/passwd -p wa -k user_modification
sudo auditctl -w /etc/shadow -p wa -k user_modification
sudo auditctl -w /etc/group -p wa -k user_modification
sudo auditctl -w /usr/bin/sudo -p x -k sudo_command_use

# ── Verification ─────────────────────────────
echo "──── Active audit rules ────"
sudo auditctl -l
echo "──── Done ────"
