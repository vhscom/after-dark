+++
title = "Custom Homepage"
description = "Hide the blog and specify the content shown."
categories = ["customizing"]
tags = ["layout", "templating", "style"]
features = ["code highlighter", "snippets", "related content"]
[[copyright]]
  owner = "VHS"
  date = "2019"
  license = "agpl-3.0-or-later"
+++

After Dark provides a configurable way to customize the content shown on your homepage without the need for creating a [Custom Layout](../custom-layouts). Use it to hide the blog and display recent content from various sections of your site.

{{< hackcss-alert >}}
{{< figure
  src="/images/screenshots/feature-homepage-fs8.png"
>}}
{{< /hackcss-alert >}}

{{< hackcss-card header="Quick Example" >}}
{{< highlight toml "linenos=inline" >}}
[params.layout.home]
  hide_blog = true

[[params.layout.home.section]]
  type = "about"
  weight = 1

[[params.layout.home.section]]
  type = "code" # Required, name of section to show on homepage
  limit = 4 # Optional, set number of items to show from section
  weight = 2 # Optional, choose layout order for section
  thumbs = ["fill", "400x400"] # Optional, thumbnail image processing

[[params.layout.home.section]]
  type = "site"
  limit = 2
  weight = 3

[[params.layout.home.section]]
  type = "post"
  limit = 3
  weight = 4
{{< /highlight >}}
{{< /hackcss-card >}}

Start by adding a section to display:

```toml
[[params.layout.home.section]]
  type = "post"
```

Limit the number of items shown:

```toml
[[params.layout.home.section]]
  type = "post"
  limit = 3
```

Then hide the blog if you like:

```toml
[params.layout.home]
  hide_blog = true
```

And use the space to add more sections:

```toml
[[params.layout.home.section]]
  type = "post"

[[params.layout.home.section]]
  type = "podcast"
```

Or even add stand-alone pages too:

```toml
[[params.layout.home.section]]
  type = "about"
```

And display sections in order by weight:

```toml
[[params.layout.home.section]]
  type = "about"
  weight = 1

[[params.layout.home.section]]
  type = "podcast"
  weight = 2
```

Each section is output using generic [Structured Data](../structured-data):

```
Homepage
├── Thing
└── ItemList
    ├── Thing
    ├── Thing
    └── Thing
```

And may be enhanced using front matter:

```
├── archetypes
├── content
│   └── about.md
│   └── podcast
│       ├── _index.md
│       ├── secrets-of-silicon-valley
│       ├── the-5g-dragnet
│       └── language-is-a-weapon
├── layouts
```

```toml
[schema]
  type = "AboutPage" # inside about.md
```

```toml
[schema]
  type = "Audiobook" # inside _index.md
```

Resulting in machine-readable structure:

```
Homepage
├── AboutPage
└── ItemList
    ├── Audiobook
    ├── Audiobook
    └── Audiobook
```

Which can be further enhanced using thumbnail images, which are output automatically for any list item in any section using a [Post Images](../post-images) formatted resource bundle and containing the string `thumbnail`:

```toml
[[resources]]
  src = "**hyperdrive-logo.png"
  name = "header thumbnail"
```

Thumbnails output automatically when described in front-matter for any resource type in any section, and may be manipulated using {{< external "https://gohugo.io/content-management/image-processing/#readout" "Hugo Image Processing" />}} using the `thumbs` setting in any section:

```toml
[[params.layout.home.section]]
  type = "code"
  thumbs = ["fill", "400x400"]
```

Valid options are `fit`, `resize` and `fill`, and image dimensions may be omitted for a 4x3 aspect ratio thumbnail.
