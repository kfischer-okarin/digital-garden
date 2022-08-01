
# Create a Settings Menu

The function below generates a `hs.menu` object with separate options for setting categories you define. Selecting such
an option will show a sequence of input dialogs for each value in the category.

## Source Code

```lua
function buildSettingsMenu(settings)
  local buildSettingsUpdateFunction = function(setting)
    defaultValue = {}
    hs.fnutils.each(setting.values, function(settingValue)
      defaultValue[settingValue.id] = ''
    end)

    return function()
      value = hs.settings.get(setting.id) or defaultValue

      hs.fnutils.each(setting.values, function(settingValue)
        value[settingValue.id] = askForSettingsValue(settingValue, value[settingValue.id])
      end)

      hs.settings.set(setting.id, value)
    end
  end

  local askForSettingsValue = function(settingValue, currentValue)
    if settingValue.type == 'directory' then
      selected = hs.dialog.chooseFileOrFolder(
        'Please select ' .. settingValue.name,
        currentValue,
        false, -- canChooseFiles
        true, -- canChooseDirectories
        false -- allowsMultipleSelection
      )
      if selected == nil then
        return currentValue
      end

      return selected['1']
    else
      clickedButton, newValue = hs.dialog.textPrompt(
        settingValue.name,
        'Please enter ' .. settingValue.name,
        currentValue
      )
      if clickedButton ~= 'OK' then
        return currentValue
      end

      return newValue
    end
  end

  return hs.fnutils.imap(settings, function(setting)
    return {
      title = setting.name,
      fn = buildSettingsUpdateFunction(setting)
    }
  end)
end
```

## Definition example

```lua
{
  {
    id = 'clockify',
    name = 'Clockify',
    values = {
      {
        id = 'apiKey',
        name = 'Clockify API Key',
      },
      {
        id = 'workspaceId',
        name = 'Clockify Workspace ID',
      }
    }
  },
  {
    id = 'dendron',
    name = 'Dendron',
    values = {
      {
        id = 'workspacePath',
        name = 'Dendron Workspace Path',
        type = 'directory'
      }
    }
  }
}
```
