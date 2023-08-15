
# Create Note References

## Whole note
```markdown
![[name.of.note]]
```

## From one header to the next header

```markdown
![[demo.embed.block#head1:#*]]
```

## An arbitrary block inside a note

Embeds a block/paragraph with marked `^block_id` behind it

```markdown
![[demo.embed.block#^block_id]]
```

## Line offset

Skips one line (i.e. the header)

```markdown
![[some.note#header,1]]
```
