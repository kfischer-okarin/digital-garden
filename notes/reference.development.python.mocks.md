---
id: r1tkhly5g0lvys4b08mgi3l
title: Mocks
desc: ''
updated: 1653569923719
created: 1652968835728
---

# Mocks

## Replacing functions/classes in a module

```py
from unittest.mock import patch

# Manually
method_patch = patch('module.submodule.function', autospec=True)
mocked_function = method_patch.start()

# ... do stuff

method_patch.stop()

# Context Manager
with patch('module.submodule.function', autospec=True) as mocked_function:
    # ... do stuff
```

## Replacing functions on a object

```py
from unittest.mock import patch

# Manually
method_patch = patch.object(an_object, 'object_method', autospec=True)
mocked_function = method_patch.start()

# ... do stuff

method_patch.stop()

# Context Manager
with patch.object(an_object, 'object_method', autospec=True) as mocked_function:
    # ... do stuff
```
