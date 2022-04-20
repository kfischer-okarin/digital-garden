---
id: b1xv8nuxd138gnu44ooqzlr
title: Require Authentication for an Endpoint
desc: ''
updated: 1650464076316
created: 1650463973813
---

# Require Authentication for an Endpoint

Add the `permission_classes` decorator with the `IsAuthenticated` permission class to the view.

```py
from rest_framework.decorators import api_view, permission_classes
from rest_framework.permissions import IsAuthenticated


@api_view(["GET"])
@permission_classes([IsAuthenticated])
def my_authorized_view(request):
    # ...
```
