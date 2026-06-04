# Part 3 — Sudo Policy

Implemented least privilege privilege escalation. Alex gets full sudo with password required. Bob can only restart the Backendapp service, passwordless for automation. Vekez can only read journalctl logs, password required as a deliberate human action.

The sudo policy file lives at ansible/templates/securebox_sudo.j2 and is deployed via the Ansible playbook with visudo validation. To deploy manually:

```bash
sudo visudo -f /etc/sudoers.d/securebox
```

Then paste the contents of securebox_sudo.j2.

Key learning: Sudo is only meaningful when it restricts what each person can run. Giving everyone full sudo is root access with extra steps. visudo validates syntax before saving — a broken sudoers file locks out all sudo access. Every denied action was verified as important as every allowed action.
