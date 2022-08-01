
# Install old Ruby on M1 Mac

This error:
```sh
error: implicit declaration of function 'ffi_prep_closure' is invalid in C99
```

Can be solved by
```sh
RUBY_CFLAGS=-DUSE_FFI_CLOSURE_ALLOC asdf install ruby 2.5.9
```
