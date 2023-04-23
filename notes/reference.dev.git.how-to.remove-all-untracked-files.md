---
id: wnbxrmmww8vk7olsgh6axih
title: Remove All Untracked Files
desc: ''
updated: 1682161008801
created: 1682160809234
---
# Remove All Untracked Files

```sh
git clean -f -x -d
```

- `-f` force
- `-x` remove all untracked files (`-X` would only remove explicitly ignored files and keep unstaged ones)
- `-d` recurse down into directories
