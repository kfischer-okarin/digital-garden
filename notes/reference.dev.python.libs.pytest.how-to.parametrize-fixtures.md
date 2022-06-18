---
id: 018bcs1bl4bw38x1aeglrco
title: Parametrize Fixtures
desc: ''
updated: 1649929200416
created: 1649716591472
---

# Parametrizing fixtures

## Indirectly on test cases

```py
@pytest.mark.parametrize("fixture_name", ["value1", "value2"], indirect=True)
```

## Directly in fixtures via `request.param`

```py
@pytest.fixture(params=["smtp.gmail.com", "mail.python.org"])
def some_fixture_value(request):
    # use request.param
```
