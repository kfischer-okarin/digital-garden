
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
