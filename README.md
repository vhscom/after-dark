# After Dark

> A deceptively simple dark theme for [Hugo].

[![Latest NPM version](https://img.shields.io/npm/v/after-dark.svg?style=flat-square)](https://www.npmjs.com/package/after-dark)
[![Monthly downloads](https://img.shields.io/npm/dm/after-dark.svg?style=flat-square)](https://www.npmjs.com/package/after-dark)
[![Minimum Hugo version](https://img.shields.io/badge/hugo->%3D%200.44-FF4088.svg?style=flat-square)](https://gohugo.io)
[![Telegram chat](https://img.shields.io/badge/chat-telegram-32AFED.svg?style=flat-square)][1]
[![WTFPL licensed](https://img.shields.io/npm/l/after-dark.svg?style=flat-square&longCache=true)](https://codeberg.org/vhs/after-dark/src/branch/master/COPYING)

![After Dark screenshots](https://codeberg.org/vhs/after-dark/raw/branch/master/images/docs/minimal-mac.png)

## About

After Dark is a blog theme for the Hugo static site generator. It is an original work designed to preserve the aesthetic and simplicity of hobbiest websites created during the mid- to late-1990’s. The theme includes an inbuilt search engine, POSIX-compliant quick installer and optional plug-in modules to add functionality. Use it online or off to create anything from an indie microblog to a visually stunning photojournal.

## Demo

Visit [Hack Cabin](https://hackcabin.com) for a live example [you can recreate](https://vhs.codeberg.page/zero-to-http-2).

## Features

See what's included or [jump ahead](#getting-started) to get started.

<details open>
<summary>Feature Overview</summary>

Feature | Summary
--------|--------
Quick Installer | One command is all you need to get started with After Dark.
Online Help | Learn to use the theme with convenient help from within your site.
Module System | Add functionality with prebuilt modules designed to compliment your site.
Section Menu | Display an accessible site-wide navigation with links to content sections.
Display Variants | Customize look-and-feel with one of six included display variations.
Custom Styles | Add to, override or disable theme styles for complete design control.
Trim Color | Define how user agents should display the border around your site.
SVG Favicon | Help push browser standards forward by decorating your site with an SVG favicon.
Fuzzy Search | Find and share indexable content anywhere on your site. No registration required.
Code Highlighter | Highlight code in over 160 languages without requiring JavaScript.
Post Images | Add graphics to your posts without touching an image editor.
Lazy Loading | Boost page speed and save bandwidth by deferring assets you define.
Social Engagement | Share links to your site with large images on Facebook, Twitter, Telegram and more.
Search Optimization | Give crawlers rich information about your site structure and content.
Modification Dating | Recently updated content is flagged and made more discoverable to readers.
Index Blocking | Hide pages from search engines without modifying robots.txt.
Referrer Policy | Help protect your visitors from nosy neighbors with a simple site-wide policy.
Snippets | Display alerts, cards, progress indicators and easily build great-looking forms.
Related Content | Display links to relevant content below blog posts automatically.
Table of Contents | Create collapsable content summaries with deep link and smooth-scroll support.
404 Page | Entertain users into staying when they experience linkrot on your site.
</details>

## Getting Started

Satisfy the requirements, run the quick installer and go live in an instant.

### Requirements

After Dark requires Hugo `0.44` or later. Before running the quick installer please [install Hugo](https://gohugo.io/getting-started/installing).

### Quick Installer

Then run the quick installer located at [`bin/install`](https://codeberg.org/vhs/after-dark/src/branch/master/bin/install), or just paste this into a terminal and press <kbd>Enter</kbd>:

```shell
wget -qO - https://codeberg.org/vhs/after-dark/raw/branch/master/bin/install | sh
```

Installation should complete in a matter of seconds and includes documentation to get you started.

### Go Live

View your site online with [Serveo] using end-to-end encryption:

```
ssh -R 80:localhost:1313 serveo.net
```

No sign-ups required. Install [dropbear] or [openssh] if you need an ssh server.

## Adaptations

After Dark enjoys a community-maintained [port for Gutenberg](https://www.getgutenberg.io/themes/after-dark/) for those who'd like to experiment with an alternative to Hugo.

## License

Copyright (C) 2016–2018 VHS <vhsdev@tutanota.com>

This work is free. You can redistribute it and/or modify it under the
terms of the Do What The Fuck You Want To Public License, Version 2,
as published by Sam Hocevar. See the COPYING file for more details.

## Acknowledgements

Thanks to Steve Francia for creating Hugo. Thanks to エゴイスト for creating hackcss. Thanks to Dan Klammer for the SVG icons. And thanks to Simon Fremaux for the groovy 404 page background animation.

[1]: https://t.me/joinchat/Iw_6FEhmKL9sPUAukX9jzg
[Hugo]: https://gohugo.io/
[Serveo]: https://serveo.net
[dropbear]: https://matt.ucc.asn.au/dropbear/dropbear.html
[openssh]: https://www.openssh.com
