+++
title = "Fractal Forest"
slug = "fractal-forest"
description = "BPG Image Format (Preinstalled)."
categories = ["addon"]
tags = ["module", "images", "graphics", "installation", "performance"]
features = ["related content", "snippets", "section menu"]
+++

**BPG Image format Homepage:** {{< external "https://bellard.org/bpg/" />}}<br>
**Module Source:** {{< external "https://codeberg.org/vhs/fractal-forest" />}}

## Demo

{{< hackcss-alert >}}
  <iframe title="BPG Visual Comparisons" width="100%" height="600" src="https://xooyoozoo.github.io/yolo-octo-bugfixes/"></iframe>
{{< /hackcss-alert >}}

## Installation

Choose a module download source:

- {{< external "https://www.npmjs.com/package/fractal-forest" />}}
- {{< external "https://www.jsdelivr.com/package/npm/fractal-forest" />}}
- {{< external "https://codeberg.org/vhs/fractal-forest" />}}

Extract module contents into site `themes` directory:

```sh
├── static
└── themes
    ├── after-dark
    └── fractal-forest
```

Specify module in site config:

{{< highlight toml "linenos=inline,linenostart=6" >}}
# Controls default theme and theme components
theme = [
  "fractal-forest", # sequence before "after-dark"
  "after-dark"
]
{{< /highlight >}}

See {{< external href="https://codeberg.org/vhs/fractal-forest/src/branch/master/README.md" text="README.md" />}} to confirm you're using the minimum required version of After Dark; and module setup, configuration and usage instructions. If you need help you may {{< external href="https://codeberg.org/vhs/fractal-forest/issues" text="Submit an Issue" />}} with your question.
