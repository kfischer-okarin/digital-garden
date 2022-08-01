
# Render assets in dev server when `assetsPrefix` is set

When `assetsPrefix` is set in the configuration then the local dev server will not link to assets properly.
Starting with the `--overrides` option will make it work for all normal note pages.

```sh
dendron publish dev --overrides assetsPrefix='../..'
```

#dendron.check-on-update
