
# Override Fixtures

You can just refer to the fixture with the same name to get the definition from the next higher scope.

```py
@pytest.fixture
def users(users):
    return users + [User(id='seconduser')]
```
