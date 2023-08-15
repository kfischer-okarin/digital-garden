# Keys

## Navigation
- Movement
  ```
      C-p
  C-b     C-f
      C-n
  ```
- `M-f` / `M-b` Move word forward/back
- `C-a` / `C-e` Move to beginning/end of line
- `M-a` / `M-e` Move to beginning/end of sentence
- `M-<` / `M->` Move to beginning/end of text
- `C-v` / `M-v` Page down/up
- `C-l` Center current line / Move to top / Move to bottom
- `M-r` Move to center line / top line / bottom line
- `M-g g N` Go to line N

## Editing
- `<DEL>` / `M-<DEL>` delete character/word before cursor
- `C-d` / `M-d` delete character/word after cursor
- `C-k` / `M-k` kill to end of line/sentence
- `C-<SPC>` Set Mark
- `C-w` kill marked content
- `C-y` Yank killed content
  - Then `M-y` Rotate through killed contents
- `C-/` Undo

## Buffers
- `C-x <LEFT>` / `C-x <RIGHT>` Previous/Next buffer
- `C-x b` Select buffer by name
- `C-x k` Kill buffer (Enter for current buffer)

## Windows
- `C-x 1` Remove all other windows
- `C-x 0` Remove current window
- `C-x 2` Split Window to the bottom
- `C-x 3` Split Window to the right

## Help
- `C-h k <KEY>` Describe key
- `C-h a` Apropos - find command matching word

## Info Mode
- `<SPC>` / `<DEL>` Move pagewise forward/backward through manual
- `m` go to link
- `M-n` copy info buffer

## Meta
- `C-u <N> <KEY>` Executes command of KEY N times
- `C-g` Stop current command
- `M-x` Execute command by name
- `M-:` Eval Elisp

## Customization
- `M-x add-dir-local-variable` Add customization for current directory

## Org Mode
- `M-<RET>` New Heading
- `M-<LEFT>` / `M-<RIGHT>` Change Heading level
- `M-S-<LEFT>` / `M-S-<RIGHT>` Change level of whole subtree
- `M-<UP>` / `M-<DOWN>` Swap Subtree up/down on same level
- `C-c C-n` / `C-c C-p` Next/Previous heading
- `C-c C-f` / `C-c C-b` Next/Previous heading same level
- `C-c C-u` Heading in parent level
- `C-c C-j` Goto

### Todo & Clocking Time
- `C-c C-c` Convenience key
  - On Checkbox: Toggle
  - On Clock: Re-calculate clock duration
  - On TODO statistic: recalculate
  - On TODO: Add tag
- `C-c C-t` Change todo state
- `C-c t` Show todo tree
- `C-c C-x C-i` Clock in
- `C-c C-x C-o` Clock out
- `C-c C-x C-d` Show total times next to tasks
- `C-c C-x C-q` Cancel clock
- `C-c C-x e` Set effort for selected task
- `C-c C-x C-e` Set effort for currently clocked task

## Magit
- `C-x g` Open Magit

### In Magit buffer
- `g` refresh
- `n` / `p` next/previous hunk
- `P u` push to upstream
- `c c` commit (Confirm message with `C-c`)
