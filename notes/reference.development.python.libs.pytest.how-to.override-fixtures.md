---
id: rahsc0c8i3yhu9rjqc7t2is
title: Override Fixtures
desc: ''
updated: 1655104982073
created: 1655104884905
---

# Override Fixtures

You can just refer to the fixture with the same name to get the definition from the next higher scope.

```py
@pytest.fixture
def users(users):
    return users + [User(id='seconduser')]
```
