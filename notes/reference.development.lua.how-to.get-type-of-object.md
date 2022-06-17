---
id: mmsg3orwgjo4zallsccxk5n
title: Get Type of Object
desc: ''
updated: 1655430081418
created: 1655429783042
---

# Get Type of Object

```lua
if type(value) == 'string'
elseif type(value) == 'table'
elseif type(value) == 'number'
elseif type(value) == 'function'
elseif type(value) == 'boolean'
elseif type(value) == 'nil'
elseif type(value) == 'thread'
elseif type(value) == 'userdata'
end
```

- `thread` is a Lua coroutine
- `userdata` is either a custom object with a memory block managed via C functions or just a C pointer
