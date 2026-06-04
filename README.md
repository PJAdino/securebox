# SecureBox — Linux User Management & Security Hardening

A complete Linux server hardening project built from scratch on Ubuntu Server 22.04.
Covers eight security layers from identity management through full Ansible automation.

## What this demonstrates

- Linux user and group management — UIDs, shells, home directories, service accounts
- Filesystem permissions and ACLs — ownership, chmod, setfacl, default ACLs
- Sudo policy — least privilege, visudo, NOPASSWD, command path restrictions
- PAM authentication — password aging, account locking, offboarding simulation
- SSH hardening — key-based auth, PermitRootLogin no, AllowUsers restriction
- Kernel-level audit trail — auditd, watch rules, ausearch, aureport
- Infrastructure as code — full Ansible playbook with idempotency proven

## Environment

- Host: Windows 11
- Hypervisor: VirtualBox
- Guest: Ubuntu Server 22.04 LTS
- Ansible: 2.20.1

## Quick Start

### Prerequisites
- Fresh Ubuntu Server 22.04 VM
- Ansible installed: `sudo apt install -y ansible`
- Passwordless sudo configured for the provisioning user

### Run the playbook
```bash
git clone https://github.com/YOURUSERNAME/securebox.git
cd securebox/ansible
cp inventory.ini.example inventory.ini
# Edit inventory.ini with your server IP
ansible-playbook securebox.yml
```

## Project Structure
securebox/
├── ansible/
│   ├── securebox.yml          # Main provisioning playbook
│   ├── inventory.ini.example  # Inventory template
│   ├── ansible.cfg            # Ansible configuration
│   └── templates/
│       └── securebox_sudo.j2  # Sudoers policy template
├── scripts/
│   ├── provision-users.sh     # User and service account creation
│   ├── provision-groups.sh    # Group creation and membership
│   ├── provision-acls.sh      # ACL rules for bob and vekez
│   ├── provision-pam.sh       # Password aging policy
│   └── provision-audit.sh     # Auditd rules
└── docs/
├── part1-identity.md
├── part2-groups-ownership.md
├── part3-sudo-policy.md
├── part4-acls.md
├── part5-pam.md
├── part6-ssh-hardening.md
├── part7-audit-trail.md
└── part8-ansible-capstone.md

## Security Properties Proven

- Service accounts cannot log in interactively — nologin shell and locked password
- Least privilege enforced — bob can only restart one specific service
- SSH password authentication disabled — keys only
- Root SSH login blocked — no direct root access
- All critical filesystem events recorded at kernel level
- Full server reproducible from zero via single Ansible command
- Configuration drift detected and corrected automatically

## Idempotency Proof

Running the playbook three times:
- Run 1: All resources provisioned from zero
- Run 2: changed=0 — nothing to do
- Run 3 after deleting bob: changed=2 — bob recreated with correct properties
- Run 4: changed=0 — system back to defined state
