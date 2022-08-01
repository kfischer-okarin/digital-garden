# Test Flash Messages in Request Specs

```rb
# post some request

expect(response.request.flash[:success]).to eq 'My Success message'
```
