# Part 8 — Ansible Automation Capstone

Wrote a complete Ansible playbook provisioning everything from Parts 1 through 7 on a fresh machine automatically. Proven across four runs: fresh provisioning, idempotency (changed=0), self-healing after manual user deletion (changed=2 fixing only what was missing), and restored idempotency (changed=0).

Key learning: Infrastructure as code eliminates undocumented configuration. When everything is in the playbook there are no snowflake servers. The self-healing demonstration captures the operational value — a corrupted configuration gets corrected automatically the next time the playbook runs.
