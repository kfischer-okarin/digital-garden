---
id: 331duzsebe65k6rnur0xo6x
title: Test File Uploads in Request Specs
desc: ''
updated: 1658743680875
created: 1658743496400
---
# Test File Uploads in Request Specs

It's not well documented but you can use `StringIO` objects in `Rack::Test::UploadedFile`.

```rb
post import_path, params: {
  file: Rack::Test::UploadedFile.new(
    StringIO.new(file_content),
    original_filename: 'imported_data.csv'
  )
}
```
