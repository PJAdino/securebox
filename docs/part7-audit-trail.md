# Part 7 — Audit Trail

Installed auditd and configured six watch rules covering sudoers modifications, user database changes, and sudo execution. Verified all rules by deliberately triggering each scenario and confirming events were recorded. Rules written to persistent rules file and confirmed surviving reboot.

Key learning: Auditd operates at the kernel level — below sudo, below applications, below user sessions. It catches events regardless of how they happen. Someone modifying /etc/passwd directly without sudo never appears in the sudo log but cannot bypass auditd.
