---
id: rmrh0z2lhyvjz8g5sneda3p
title: Project Ideas
desc: ''
updated: 1661072878832
created: 1661072603401
---
# Project Ideas

## Rails Migration Validation
Use some property based testing (Quickcheck) to generate all kinds of data and run migrations and their rollbakcs
- Try out https://github.com/Qqwy/ruby-prop_check
- Write rails wrapper schreiben that reads schema and builds generators
- Run migrations automatically step by step and revert them again
  - Do they run with all kinds of data?
  - Are the data after migrate + rollback exactly the same again?
  - other Migration specific assertions?
