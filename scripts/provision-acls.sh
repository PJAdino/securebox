#!/bin/bash

# ── Bob deployment access to app directory ───
sudo setfacl -m u:bob:rwx /opt/myapp

# ── Vekez read access to existing log files ──
sudo setfacl -m u:vekez:r-x /var/log/myapp

# ── Vekez default ACL for future log files ───
sudo setfacl -d -m u:vekez:r-x /var/log/myapp

# ── Verification ─────────────────────────────
echo "──── ACLs on app directory ────"
getfacl /opt/myapp
echo "──── ACLs on log directory ────"
getfacl /var/log/myapp
echo "──── Done ────"
