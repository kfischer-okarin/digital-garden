---
id: s15tn39w6qtiivfk61z5s5z
title: Install the CLI
desc: ''
updated: 1655702200279
created: 1655702120280
---

# Install the CLI

There is the official `hs.ipc.cliInstall()` command but it requires you to make `/usr/local/bin` writable for the login
user. So just do it manually

```sh
sudo ln -s /Applications/Hammerspoon.app/Contents/Frameworks/hs/hs /usr/local/bin
```
