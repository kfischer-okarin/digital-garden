---
id: 6cb1d8vr9f8rogvgu4wfnu4
title: Dump a database
desc: ''
updated: 1652088738748
created: 1652088664349
---

# Dump a database

```sh
mysqldump -h db.url.com -p -u user databasename > dump.sql
```

## Explation

- `-p` will prompt for a password
- Automatically adds drop table statements by default
