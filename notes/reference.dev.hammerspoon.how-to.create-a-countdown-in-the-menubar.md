---
id: a8zx2st0jmvbff56w8xa9pz
title: Create a Countdown in the Menubar
desc: ''
updated: 1655094361779
created: 1655094007075
---

# Create a Countdown in the Menubar

```lua
--- createCountdown(label, endTime, [onStop])
---
--- Parameters:
---  * label - Label for the countdown
---  * endTime - End time of the countdown as UNIX timestamp
---  * [onStop] - Callback that will be called when countdown is stopped
---
--- Returns:
---  * Table
---    {
---      menu: `hs.menu` object showing the countdown
---      endTime: End time of the countdown that was passed as parameter
---      timer: `hs.timer` object updating the countdown every second
---    }
function createCountdown(label, endTime, ...)
  countdown = {
    menu = hs.menubar.new(),
    endTime = endTime,
  }

  countdown.timer = hs.timer.doEvery(1, function()
    timeUntilEnd = countdown.endTime - os.time()
    sign = timeUntilEnd < 0 and '-' or ''
    timeUntilEnd = math.abs(timeUntilEnd)

    minutes = math.floor(timeUntilEnd / 60)
    seconds = timeUntilEnd % 60
    countdown.menu:setTitle(label .. ': ' .. sign .. string.format('%02d:%02d', minutes, seconds))
  end)

  onStop = ...

  countdown.menu:setClickCallback(function()
    countdown.timer:stop()
    countdown.menu:delete()
    if onStop then
      onStop()
    end
  end)

  return countdown
end
```
