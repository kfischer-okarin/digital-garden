---
id: 6pkb3va94u04lpnzr18d8ou
title: Embedded Language
desc: ''
updated: 1680105817389
created: 1680105737904
---
# Embedded Language
- Wren: https://wren.io
  ```wren
  System.print("Hello, world!")

  class Wren {
    flyTo(city) {
      System.print("Flying to %(city)")
    }
  }

  var adjectives = Fiber.new {
    ["small", "clean", "fast"].each {|word| Fiber.yield(word) }
  }

  while (!adjectives.isDone) System.print(adjectives.call())
  ```
