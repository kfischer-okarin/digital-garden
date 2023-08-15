# Idempotency

A operation is idempotent if you can apply it several times and the result will be the same.

Adding a new member to a project is not idempotent - changing their name to `"Bob"` is idempotent.

Idempotent operations are especially important in following areas:
- **Distributed systems:** When sending commands in a message queue over network they might be received several times
  because of how the message service works. Making the actions idempotent makes sure the system will not enter an
  unintended or even illegal state.
- **Automatic code updates:** Using a codemod on a source code file should not change it if the change was already
  applied before.
