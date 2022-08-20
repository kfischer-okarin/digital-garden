---
id: k13wldrrkqij71wrxe0ie0r
title: Good Git Commit Messages
desc: ''
updated: 1661003073052
created: 1660969477353
---
# Good Git Commit Messages

Sources:
- [Write joyous git commit messages by Joshua Tauberer](https://joshuatauberer.medium.com/write-joyous-git-commit-messages-2f98891114c4)
- [How to Write a Git Commit Message](https://cbea.ms/git-commit)

## Why?
- Some serious projects require accountability - it's very important to know what code change caused a problem, why the
  change was made
- To share the creative process behind a solved problem
- Putting it into a git commit message is good because it's right attached to the source code

## When?
- When committing a complete logical change - not for little intermediate commits

## Template

Use Markdown to format your messages.

### Feature

```
The summary line
    ----one blank line-----
[POV User - What problem is being solved?]

[POV User - What kind of user is benefitting from this feature?]

[POV Manager - Why this solution? What alternatives you considered? Explain your thought process]

[POV Manager - Risks? Tech Debt?]

[POV Code - Explain non-obvious code changes, bullet points per file]

[POV Code - Give evidence that the commit works.]

[POV Git - Mention issues, external discussions related]
```

### Bugs

```
The summary line
    ----one blank line-----
[POV User - What problem is being solved?]

[POV User - how was it found/is it reproduced]

[POV Manager - What was the problem in the code?]

[POV Manager - Why this solution? What alternatives you considered? Explain your thought process]

[POV Manager - Risks? Tech Debt?]

[POV Code - Explain non-obvious code changes, bullet points per file]

[POV Code - Give evidence that the commit works.]

[POV Git - Mention commit that introduced the bug]

[POV Git - Mention issues, external discussions related]
```

## The Summary Line
- 50-72 character slong
- describes **all** the changes briefly - might be the only thing a reader reads
- Starts with a capital - no period at the end
- "After this commit, the application will... (summary line)"
  - For changes where that doesn't fit: "In this commit, I will... (summary line)"
- consider using a `[category]` prefix like (`[documentation]`)

## What problem is being solved?
- Bug, feature or improvement.
- What change would a user see in the software?
- Past tense for bugs and present tense for new features.
- Examples:
  - The program crashed when ____.
  - Users were not able to install the application.
  - The application can now output verbose information.
  - Pages were loading too slowly (>150ms).

## What was the mistake?
- Act like a detective?
- If the root cause is hard to find ask 5 times Why?

## Why this kind of change and not another?
- Explain your reasoning? The architecture of the change.
- Write as much as you can
- Show off your thought process

## Risks? Tech debt?
- Is something else not at reisk of breaking
- Are there new TODOS? New tech debt?
- Will a user lose a feature they relied on?
- Can it be easily undone?

## Give evidence that the commit works
- Did you write test? How did you validate it?
