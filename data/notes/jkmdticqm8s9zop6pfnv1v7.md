
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
