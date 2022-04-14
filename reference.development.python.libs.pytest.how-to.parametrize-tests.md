---
id: f9gbum3a449ah7p5km5z6a4
title: Parametrize Tests
desc: ''
updated: 1649929206678
created: 1649716301326
---

# Parametrize tests

## Single argument

```py
@pytest.mark.parametrize("color", ["red", "blue", "green"], id=str)
```

## Multiple arguments

```py
@pytest.mark.parametrize("height,width", [(20, 30), (40, 10)], id=str)
```

## Custom human readable ids
```py
@pytest.mark.parametrize(
    "height,width",
    [
        (10, 5),
        (400, 200)
    ],
    ids=[
        'small size',
        'big size'
    ]
)
```
