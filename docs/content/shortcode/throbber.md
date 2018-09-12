+++
title = "Throbber"
description = "Display a CSS-only loading indicator."
categories = ["experience"]
tags = []
html_attributes = []
custom_attributes = []
snippets_used = ["throber", "button"]
+++

Basic usage:

```html
{{</* hackcss-throbber */>}}
```

{{< hackcss-throbber >}}

Inside a [Button](../button):

```html
{{</* hackcss-button isghost="true" type="info" >}}
  Please wait&hellip; {{< hackcss-throbber >}}
{{< /hackcss-button */>}}
```

{{< hackcss-button isghost="true" type="info" >}}
  Please wait&hellip; {{< hackcss-throbber >}}
{{< /hackcss-button >}}

Customize by creating your own {{< external text="CSS-only loading" href="https://www.pexels.com/blog/css-only-loaders/" />}} indicator.
