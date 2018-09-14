+++
title = "JIT Requests"
description = "Maximize resources while minimizing external requests."
categories = ["experience"]
tags = ["performance", "styles", "javascript"]
features = ["related content", "snippets", "code highlighter"]
+++

After Dark makes <abbr title="Just-In-Time">JIT</abbr> requests for some external assets to cut down on resource consumption and increase page performance.

Take the [Code Highlighter](../code-highlighter) stylesheet for example:

{{< highlight css >}}
{{< include "themes/after-dark/static/css/syntax.css" >}}
{{< /highlight >}}

The above highlighted code is, itself, highlighted using a JIT request. Confirm by viewing the network requests for this page and observe the `fetch` requests:

```sh
jit-requests (document)
├── lazysizes.min.js (fetch)
├── syntax.css (fetch)
```

Rather than blocking the page with an external request [Fetch Injection](../fetch-injection) is used to load them on-the-fly while the base layout takes care to ensure they're only on pages which actually need them.

Another example can be seen in the [Table Of Contents](../table-of-contents) whereby a {{< external href="https://devdocs.io/css/scroll-behavior" text="scroll-behavior" />}} polyfill is loaded but not until user shows intent to use the feature.

Study these patterns and try building your own in your own [Custom Layouts](../custom-layouts).
