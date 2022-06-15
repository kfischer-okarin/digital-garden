---
id: qjchgnjga1ne4zs6zdumwbq
title: Get Note via Engine API
desc: ''
updated: 1655205249698
created: 1655201992918
---

# Get Note via Engine API

## Request
Find out `<port>` by reading the contents of `<workspace-path>/.dendron.port`.

```http
POST localhost:<port>/api/note/getByPath
Content-Type: application/json

{
    "npath": "<note-id>",
    "ws": "<workspace-path>"
}
```

## Response

```json
{
    "data": { DNoteProps Object },
    "error": null
}
```

See `DNodeProps` in
[common-all/src/types/foundation.ts](https://github.com/dendronhq/dendron/blob/master/packages/common-all/src/types/foundation.ts)
