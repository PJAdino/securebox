# Part 2 — Groups and Ownership

Designed three groups from real business access needs — developers, webteam, auditors. Created three directories in appropriate filesystem locations (/opt/myapp, /srv/web, /var/log/myapp) with service account ownership and group-based access. Permission bits set to 750 so outsiders get nothing.

Key learning: Design groups from need first, commands second. A group should represent a genuine shared access requirement between multiple identities. The execute bit on a directory means traversal — r-x together gives meaningful access.
