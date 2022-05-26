---
id: q8mp4vdnxm30en1j23s796k
title: Replace String in many files
desc: ''
updated: 1651573121962
created: 1651572560212
---

# Replace String in many files

```sh
sed -i '.bak' 's/foo/bar/g' *
```

will replace `foo` with `bar`.

`-i '.bak'` is necessary on macOS and will create backup files (ending in `.bak`) before replacing.

## Remove the backups

```sh
find . | grep .bak | xargs rm
```
