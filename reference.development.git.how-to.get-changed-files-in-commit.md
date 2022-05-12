---
id: 6v085twec88eulrg4scc1lj
title: Get Changed Files in Commit
desc: ''
updated: 1652360781205
created: 1652360162395
---

# Get Changed Files in Commit

```sh
git show --name-status --pretty=format: <commit>
```

will return something like

```sh
A       inbox.podcast.design-details-incremental-correctness.md
A       inbox.podcast.design-details-principles-of-design.md
M       inbox.reading.misc.brian-lovin-writing.md
D       inbox.reading.misc.mister-chads-digital-garden.md
A       reference.literature-notes.mister-chads-digital-garden.md
```
