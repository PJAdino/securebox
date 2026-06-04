# Part 5 — Authentication and PAM

Configured PAM authentication pipeline with password aging (30 day maximum, 14 day warning) on all human accounts. Simulated employee offboarding by locking Vekez's account and verifying authentication failure with correct password. Simulated contractor return by unlocking and confirming access restored instantly.

Key learning: Lock rather than delete on offboarding — deletion orphans files and destroys forensic attribution. The exclamation mark in /etc/shadow locks without destroying anything. Service accounts show the same mark by design — a second layer of protection alongside their nologin shell.
