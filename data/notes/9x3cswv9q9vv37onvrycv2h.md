# Search Partial String Values

```sql
SELECT * FROM issues WHERE subject LIKE '2022-07%'
```

- `%` matches arbitrary characters
- the `LIKE` clause must be wrapped in **single** quotes
