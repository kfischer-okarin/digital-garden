---
id: t1sez74d9glnkg06z2ffli7
title: Create an Atom Feed
desc: ''
updated: 1652371154750
created: 1652369652003
---

# Create an Atom Feed

## Prerequisite
- An execution environment that runs Ruby (e.g. the GitHub Actions runner `ubuntu-latest`)

## Steps

### 1. Add the script
Add [this ruby script](https://github.com/kfischer-okarin/digital-garden/blob/7068878f3923dc3787458e6717ef5f4f9f97b63e/build_rss_feed.rb)
next to your `dendron.yml`

### 2. Call the script between export and deploy
Assuming you followed the instructions to publish to
[GitHub Pages with GitHub Actions](https://wiki.dendron.so/notes/FnK2ws6w1uaS1YzBUY3BR) add following step in your
[workflow](https://wiki.dendron.so/notes/FnK2ws6w1uaS1YzBUY3BR/#steps---setup-github-actions) between the
`"Export notes"` and the `"Deploy site"` step:

```yml
    - name: Generate Atom Feed
      run: ruby build_rss_feed.rb vault > docs/feed.xml
```

If your vault happens to be in a different folder than `vault` then make sure to replace the folder name in the step
above.

### 3. (Optional) Add a custom header with the link to the feed

Add following content to you custom header.

```html
<link rel="alternate" type="application/atom+xml" href="<PAGE_URL>/feed.xml">
```

where `<PAGE_URL>` would be the url of your published page, e.g. `https://kfischer-okarin.github.io/digital-garden`.
