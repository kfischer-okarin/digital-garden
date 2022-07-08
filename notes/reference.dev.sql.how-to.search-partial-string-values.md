---
id: 9x3cswv9q9vv37onvrycv2h
title: Search Partial String Values
desc: ''
updated: 1657187838678
created: 1657187717260
---
# Search Partial String Values

```sql
SELECT * FROM issues WHERE subject LIKE '2022-07%'
```

- `%` matches arbitrary characters
- the `LIKE` clause must be wrapped in **single** quotes
