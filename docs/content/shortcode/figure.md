+++
title = "Figure"
description = "Present lazy-loaded images with LQIP support."
categories = ["experience"]
tags = ["performance", "images", "graphics"]
html_attributes = ["class", "alt", "src"]
custom_attributes = ["lqipsrc", "caption", "link", "linktarget", "attr", "attrlink", "title"]
snippets_used = ["code highlighter"]
notes = [
  "review 'lazy-loading' if this page is modified"
]
+++

With low-quality image placeholder:

```html
{{</* figure
  src="https://source.unsplash.com/Y-w15LfHO8w/5184x3456"
  lqipsrc="https://source.unsplash.com/Y-w15LfHO8w/1080x720"
  caption="Be Creative"
  attr="AK¥N Cakiner"
  attrlink="https://unsplash.com/@akin"
*/>}}
```

{{< figure
  src="https://source.unsplash.com/Y-w15LfHO8w/5184x3456"
  lqipsrc="https://source.unsplash.com/Y-w15LfHO8w/1080x720"
  caption="Be Creative"
  attr="AK¥N Cakiner"
  attrlink="https://unsplash.com/@akin"
>}}

See {{< external href="https://gohugo.io/content-management/shortcodes/#figure" text="Figures in Hugo" />}} for additional usage.
