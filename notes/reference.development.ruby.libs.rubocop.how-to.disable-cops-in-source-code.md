---
id: 3rlx5xjosmla2eojqyz38ag
title: Disable Cops in Source Code
desc: ''
updated: 1650016336111
created: 1650016198253
---

# Disable Cops in Source Code

## In an area
```rb
# rubocop:disable Layout/LineLength, Style/StringLiterals
# [...]
# rubocop:enable Layout/LineLength, Style/StringLiterals
```

## On the same line
```rb
for x in (0..19) # rubocop:disable Style/For
```
