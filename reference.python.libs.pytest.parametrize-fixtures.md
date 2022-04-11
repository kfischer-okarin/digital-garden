---
id: 018bcs1bl4bw38x1aeglrco
title: Parametrize Fixtures
desc: ''
updated: 1649716641350
created: 1649716591472
---

# Parametrizing fixtures

## Indirectly on test cases

```py
@pytest.mark.parametrize("fixture_name", ["value1", "value2"], indirect=True)
```
