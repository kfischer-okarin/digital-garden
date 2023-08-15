# Good software libraries should be easy to upgrade

Use [[concepts.it.semantic-versioning]] and give early deprecations warnings.
Once the new interface is decided (at the latest with the last version before the major version bump) then you should
give the option to scan the user's source code and provide [[idempotent|concepts.it.idempotency]] codemods for
automatic conversions if possible.
