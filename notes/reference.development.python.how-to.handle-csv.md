---
id: dtke0kyzhcorauc3zmiikdc
title: Handle CSV
desc: ''
updated: 1655105142486
created: 1655101953887
---

# Handle CSV

## Read CSV from File

```py
import csv

with open('file.csv') as csv_file:
    with csv.reader(csv_file) as csv_rows:
        for row in csv_rows:
            column1, column2, column3 = row
```

To read from string use `io.StringIO` to wrap the string.
