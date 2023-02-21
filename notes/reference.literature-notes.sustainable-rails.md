---
id: pdesskotvu61paia8tm5ugg
title: Sustainable Rails
desc: ''
updated: 1676856089403
created: 1676853996211
---

# David Bryant Copeland - Sustainable Web Development with Ruby on Rails

![Book cover](link-to-amazon-picture){ height: 200px; }

[Amazon](link-to-amazon)

**Current position:** Chapter 1

## My Summary

---

## Chapter 1 - Why This Book Exists
- What is sustainable development?
  - Easily support new requirements
  - Can be worked on by many different people
- Agile often pushes us to YAGNI (You ain't gonna need it)
  - Of course there is always the danger of overengineering
  - YAGNI gets software shipped but it does not actively drive development of supporting architecture for sustainability
    like
    - Log statements
    - Design Systems for easy UI construction
- Assumptions of the advice in this book
  - The Software has a clear purpose (i.e. it's not still experimenting and trying to find its market)
  - The Software needs to exist for years
  - The Software will evolve
  - The Team will change
  - You value sustainability, consistency and quality
    - Quality needs to be part of the day to day process - the day to pay down technical debt usually doesn't come
      unless there's a catastrophic failure
- Opportunity Cost vs Carrying Cost
  - Opportunity cost: Making a decision and thus cut off other avenues of opportunity
    - One time investment
  - Carrying cost: Constantly main

## Chapter 2 - The Rails Application Architecture
- Parts of a Rails App
  - Boundaries: Accept Input from somewhere and return output
  - Views: HTML, ERB, CSS etc
  - Models
  - Everything Else
    - Tests, Dependencies, Seeds, `bin/setup`
- Pros and Cons of the Architecture
  - Pro: No big upfront decisions needed to get started
  - Pro: Lots of conventions for naming etc - it's easy to maintain the architecture
  - Con: It's designed to build a DB backed webapp
  - Con: Rails gives no guidance on where business logic should go
-
---


## My Questions, Thoughts, Comments
