
# Replace String in many files

```sh
sed -i '.bak' 's/foo/bar/g' *
```

will replace `foo` with `bar`.

`-i '.bak'` is necessary on macOS and will create backup files (ending in `.bak`) before replacing.

## Remove the backups

```sh
find . | grep .bak | xargs rm
```
