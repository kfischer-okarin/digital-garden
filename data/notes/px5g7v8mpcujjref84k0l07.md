
# Execute Windows console commands

If you try executing commands like `dir` or `md` directly via `$gtk.system` it will fail with an "Command not found"
error.

You have to use `cmd /c`

For example:

```bat
cmd /c md new_directory
```
