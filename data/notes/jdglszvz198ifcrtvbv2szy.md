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
