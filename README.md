# After Dark

> After Dark is more than just a theme for [Hugo](https://gohugo.io) theme. It's a complete hypermedia authoring system for creating immersive websites that are incredibly fast, easy to customize and securely designed. Use the quick installer and you'll be up-and-running in seconds.

[![Latest NPM version](https://img.shields.io/npm/v/after-dark.svg?style=flat-square)](https://www.npmjs.com/package/after-dark)
[![Monthly downloads](https://img.shields.io/npm/dm/after-dark.svg?style=flat-square)](https://www.npmjs.com/package/after-dark)
[![Minimum Hugo version](https://img.shields.io/badge/hugo->%3D%200.44-FF4088.svg?style=flat-square)](https://gohugo.io)
[![WTFPL licensed](https://img.shields.io/npm/l/after-dark.svg?style=flat-square&longCache=true)](https://codeberg.org/vhs/after-dark/src/branch/master/COPYING)

![After Dark screenshots](https://vhs.codeberg.page/after-dark/minimal-mac_1600x1200-fs8.png)

## Demo

View a [live demo](https://vhs.codeberg.page/after-dark) and check out some [example sites](/vhs/after-dark/wiki#example-sites).

## Features

- Create lazy-loading responsive images and galleries with low-quality image placeholders and special effects all without touching an image editor.
- Load entire pages in less than a half-second without relying on complex build systems or browser sniffing and may the schwartz be with you.
- Choose from one of eight styleable theme skins or disable theming entirely and use custom layouts and CSS to take complete design control.
- Locate indexed content anywhere on your site in the blink of an eye, even without an Internet connection. No registration required.
- From PGP-signed cryptographic release hashes to ephemeral hosting options with end-to-end encryption security is tight as a drum, sir.

Please visit the online demo for a [full list](https://vhs.codeberg.page/after-dark/feature/) of features.

## Getting Started

Install Hugo, run the quick installer and go live with a single command.

### Requirements

After Dark requires Hugo `0.44` or later. Please [install Hugo](https://gohugo.io/getting-started/installing) before continuing.

### Quick Installer

Then run the [Quick Installer](https://vhs.codeberg.page/after-dark/feature/quick-installer/) located at [`bin/install`](https://codeberg.org/vhs/after-dark/src/branch/master/bin/install), or just paste this into a terminal and press <kbd>Enter</kbd>:

```shell
wget -qO - https://codeberg.org/vhs/after-dark/raw/branch/trunk/bin/install | sh
```

[![Monthly downloads](https://img.shields.io/npm/dm/after-dark.svg?style=flat-square)](https://www.npmjs.com/package/after-dark)

Installation should complete in a matter of seconds.

### Go Live

What hosting company? Serve your site online with end-to-end encryption using [Serveo], no registration required:

```
hugo serve --disableLiveReload & ssh -R 80:localhost:1313 serveo.net
```

Once started press `g` for traffic inspection, or quit to go offline and use `fg` to return to `hugo`. Install [dropbear] or [openssh] if you need `ssh`.

## Upgrading

To check for updates and upgrade to the latest version run the [Upgrade Script](https://vhs.codeberg.page/after-dark/feature/upgrade-script/).

## License

Copyright (C) 2016–2018 VHS <vhsdev@tutanota.com>

This work is free. You can redistribute it and/or modify it under the
terms of the Do What The Fuck You Want To Public License, Version 2,
as published by Sam Hocevar. See the COPYING file for more details.

## Acknowledgements

Thanks to Steve Francia for creating Hugo. Thanks to エゴイスト for creating hackcss. Thanks to Dan Klammer for the SVG icons. Thanks to Simon Fremaux for the groovy 404 background animation. And thanks to Vincent Prouillet for creating an After Dark [port for Gutenberg](https://www.getgutenberg.io/themes/after-dark/).

[Serveo]: https://serveo.net
[dropbear]: https://matt.ucc.asn.au/dropbear/dropbear.html
[openssh]: https://www.openssh.com
