---
id: 6qs65589c48zmti0dk37qzi
title: Law of Demeter
desc: ''
updated: 1658655237930
created: 1658654805735
---
# Law of Demeter
Don't call methods on objects returned by methods. It will cause to close coupling to the internal structure of the
object you're working with.

A related principle is "Tell, don't ask" - Tell an object what to do... Don't ask for it's internal objects and do it
yourself.
