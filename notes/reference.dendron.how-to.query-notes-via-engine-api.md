---
id: qjchgnjga1ne4zs6zdumwbq
title: Query Notes via Engine API
desc: ''
updated: 1656426242839
created: 1655201992918
---

# Query Notes via Engine API

## Request
Find out `<port>` by reading the contents of `<workspace-path>/.dendron.port`.

```http
GET localhost:<port>/api/note/query?ws=<workspace-path>&qs=<filter>
```

`<filter>` is space separated parts of the node ids you look for.

If you want to find `work.journal.2022.06.*` you could use `work journal 2022 06.` (the dot after `06` is to make sure
that a note `work.journal.2022.06` would not match.

Reference: [Fuse Extended Search](https://fusejs.io/examples.html#extended-search)

## Response

```json
{
    "data": [
        { DNoteProps Object },
    ],
    "error": null
}
```

See `DNodeProps` in
[common-all/src/types/foundation.ts](https://github.com/dendronhq/dendron/blob/master/packages/common-all/src/types/foundation.ts)
