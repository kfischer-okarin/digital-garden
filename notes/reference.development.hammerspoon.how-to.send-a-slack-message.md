---
id: 2k4gh3ifkojqdq2d1pqq835
title: Send a Slack Message
desc: ''
updated: 1654781588411
created: 1654781369857
---

# Send a Slack Message

```lua
function sendSlackMessage(channel, message)
  hs.application.launchOrFocus('Slack')
  hs.eventtap.keyStroke({'cmd'}, 'K') -- switch to channel
  hs.eventtap.keyStrokes(channel)
  hs.eventtap.keyStroke({}, 'return')
  hs.eventtap.keyStrokes(message)
  hs.eventtap.keyStroke({}, 'return')
end
```
