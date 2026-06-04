#!/bin/bash

# ── Create groups ────────────────────────────
sudo groupadd developers
sudo groupadd webteam
sudo groupadd auditors

# ── Assign users to groups ───────────────────
sudo usermod -aG developers alex
sudo usermod -aG developers bob
sudo usermod -aG webteam bob
sudo usermod -aG webteam nginx
sudo usermod -aG auditors vekez

# ── Verification ─────────────────────────────
echo "──── Group memberships ────"
groups alex
groups bob
groups vekez
groups nginx
echo "──── Done ────"
