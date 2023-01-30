---
id: 1qgmr670moitcxxpmnmjxlp
title: Software Development
desc: ''
updated: 1674888427619
created: 1655541876900
---

# Software Development

## How to stay in Flow
When you are about to be interrupted, dump your working memory as quick as possible... Write down what you are about to
do next (next and next etc) - this way you know where to pick up when continuing to work

> When you are going good, stop writing.

Ernest Hemingway

Source: ![Twitter Icon](assets/twitter-icon.svg){height: 1rem}[Interruptible Workflow Thread by Wisen Tanasa](https://twitter.com/ceilfors/status/1583397713357307904) ([Clipped Article (Private Joplin)](joplin://x-callback-url/openNote?id=002c453dbd69478e9f6974dfe787a2d6))

## Several Solutions
Come up with three ways of solving a problem before committing to a solution.

## When being interrupted
Talk about following points before just doing what you're being told:
- What is the impact of the work you're asking for? Can't do it if the impact is unclear
- Do you have a spec that is agreed with stakeholders?
- Make clear that you have to do your own estimate first
- Explain clearly what the cost and consequences of dropping your current work are

[[areas.software-development.how-to-know-what-to-build]]

## Documentation
- [[areas.software-development.four-types-of-documentation]]

## Toolbox

### Frontend
- [[React Component Composition|reference.dev.react.component-composition]]
- Use Storybook!
- Use Typescript!

## Try out
### Frontend
- Testing with Storybook
  - https://storybook.js.org/blog/test-component-interactions-with-storybook/
- Data Fetching libraries
  - React: React Query, RTK Query, SWR, Apollo
- Web Components

### Other
- Matrix - An open network for secure, decentralized communication
  - https://matrix.org/


## Software Design
- Build a Ubiquitous Language (共通言語)
- Separate **WHAT** from **HOW**
- Public interfaces are important!
  - They should communicate **WHAT** not how - in their name
- Single responsibility
  - If you cannot properly name it it probably has more than one responsibility
  - One class - one thing
  - One method - one thing

## Testing principles
- Does Test Driven Design lead to good design? No - but it steers you away from bad design - when you feel how annoying
  it is to write tests

### BDD
- Use the domain language (The Ubiquitous Language)
- Drive Development with Executable Specifications
- Focus ond WHAT not HOW
  - Say nothing about HOW it does those things
  - Only on WHAT it does
- Make the code simple, easily readable!
- Test ONE thing
- Start tests with "Should do this thing"
  - The thing you are testing is the subject

### Acceptance Tests / Executable Specifications
Sources:
- [![Youtube Icon](assets/youtube-icon.svg){height: 1rem} Continuous Delivery - How To Write Acceptance Tests](https://www.youtube.com/watch?v=JDD5EEJgpHU)
- [![Youtube Icon](assets/youtube-icon.svg){height: 1rem} Continuous Delivery - Acceptance Testing with Executable Specifications](https://www.youtube.com/watch?v=knB4jBafR_M)

- Properties
  - Life-like scenarios
  - In Production like Test environments

- Executable Specifications
  - Write them beforehand from the User Story
  - It should be from the perspective of an external user of the system
    - Use the Ubiquitous language!
  - Separate What the system does from how it does it
    - Imagine replacing the system with something else that fulfills the same function - the test should still make
      sense!
  - Write them so clear that even the least technical person can understand it!
  - Focus on what the user wants - link them to user stories
    - Find an underlying need, what the user wants to achieve
    - Why are you making this change? Find that and focus on that in the acceptance test
  - Have at least one test for each acceptance criteria of your user stories

- Implementation: [[areas.software-development.acceptance-test-four-layer-architecture]]

## Articles to read regularly
- [Professional Programming: The First 10 Years](https://thorstenball.com/blog/2022/05/17/professional-programming-the-first-10-years/)
