
# Checkout V3

```yaml
- uses: actions/checkout@v3
  with:
    repository: ${{ github.repository }}
    ref: ${{ github.ref }} # or default branch
    path: '' # Target path
```
