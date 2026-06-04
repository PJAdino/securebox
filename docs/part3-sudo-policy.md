# Part 3 — Sudo Policy

Implemented least privilege privilege escalation. Alex gets full sudo with password required. Bob can only restart the Backendapp service, passwordless for automation. Vekez can only read journalctl logs, password required as a deliberate human action.

Key learning: Sudo is only meaningful when it restricts what each person can run. Giving everyone full sudo is root access with extra steps. Every denied action was verified as important as every allowed action — a policy that is only tested for what it allows has not been proven to work.
