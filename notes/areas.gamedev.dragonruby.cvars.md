---
id: fk99xdwpvi4d4yjtbai8dt6
title: Cvars
desc: ''
updated: 1655796832869
created: 1649948443416
---

# Cvars

Variables you can set via the command line:

```sh
./dragonruby game_folder --set veriable.name value
```

## Accessing Cvars
```rb
args.cvars['variable.name']
```

Available methods:
- `name`
- `value`
- `value=` (only for non-locked variables)
- `type`
- `description`
- `locked`: Variable can only be set on application start via the `--set` flag, not during runtime

## Register Cvars
```rb
$gtk.register_cvar varname, description, type, default_value
```
- type: `:string`, `:int`, `:uint`, `:bool`

## Default Cvars

```rb
$args.cvars.each do |name, var|
  puts "#{name}: #{var.value} (#{var.description}. Type: #{var.type}. Locked? #{var.locked})"
end
```

```
log.stdout_color: true (True if we should colorize logs sent to stdout)
log.subsystem: true (True if we should include the subsystem name in the log output)
log.level_char: true (True if we should include the logging level character in the log output)
log.timing: true (True if we should include the timing in the log output)
log.stdout: true (True if we should write logs to stdout)
log.filter_subsystems: '' (Comma-separated list of subsystems to ignore logging for [LOCKED])
log.level: 'debug' (One of [spam, debug, info, warn, error, unfiltered, nothing]. Filter out everything less than. [LOCKED])
log.filename: '(gameid).log' (filename to write log data to [LOCKED])
renderstream.filename: '' (Filename to save render stream to. If empty, no stream is saved. [LOCKED])
controller.config_ui: 0 (Use the controller config UI? 0==for unknown joysticks, 1==for all joysticks, -1==for no joysticks )
game_metadata.vrmode: 0 (VR mode [LOCKED])
game_metadata.packageid: 'org.(devid).(gameid)' (Package ID in reverse-domain format [LOCKED])
game_metadata.compile_ruby: false (True if production builds cook Ruby source code [LOCKED])
game_metadata.deployment: false (True if this is a production build [LOCKED])
game_metadata.icon: 'metadata/icon.png' (Game's icon filename [LOCKED])
game_metadata.version: '1.0.0' (Game's version number [LOCKED])
game_metadata.gametitle: 'Game Title' (Actual game name [LOCKED])
game_metadata.gameid: 'game-id' (Game ID (simple identifier) [LOCKED])
game_metadata.devtitle: 'Full Name' (Actual developer name [LOCKED])
game_metadata.devid: 'devid' (Developer ID (simple identifier) [LOCKED])
renderer.vsync: true (True if we should sync-to-vblank when presenting)
renderer.start_headless: false (True if we shouldn't show a window at startup)
renderer.fullscreen: false (True if we should use the whole display)
```
