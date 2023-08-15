
# Use vue-i18n with toolbar

Confirmed to work with:
- Storybook v6
- Vue 2
- Vue-I18n v7

This was quite tricky since Storybook and the Single File Components for some reason use different vue-i18n instances.

```js
import VueI18n from 'vue-i18n';

const i18n = new VueI18n({
  // ...
})

// Setup toolbar like explained in https://storybook.js.org/docs/vue/essentials/toolbars-and-globals#advanced-usage
export const globalTypes = {
  locale: {
    name: 'Locale',
    description: 'Internationalization locale',
    defaultValue: 'en',
    toolbar: {
      icon: 'globe',
      items: [
        { value: 'en', right: '🇺🇸', title: 'English' },
        { value: 'ja', right: '🇯🇵', title: 'Japanese' },
      ],
    },
  },
};

// Locale Decorator
const Locale = (story, context) => {
  i18n.locale = context.globals.locale;

  return {
    components: { story },
    created() {
      // https://github.com/dlucian/vuejs-storybook-i18n/issues/1#issuecomment-587607439
      this.$root._i18n = this.$i18n;
    },
    template: `
      <story />
    `,
    i18n,
  };
};

export const decorators = [
  Locale,
];
```
