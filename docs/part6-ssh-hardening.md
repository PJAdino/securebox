# Part 6 — SSH Hardening

Generated ed25519 keypair on Windows, deployed public key to server, then hardened sshd_config — PermitRootLogin no, PasswordAuthentication no, AllowUsers restricted to vboxuser, alex, and bob. Vekez excluded as auditor role has no SSH requirement.

Key learning: Always confirm key authentication works before disabling password authentication. The order of operations prevents lockout. NAT networking in VirtualBox is unreachable from the host — a Host-Only adapter is required for SSH from Windows.
