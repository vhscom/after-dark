+++
title = "Fuzzy Search"
description = "Quickly locate indexed content anywhere on the site."
categories = ["navigation"]
tags = ["links", "search", "controls"]
features = ["code highlighter", "snippets", "related content"]
todo = ["link to page layout"]
+++

If a search engine can find it, so can you. Quickly locate indexable content site-wide with fuzzy search. No registration necessary.

{{< hackcss-card header="Interactive Example" >}}
  <iframe scrolling="no" title="Error Page Example" width="100%" height="300" src="/search?s=uzzy%20searvh"></iframe>
{{< /hackcss-card >}}

Adjust it from `_index.md` in the site `content/search` directory:

```
├── archetypes
├── content
│   └── search
│       └── _index.md
├── static
├── themes
```

If the file doesn't exist, yet create it:

```sh
$ hugo new search/_index.md
```

And specify the `JSON` {{< external href="https://gohugo.io/templates/output-formats" text="Output Format" />}} in site config:

```toml
[outputs]
  home = ["HTML", "RSS", "JSON"]
  section = ["HTML", "RSS", "JSON"]
```

{{% hackcss-alert type="info" %}}**Note:** This adds `JSON` while keeping the `HTML` and `RSS` defaults.{{% /hackcss-alert %}}

Once activated your site will begin outputting an `index.json` file during generation, giving fuzzy search the data it needs to help you locate pages.

Try it by navigating to [domain.example/search](/search), entering a search query and using <kbd>Tab</kbd> to navigate between search results.
