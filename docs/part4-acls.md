# Part 4 — Permissions and ACLs

Solved two edge cases the classic three-bucket permission model cannot handle. Bob was given deployment write access to /opt/myapp via ACL without changing group structure. Vekez was given read access to /var/log/myapp via ACL plus a default ACL ensuring all future log files automatically inherit her read access.

Key learning: Groups handle broad shared access. ACLs handle surgical exceptions. Default ACLs are essential for directories where new files are created regularly — without them access breaks every time new content appears.
