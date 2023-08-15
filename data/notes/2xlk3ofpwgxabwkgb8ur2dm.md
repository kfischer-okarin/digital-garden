
# Handle CSV

## Read a CSV as array of arrays

```rb
require 'csv'

data = CSV.read 'filename.csv'
```

## Read with symbolized headers
```rb
csv_content = <<~CSV
  Project,Description,"Start Time","End Time","Duration (h)"
  "Project A","Refactor","18:43","19:28","0:45"
CSV
data = CSV.parse csv_content, headers: true, header_converters: :symbol

# data[:project]
# data[:start_time]
# data[:duration_h]
```
