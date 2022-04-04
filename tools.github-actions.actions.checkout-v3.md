---
id: unff2t46w0tcezbyo8aw5av
title: Checkout V3
desc: ''
updated: 1649059633666
created: 1649059313409
---

# Checkout V3

```yaml
- uses: actions/checkout@v3
  with:
    repository: ${{ github.repository }}
    ref: ${{ github.ref }} # or default branch
    path: '' # Target path
```
