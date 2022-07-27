---
id: nqxz1c1019482xyypky1ucs
title: Logic Operators
desc: ''
updated: 1658889301246
created: 1658889034727
---
# Logic Operators

## And

Inside the test expression
```sh
if [ "$1" = "run" -a "$2" != "" ]; then
  # With run and an additional argument
fi
```

Connecting test expressions
```sh
if [ "$1" = "run" ] && [ "$2" != "" ]; then
  # With run and an additional argument
fi
```

## Or

Inside the test expression
```sh
if [ "$1" = "-h" -o "$1" = "--help" ]; then
  # When the argument is -h or --help
fi
```

Connecting test expressions
```sh
if [ "$1" = "-h" ] || [ "$1" = "--help" ]; then
  # When the argument is -h or --help
fi
```
