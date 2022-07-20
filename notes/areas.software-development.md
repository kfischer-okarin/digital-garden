---
id: 1qgmr670moitcxxpmnmjxlp
title: Software Development
desc: ''
updated: 1657122756313
created: 1655541876900
---

# Software Development

## Documentation
- [[areas.software-development.four-types-of-documentation]]
- Documentation Checklist
  - When explaining several bigger topics it's good to first list them up in the introductory text and then follow up
    with sub-sections using the same name as title

    ```md
    There are two formats supported:
    - Text format (`.txt` extension)
    - Binary format (`.prof` extension)

    ## Text format (`.txt` extension)

    ...

    ## Binary format (`.prof` extension)
    ```

## Topics I'm interested in
- Software Design & Architecture
- Clean Code & maintainable human readable source code
- Developer productivity, automation


## Toolbox

## Frontend
- [[React Component Composition|reference.dev.react.component-composition]]
- Use Storybook!
- Use Typescript!

## Try out
### Frontend
- Testing with Storybook
  - https://storybook.js.org/blog/test-component-interactions-with-storybook/
- Data Fetching libraries
  - React: React Query, RTK Query, SWR, Apollo
- Tailwind


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

