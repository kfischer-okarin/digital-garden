---
id: bjccjlfn0yonezff3yhauoa
title: Insert Agenda depending on weekday
desc: ''
updated: 1654311956768
created: 1654067080283
---

# Insert Agenda depending on weekday

After following these steps creating the note `work.journal.2022.05.30` will produce following content:

```markdown
---
id: xxxxx
title: '2022-05-30 (Mon)'
desc: ''
updated: xxxxx
created: xxxxx
---

# 2022-05-30 (Mon)

## Daily Meeting

## Weekly Meeting

## Code Review
```

## 1. Create schema

This schema contains a custom frontmatter with the agenda items by weekday and two placeholders for the title and the
agenda itself.

```markdown
---
id: xxxxxx
title: Work Journal Template
agenda_items_by_weekday:
  Mon:
    - Daily Meeting
    - Weekly Meeting
    - Code Review
  Mon:
    - Daily Meeting
    - Code Review
  Wed:
    - Daily
    - [[work.areas.project-a]] Meeting
    - Code Review
  Thu:
    - Daily
    - Code Review
  Fri:
    - Daily
    - Retrospective
    - Code Review
---

# <<TITLE>>

<<AGENDA>>
```

## 2. Create the hook

Use the `Create Hook` command and assign the correct hierarchy in the configuration (in this case
  `work.journal.20[2-9][0-9].[0-9][0-9].[0-9][0-9]`)

## 3. Implement the hook

```js
module.exports = async function({ note }) {
  const { fname, custom } = note;

  // fname is work.journal.<year>.<month>.<day>
  const [year, month, day] = fname.split('.').slice(-3);
  const weekday = getShortWeekday(year, month, day);
  const title = `${year}-${month}-${day} (${weekday})`;

  note.title = title;
  note.body = note.body.replace('<<TITLE>>', title);

  const agendaItems = custom.agenda_items_by_weekday[weekday];
  note.body = note.body.replace('<<AGENDA>>', buildAgenda(agendaItems));
  delete custom.agenda_items_by_weekday;

  return { note };
};

const getShortWeekday = (year, month, day) => {
  // Adjust month since Date uses 0-index month
  const date = new Date(year, Number(month) - 1, day);
  return date.toLocaleString('en-US', { weekday: 'short'});
}

const buildAgenda = (agendaItems) => {
  if (!agendaItems) {
    return '';
  }

  return agendaItems.map(item => `## ${item}\n`).join('\n');
}
```
