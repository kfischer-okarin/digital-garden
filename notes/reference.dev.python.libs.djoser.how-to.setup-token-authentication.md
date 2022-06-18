---
id: oqvjybeoixvogpw6buekno2
title: Setup Token Authentication
desc: ''
updated: 1649936756697
created: 1649929334772
---

# Setup Token Authentication

## `settings.py`
```py
# settings.py

INSTALLED_APPS = [
    # ...
    "rest_framework",
    "rest_framework.authtoken", # <-- Add this
    "djoser",
    # ...
]

REST_FRAMEWORK = {
    "DEFAULT_AUTHENTICATION_CLASSES": (
        "rest_framework.authentication.TokenAuthentication", # <-- Add this
        # ...
    )
}
```

## `urls.py`

```py
urlpatterns = [
    # ...
    path("api/v1/", include("djoser.urls")),
    path("api/v1/", include("djoser.urls.authtoken")), # <-- Add this
    # ...
]
```
This will add `api/v1/token/login/` and `api/v1/token/logout/` endpoints

## References

[Token Based Authentication with Django Rest Framework and Djoser](https://saasitive.com/tutorial/token-based-authentication-django-rest-framework-djoser/)
