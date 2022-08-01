# Acceptance Test Four Layer Architecture

## Test Case (Executable Specification)
- Uses the DSL to describe an usage example and assertions about it
- Created from User Stories

### Example
- Go to the Store
- Search for a Book with Title "X"
- Put the Book in your shopping basket
- Go to the checkout
- Pay for the book
- Now you own the book

```rb
scenario 'should buy a book' do
  go_to_store
  search_for_book title: 'X'
  select_book author: 'Mr. Y'
  add_selected_item_to_shopping_basket
  check_out item: 'X'
  assert_item_purchased item: 'X'
end
```

## DSL (Domain Specific Language)
- Shared between test cases
- Simple to read & uses the words of the domain
- Has lots of optional parameters so you can describe at the level of detail (or lack of thereof) you need in a
  particular case

### Example
```rb
def check_out(item: nil, card: nil)
  driver.check_out(
    item: item || default_item,
    card: card || default_card
  )
end
```

## Protocol Driver
- Translate Domain Language into actual interactions with system under test
- Only layer that actually understands **HOW** to do things
- This is where capybara, selenium, etc is used
- Can be pluggable to support different types of interactions
  - API
  - UI
  - Local Stub
  - Plug in a spec printer which prints out the steps in natural language / in a foreign language

### Example
```rb
class ExampleDriver
  def check_out(item:, card:)
    checkbox = find_all_checkboxes.find { |box| box.label == item }
    checkbox.check

    select card, from: '#card_selection'

    find('#submit').click
  end
end
```
