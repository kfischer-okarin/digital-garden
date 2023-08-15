# elisp

- Evaluate an expression in `*scratch*` via `C-j`

## Lists
- Consist of "cons cells" which are pairs of
  - CAR: The actual element
  - CDR: The next cons cell or `nil`
- It's basically a linked list
- It can also be circular by letting the CRT point to a previous cell
- `nil` and `()` (empty list) are the same
- Two notations:
  - List notation: `(1 2 3)`
  - Dotted pair: `(1 . (2 . (3 . nil)))`

### Evaluation
- Evaluating a list by itself will be interpreted as a function call
  - First element being the function and the rest the arguments
- To get the list as a value do one of:
  - Quote it: `'(1 2 3)`
  - Use `list`: `(list 1 2 3)`
  - Use `cons`: `(cons 1 '(2 3))`
