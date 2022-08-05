---
id: n0lydrhgezkaeqexexih6xy
title: React
desc: ''
updated: 1659667680400
created: 1659503633848
---
# React
![[reference.checklists.javascript-review#javascript-review,1]]

- Do you really need `useCallback`, `useMemo`? i.e. is it one of the following:
  - Is it used to memoize props of a memoized component?
  - Is it used to memoize JSX sub-hierarchies that are expensive to render again?
  - Is it used to memoize a very expensive operation (for most "normal" JavaScript the answer is "no"!)

![[reference.checklists.ui-components#ui-components,1]]
