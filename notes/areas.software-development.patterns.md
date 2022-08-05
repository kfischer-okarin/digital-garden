---
id: mrbeopt2rixf1lhx6wo40gm
title: Patterns
desc: ''
updated: 1659576364133
created: 1659574527255
---
# Patterns

## Injection: Context menu rendering

### Problem:
You want to render a context menu deep in your UI but:
- you don't want to pass down all the listeners/handlers all the way down to the actual thing with a context menu
- you don't want the top level component that knows how to **do** the actions know how to **render** the menu (the
  low level UI component will know that)

### Elements
- `MenuItemRenderer`: Knows how to render menu items & related elements
- `MenuGenerator`: Knows what kind of menu items a particular component needs. Receives data of the Component needing an
  context menu and a `MenuItemRenderer` and then renders the actual menu
- `UIController`: Something at the top building a `MenuGenerator` and providing it to the UI components below it
- `Component`: This is the thing in need of a context menu. It receives the provided `MenuGenerator` it builds or has
  access to a `MenuItemRenderer` and its own data. It calls the `MenuGenerator` with those.

```rb
class MenuItemRenderer
  def render_item(label, on_click)
    # ...
  end
end

class MenuGenerator
  def render_menu(item_data, render_context)
    # if item_data ....
    render_context.render_item('Item A', -> { do_something })
    render_context.render_item('Item B', -> { do_something })
  end
end

# Menu renderer is somehow passed down here - Injection?
class ItemWithMenu
  def render
    render_context = RenderContextForItem.new
    menu_generator = MenuGeneratorContext.get
    @items.each do |item|
      menu_generator.render_menu(item, render_context)
    end
  end
end
```
