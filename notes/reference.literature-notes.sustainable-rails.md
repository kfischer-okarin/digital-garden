---
id: pdesskotvu61paia8tm5ugg
title: Sustainable Rails
desc: ''
updated: 1679275486837
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
  - Carrying cost: Cost that is paid everytime when maintaining/using something
    - Each line of code is a carrying cost
    - Each feature has a carrying cost
    - Each thing we need to remember is a carrying cost
  - Opportunity cost: One time investment to produce something to reduce carrying cost
    - By making such a decision you cut off your potential future solution space
- To develop a software sustainably you need to keep your carrying cost down
  - Sometimes you need to strategically incur opportunity cost to keep your carrying cost in check
- Rails' is designed in a way that keeps your carrying cost low for many common webapp patterns

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

## Chapter 4 - Start Your App Off Right
- Things assumed about the app
  - Other developers will work on it and need to
    - set it up
    - run tests locally
    - run the app
  - It will have security vulnerabilties
  - It will be deployed to production via a CI pipeline
  - It will need operational observability
- Setting up a Developer Workflow by providing a set of scripts
  - `bin/setup` - Set up the app after cloning it
  - `bin/run` - Run the app locally using environment variables via the `dotenv` gem
  - `bin/ci` - Run tests and other checks like `brakeman` and `bundle audit`
- Manage runtime env consistently via UNIX Environment variables
  - Having all of `database.yml`, `credentials.yml.enc` and `master.key` to store environment is confusing
  - Better delete all of them and use `dotenv` instead
---


## My Questions, Thoughts, Comments
