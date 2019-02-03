+++
title = "Figure"
description = "Load images progressively with blurry placeholders."
categories = ["experience"]
tags = ["performance", "images", "graphics"]
html_attributes = ["class", "alt", "src"]
custom_attributes = ["lqipsrc", "caption", "link", "linktarget", "attr", "attrlink", "title"]
snippets_used = ["code highlighter"]
notes = [
  "review 'lazy-loading' if this page is modified"
]
+++

With progressive image placeholder:

```html
{{</* figure
  src="/images/watercolor_pTIyYTqAlF8_w1440h700.jpeg"
  alt="Artistic map"
  lqipsrc="/images/watercolor_pTIyYTqAlF8_w936h455.jpeg"
  title="Map of Bali in Watercolor"
  attr="Stamen Design"
  attrlink="https://maps.stamen.com/"
*/>}}
```

{{< figure
  src="/images/watercolor_pTIyYTqAlF8_w1440h700.jpeg"
  alt="Artistic map"
  lqipsrc="/images/watercolor_pTIyYTqAlF8_w936h455.jpeg"
  title="Map of Bali in Watercolor"
  attr="Stamen Design"
  attrlink="https://maps.stamen.com/"
>}}

See {{< external href="https://gohugo.io/content-management/shortcodes/#figure" text="Figures in Hugo" />}} for additional usage.
