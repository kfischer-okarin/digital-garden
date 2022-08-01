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
