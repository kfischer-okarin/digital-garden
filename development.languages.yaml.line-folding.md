---
id: lrpss9vuha3xndrcv6g5v8l
title: Line Folding
desc: ''
updated: 1649470209015
created: 1649469744675
---

# Line folding

```yaml
value: >-
  This is
  actually one line
```

results in a string `"This is actually one line"`

The `-` behind `>` means chomping (removing the final newline).
