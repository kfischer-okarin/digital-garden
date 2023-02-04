---
id: jdglszvz198ifcrtvbv2szy
title: Execute Code on Hotload
desc: ''
updated: 1675515053265
created: 1675515033386
---
# Execute Code on Hotload

```rb
module HotloadExtension
  def on_load_succeeded(file)
    super
    puts "RELOADED #{file}" # Replace this with your cool logic
  end
end

GTK::Runtime.prepend HotloadExtension
```
