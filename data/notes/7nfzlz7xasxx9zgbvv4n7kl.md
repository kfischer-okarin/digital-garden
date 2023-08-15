# Designing Component Libraries

**Source:** [Gabe's blog - Notes on maintaining an internal React component library](https://www.gabe.pizza/notes-on-component-libraries/)

## Interface
- Components should be blackboxes for the parents who use them
  - Props in -> Rendered content out
- Design components with orthogonal props that allow to represent all valid display states
  - If possible [[ideas-thoughts-beliefs.software-development.illegal-states-should-be-unrepresentable]]
- Don't extend base props - only offer the minimal real interface you need
  - This is also true for pass-through override props to modify internal subcomponents like `ButtonProps`
    - Offer minimal interfaces for them too, don't just use the original full props type
- Don't use spread (`...props`) to blanket forward props from above
- If possible don't offer class/style props
  - Use something explicit like `UNSAFE_className` / `UNSAFE_style` to at least give an escape hatch but make it easy to
    find and maybe use a linter for it
- Use Context internally for linking dependent props
  - Example: Select Group parent that has the selected state as context and Select Group item that consumes it
- Group components that belong together as a single object - the user will know they are supposed to be used together
  ```ts
  export const Select = {
    Menu: SelectMenu,
    Option: SelectOption,
    // ...
  };
  ```
## Layout
- Don't let components position or add external margins to themselves
  - This is the parent's responsibility
- Components should take up all horizontal space by default
  - Container components are the exception, since they usually span to fit the width of their contents (or up to the
    parent containers width)

## Release & Maintenance
- Use proper semantic versioning - apply deprecations only at major version bumps
- Use codemods if possible to automate source code changes
  - Make sure codemods are idempotent
- Statically analyze source code bases using the library (parsing code into ASTs etc) to know how the components are
  used to get interesting insights
- Use visual regression tests rather than unit tests
  - This can be annoying because of OS rendering differences

## Other
- Don't write your own abstractions over browser differences - there are good libraries for that
