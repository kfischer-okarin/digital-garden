
# Dump a database

```sh
mysqldump -h db.url.com -p -u user databasename > dump.sql
```

## Explation

- `-p` will prompt for a password
- Automatically adds drop table statements by default
