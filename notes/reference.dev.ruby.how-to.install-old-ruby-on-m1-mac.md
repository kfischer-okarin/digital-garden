---
id: fey4n6m4vb2lxp9yw9x4f5w
title: Install old Ruby on M1 Mac
desc: ''
updated: 1653577791817
created: 1653559847175
---

# Install old Ruby on M1 Mac

This error:
```sh
error: implicit declaration of function 'ffi_prep_closure' is invalid in C99
```

Can be solved by
```sh
RUBY_CFLAGS=-DUSE_FFI_CLOSURE_ALLOC asdf install ruby 2.5.9
```
