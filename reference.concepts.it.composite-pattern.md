---
id: jxy5ckbdzxw3vyhx5qlt6s5
title: Composite Pattern
desc: ''
updated: 1652612505005
created: 1652536799154
---

# Composite Pattern

- Objects arranged in tree-like hierarchies
- Individual objects and compositions have a common interface
- The official Gang of Four Pattern also explicitly includes the collection management methods (`add` / `remove` /
  `children`) methods for composites
  - I personally think that's just another dimension/interface

```rb
class Item
  def weight
    raise NotImplementedError
  end
end

class SolidItem < Item
  attr_reader :weight

  # ...
end

class LiquidContainer < Item
  # ...

  def weight
    @volume * @density * @filled_percentage + @container_weight
  end
end

# Composite
class ItemContainer < Item
  attr_reader :items

  def weight
    @items.sum(&:weight)
  end
end
```

---

- **Epistemic Status:** Rough but probably complete (for my purposes) with some slight modifications I'd make from my
  experience.
