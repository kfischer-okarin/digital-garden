---
id: opuu0qsqju8wp97fxlzes7t
title: Component Composition
desc: ''
updated: 1657014490063
created: 1657013592308
---
# Component Composition

## What is a good component?
- It can bew read and understand at a glance
- It has a clear and easy to understand name
- It does not do unrelated things

## Kinds of components
- Simple components: Props -> Output
- Container components: Props, Children -> Output
  - Performance note: Children will not be rerendered when component is rerendered

- Content:
  - Components that implement content directly (not much composition)
  - Components that compose components

## When to extract Components
- Not right away! First write it down without extracting anything
- When the component gets too big (subjective, but more than one screen page?)

- When state does not belong in this component but is a separate concern


