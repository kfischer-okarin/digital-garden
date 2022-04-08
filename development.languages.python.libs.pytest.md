---
id: 1uhq7rrzicz2rb103rzho2b
title: pytest
desc: ''
updated: 1649404781234
created: 1649239256735
---
# pytest

## Parametrizing tests

```py
@pytest.mark.parametrize(
    "arg1,arg2",
    [
        # Tuple only when multiple arguments, otherwise directly
        ('arg1value1', 'arg2value1'),
        ('arg1value2', 'arg2value2')
    ],
    # Optionally also human-readable ids
    ids=[
        'First Condition',
        'Second Condition'
    ]
)
```


## Parametrizing fixtures indirectly on test cases

```py
@pytest.mark.parametrize(
    "fixture_name",
    [
        'value1',
        'value2'
    ],
    indirect=True,
    # Optionally also human-readable ids
    ids=[
        'First Condition',
        'Second Condition'
    ]
)
```

## Use fixtures without referencing them

```py
@pytest.mark.usefixtures("cleandir")
```
