
# Import file mismatch

## Error message
```
import file mismatch:
imported module 'query_test' has this __file__ attribute:
  /root/project/spec/model/query_test.py
which is not the same as the test file we want to collect:
  /root/project/spec/model/persistence/dynamodb/query_test.py
HINT: remove __pycache__ / .pyc files and/or use a unique basename for your test file modules
```

## Solution

Add `__init__.py` files to the conflicting module folders

['import file mismatch in pytest' on StackOverflow](https://stackoverflow.com/questions/53918088/import-file-mismatch-in-pytest)
