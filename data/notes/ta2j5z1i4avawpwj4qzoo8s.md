
# Dump a database

```sh
pg_dump -h db.url.com -d databasename -u user -cC > dump.sql
```

## Explation

- `-c` will drop all existing data before restoring the dumped data
- `-C` will include database creation
  - will drop the whole database instead of all tables when used together with `-c`
