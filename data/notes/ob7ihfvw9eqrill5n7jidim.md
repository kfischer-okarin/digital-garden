# Illegal states should be unrepresentable

When designing properties for an object, only use separate properties if those properties are actually orthogonal to
each other.

## Example [^1]
A Component can only have a tooltip when it also has a label:

Instead of defining a type like:
```ts
type Props = {
  label?: string;
  labelTooltip?: string;

  /* ... */
}
```
which would allow for a tooltip without a label.

Use something like this:
```ts
type Props = {
  label?: string | { text: string; tooltip?: string };
}
```

[^1] [Gabe's blog - Notes on maintaining an internal React component library](https://www.gabe.pizza/notes-on-component-libraries/)
