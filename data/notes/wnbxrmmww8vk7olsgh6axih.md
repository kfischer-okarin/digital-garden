# Remove All Untracked Files

```sh
git clean -f -x -d
```

- `-f` force
- `-x` remove all untracked files (`-X` would only remove explicitly ignored files and keep unstaged ones)
- `-d` recurse down into directories
