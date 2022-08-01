
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
