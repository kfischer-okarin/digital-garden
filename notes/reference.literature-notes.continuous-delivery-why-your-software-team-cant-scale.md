---
id: z6oqbiz9ivf75qtax9cm739
title: Continuous Delivery - Why Your Software Team Cant Scale
desc: ''
updated: 1655043997558
created: 1655026362683
---

# Continuous Delivery - Why Your Software Team Cant Scale

![Youtube Icon](assets/youtube-icon.svg){height: 1rem} [YouTube](https://www.youtube.com/watch?v=pw686Oyeqmw)

**Current position:** Chapter 1

## Team Size
- Study showed: Teams of up to 5 are more productive and produce better quality code than teams of 20 or more
  - [QSM - Haste Makes Waste When You Over-Staff to Achieve Schedule Compression](https://www.qsm.com/risk_02.html)
- We can only maintain about 150 stable social relationships (This is called the Dunbar Number)
- Teams should be between 4-8 people to be most effective

## Conway's law
> Any organization that designs a system will produce a design whose structure is a copy of the organization's
  communication structure.

  (Melvin E. Conway)

## Functional Teams / Stream-aligned teams
- Teams working on one feature, inside one bounded context
- > A stream is a continuous flow of work aligned to a business domain or organisational capability
- > A stream-aligned team is aligned with a simple valuable stream of work
- They should be as independent of each other as possible
- They should be able to make decisions without having to coordinate with someone outside the team
  - Design, Development, Infrastructure, Metrics, Monitoring, Management & Ownership, Testing & QA, UX, Security,
    Analysis
- They should make up the majority of teams compared to the other team types below

## Enabling Teams
- > The primary goal of an Enabling Team is to help Stream-aligned teams to deliver working software in a sustainable,
    responsible way.
- Lend expertise to stream-aligned teams and teach them

## Complicated Subsystem Teams
- Reduce the cognitive load of steam-aligned teams by taking care of complex subdomains
- Produce APIs that provide complex value to other teams but doesn't require them to need the expertise

## Platform Team
- To enable stream-aligned teams to deliver work with substantial autonomy
- They don't just implement everything that the Dev teams want - but curate and carefully shape the environment to
  meet their needs in the longer term
