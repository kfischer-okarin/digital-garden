---
id: 34rx4j30eiu49ajr62ilu29
title: Test Flash Messages in Request Specs
desc: ''
updated: 1658743734511
created: 1658743699963
---
# Test Flash Messages in Request Specs

```rb
# post some request

expect(response.request.flash[:success]).to eq 'My Success message'
```
