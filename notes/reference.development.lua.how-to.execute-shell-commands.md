---
id: jkmdticqm8s9zop6pfnv1v7
title: Execute Shell Commands
desc: ''
updated: 1654781652792
created: 1654778041322
---

# Execute Shell Commands

## Just execute and get success/fail
```lua
success = os.execute('sleep 20')
```

## Get stdout of executed process
```lua
stream = io.popen('ls')
output = stream:read('a') -- 'a' means read all
stream:close()
```
