---
id: 6x3pldly9caw13iosxuk0k2
title: Deactivate STI in Migrations
desc: ''
updated: 1653034696606
created: 1652968766964
---

# Deactivate STI in Migrations

When creating a Migration model class for a class with a `type` column you need to turn off STI otherwise Rails will
look for non-existing subclasses of the Migration model class.

This can be done by setting `inheritance_column` to a non-existing column.

```rb
class SomeMigration < ActiveRecord::Migration[6.1]
  class MigrateModelWithSTI < ActiveRecord::Base
    self.table_name = 'model_with_sti_table'
    self.inheritance_column = :_type_disabled
  end

  # ...
end
```
