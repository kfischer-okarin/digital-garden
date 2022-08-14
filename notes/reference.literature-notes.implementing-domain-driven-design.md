---
id: pr8dcxzqvr6g8t5gjdty590
title: Implementing Domain Driven Design
desc: ''
updated: 1660518909646
created: 1657942831470
---

# Implementing Domain Driven Design (Vaughn Vernon)

![Book cover](https://m.media-amazon.com/images/P/0321834577.01._SCLZZZZZZZ_SX500_.jpg){ height: 200px; }

[Amazon](https://www.amazon.com/Implementing-Domain-Driven-Design-Vaughn-Vernon/dp/0321834577)

## My Summary

---

## Entity
- Something that changes over time

## Value Objects
- Value object is a description of something
- Use Value objects where possible
- If it has to change... think if it's possible to "replace" it instead
- Separate it from the Persistence layer!
  - Sometimes you have to store it as records - but don't let that influence your domain model


## Domain Service
- Calculation process
  - Involving several aggregrates
  - Using repositories
- Transformation processes
  - See Adapters, Ports (Hexagonal Architecture) in Integrating Contexts

## Domain Events
- When something important happens publish a domain event
  - Immutable
  - Contains timestamp
  - Contains all necessary information to re-execute the same action (the ids of the involved aggregates)
- Event Store: Store it in a special db table/list
  - Must be in the same transaction as the actual change happening
  - have message publisher read that store to process/publish events
- Publishing events
  - Event Endpoint
    - Like an Atom Feed
    - Use constant URLs for certain event ranges (e.g. /events/60,79) and make effective use of caching

## Aggregates
- Aggregates = Groups of Entities and Value objects accessed via a common interface (the Root Entity)
- Internal construction, value modifications should be hidden inside Root method implementations
- Each aggregate is a transactional boundary:
  - Everything that must change together should be inside one aggregate
- Build as small aggregates as possible!!!
- Reference other aggregates only via id
- If other Aggregates need to change in response to an aggregate changing do it asynchronously
  - Use eventually consistency where possible. Transactional boundaries are often smaller than one thinks!
    - Does it really need to be 100% immediately consistent?
    - Imagine how the business would happen without the application... Just transmitting the information to the next
      workflow would take some time
  - Publish an event from Aggregate A & subscribe to it from the other Aggregates

## Factories
- Factory methods on Aggregate classes to create related aggregates
  - Use this to create internally consistent objects (like with the correct association which should not be left
    to the client)
      - Ensure that the object has the correct parent etc
  - Use method names that express real use cases in the language
  - `Forum.start_discussion`, `Tenant.register_user` etc
- Factory Methods on Services that integrate other contexts
  - Example: A Service that encapsulates the connection to the Authentication Context, which creates Author, Creator,
    Moderator, etc objects


## Repositories
- Stores Aggregates behind a in memory collection interface
- Collection style stores
  - No explicit save calls but one of:
    - Track changes and then at some point later persist them
    - Wrap the returned object in a persistence backed decorator
  - Adding means storing
- Persistence style stores
  - Explicit save calls
- Collection style is preferable but not always feasible

## Integrating Bounded Contexts
- When using message services - make your event handlers idempotent if any possible - since a message could always be
  delivered several times

## UI
- Should manipulate **one** aggregate at a time (aggregate == transaction boundary)
- Might need several aggregates for context
- When you use Rest Resources (or any kind of data representation for the UI) then design them around use cases **not**
  around the actual aggregates
  - Keep UI and data structures decoupled

## Event Sourcing
- Store your whole data only as a collection of events that happened and reconstruct your aggregates (or for that
  matter any kind of read representation) by processing all events so far
- Events are immutable
- Reading data structures should be cached (for example every 100 events) and are freely disposable
- For events that are also consumed as domain events by listeners (possibly from other contexts) it might be smart to
  include additional properties in the published event that are not explicitly needed to reconstruct the state to avoid
  secondary queries for more information
- Is natural to implement with functional programming
  - Aggregate + Event -> Aggregate
  - Aggregate + Command -> Event[]

---


## My Questions, Thoughts, Comments
