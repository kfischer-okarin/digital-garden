---
id: xm9ev79q1f7sf9y8vfxtt3n
title: Add Vue Plugins
desc: ''
updated: 1651028826122
created: 1651027115401
---

# Add Vue Plugins

You can add things to the vue instance via the decorators defined in the
[preview.js file](https://storybook.js.org/docs/react/configure/overview#configure-story-rendering).

```js
export const decorators = [(story) => ({
  components: { story },
  template: '<v-app><story /></v-app>',
  i18n,
  vuetify,
})];
```
