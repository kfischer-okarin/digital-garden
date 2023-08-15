
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
