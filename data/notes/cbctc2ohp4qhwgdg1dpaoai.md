
# Testing: Multiple instances of Vue detected

When trying to initialize vuetify for unit tests using testing-library and you try to use the local vue instance to
initialize vuetify following error will appear:

```
[Vuetify] Multiple instances of Vue detected
```

You have to **globally** initialize Vuetify and pass a new vuetify instance to the render function of testing-library.

```js
// Initialization (once)
import Vue from 'vue';
import Vuetify from 'vuetify';

Vue.use(Vuetify);
```

```js
// in tests

import Vuetify from 'vuetify';
import { render } from '@testing-library/vue';

render(Component, {
  vuetify: new Vuetify(),
})

```
