
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
