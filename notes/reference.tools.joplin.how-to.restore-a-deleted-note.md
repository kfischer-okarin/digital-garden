---
id: pqzbc437f8sdlp3jyt09t4t
title: Restore a deleted note
desc: ''
updated: 1652080938754
created: 1652080655834
---

# Restore a deleted note

Open the Joplin database with SQLite3

```sh
sqlite3 ~/.config/joplin-desktop/database.sqlite
```

Select latest revisions to find your note's item id.

```sql
sqlite> select item_id, body_diff, created_time from revisions order by created_time;
```

Open the command palette in Joplin with `Cmd+Shift+P` and enter

```joplin
restoreNoteRevision <item_id>
```
