# React
![[reference.checklists.javascript-review#javascript-review,1]]

- Do you really need `useCallback`, `useMemo`? i.e. is it one of the following:
  - Is it used to memoize props of a memoized component?
  - Is it used to memoize JSX sub-hierarchies that are expensive to render again?
  - Is it used to memoize a very expensive operation (for most "normal" JavaScript the answer is "no"!)
- Do you really need `useEffect`?
  - `useEffect` logic should run **because the component was displayed** and for no other reason, i.e.
    - sending an analytics request
    - requesting data for the render (but make sure to add cleanup/ignore logic to make only the last request matter)
  - When can just remove it and write it directly in the component:
    - Calculating derived values from state/props
    - Updating state when a prop changes
      - Do you really need to do this? Maybe you can just calculate a derived value directly instead?
  - When you can do something else instead:
    - Resetting state on id/prop change?
      - Pass a `key` to the component to the parent - to force re-initialization
    - Trigger common logic from several event handlers
      - Extract a common helper method instead and call that both times
    - Do something once when the App starts
      - Run it outside of a component instead
    - Sync with an external store
      - Use `useSyncExternalStore` in React > 18

![[reference.checklists.ui-components#ui-components,1]]
