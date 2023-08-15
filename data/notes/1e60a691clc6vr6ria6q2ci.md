# Unit tests in Ruby

[`Test/Unit`](https://test-unit.github.io/test-unit/en/Test/Unit.html) is
built-in into Ruby.

```rb
require 'test/unit'

class TestSomeFeature < Test::Unit::TestCase
  def test_one_thing
    assert_equal expected, actual, 'message'
  end
end
```

## Assertions
```rb
def test_many_things
  assert_equal expected, actual, 'it failed'
  assert_true actual, 'was not true'
  assert_false actual, 'was not false'
  assert_nil actual, 'was not nil'
  assert_compare expected, :>, actual, 'was not greater'
  assert_include collection, expect, 'did not include'
  assert_instance_of klass, object, 'was not instance of'
  assert_match /pattern/, string, 'did not match'

  assert_not_equal expected, actual, 'was equal'
  # ...
end
```
