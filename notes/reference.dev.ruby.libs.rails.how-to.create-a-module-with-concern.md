---
id: 4v8n6q0xgskby1q9euu0l6l
title: Create a Module with Concern
desc: ''
updated: 1657856513029
created: 1657856459650
---

```rb
module M
  extend ActiveSupport::Concern

  included do
    scope :disabled, -> { where(disabled: true) }
  end

  class_methods do
    ...
  end
end
```
