+++
title = "External"
description = "Create links with SVG icon and custom behavior."
categories = ["navigation"]
tags = ["links", "security", "privacy"]
html_attributes = ["href", "class", "referrerpolicy", "target", "type", "rel"]
custom_attributes = []
snippets_used = ["external", "button"]
+++

Basic usage:

```
{{</* external "https://vhs.codeberg.page/after-dark" /*/>}}
{{</* external "gopher://gopher.quux.org:70" /*/>}}
```
```html
{{</* external text="After Dark" href="//vhs.codeberg.page/after-dark" /*/>}}
{{</* external class="muted" href="//vhs.codeberg.page/after-dark" /*/>}}
```

{{< external "https://vhs.codeberg.page/after-dark" />}}
{{< external text="After Dark" href="//vhs.codeberg.page/after-dark" />}}

{{< external class="muted" href="//vhs.codeberg.page/after-dark" />}}
{{< external "gopher://gopher.quux.org:70" />}}

With external link styling removed:

```html
{{</* external rel="noopener" href="https://keybase.io/vhs" /*/>}}
```

{{< external rel="noopener" href="https://keybase.io/vhs" />}}

With internal link opening in a new window:

```html
{{</* external href="/404.html" text="Error Page" /*/>}}
```

{{< external href="/404.html" text="Error Page" />}}

With structured data type:

```html
{{</* external itemtype="significantLink" href="https://vhs.codeberg.page" /*/>}}
```

{{< external itemtype="significantLink" href="https://vhs.codeberg.page" />}}

With site-wide [Referrer Policy](/feature/referrer-policy) overridden:

```html
{{</* external referrerpolicy="unsafe-url" href="http://goo.gl" /*/>}}
```

{{< external referrerpolicy="unsafe-url" href="http://goo.gl" />}}

With markdown image and link styling removed:

```markdown
{{%/* external rel="next" href="https://source.unsplash.com/collection/983219/2160x1440" %}}
  ![Example image](https://source.unsplash.com/collection/983219/1080x720 "View Random Image Enlarged")
{{% /external */%}}
```

{{% external rel="next" href="https://source.unsplash.com/collection/983219/2160x1440" %}}
  ![Example image](https://source.unsplash.com/collection/983219/1080x720 "View Random Image Enlarged")
{{% /external %}}

With interactive [Button](../button) to run a [Fuzzy Search](/feature/fuzzy-search):

```html
{{</* external rel="search" target="_self" href="/search/?s=button" >}}
  {{< hackcss-button type="primary" text="Search" />}}
{{< /external */>}}
```

{{< external rel="search" target="_self" href="/search/?s=button" >}}
  {{< hackcss-button type="primary" text="Search" />}}
{{< /external >}}
