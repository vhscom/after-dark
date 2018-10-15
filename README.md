# After Dark

> After Dark is an extensible flat-file CMS built on Hugo designed to create incredibly fast static websites which are easy to learn, rewarding to build, simple to maintain and securely designed.

[![Latest NPM version](https://img.shields.io/npm/v/after-dark.svg?style=flat-square)](https://www.npmjs.com/package/after-dark)
[![Monthly downloads](https://img.shields.io/npm/dm/after-dark.svg?style=flat-square)](https://www.npmjs.com/package/after-dark)
[![Minimum Hugo version](https://img.shields.io/badge/hugo->%3D%200.44-FF4088.svg?style=flat-square)](https://gohugo.io)
[![WTFPL licensed](https://img.shields.io/npm/l/after-dark.svg?style=flat-square&longCache=true)](https://codeberg.org/vhs/after-dark/src/branch/master/COPYING)
[![Telegram chat](https://img.shields.io/badge/chat-telegram-32AFED.svg?style=flat-square&longCache=true)](https://t.me/vhs)
[![Keybase profile](https://img.shields.io/badge/pm-keybase-4c8eff.svg?style=flat-square&longCache=true)](https://keybase.io/vhs)

![After Dark screenshots for desktop and mobile](https://vhs.codeberg.page/after-dark/images/minimal-mac_1600x1200-fs8.png "After Dark with default and Dark Grey skin settings in Hack and Standard modes on Desktop and Mobile browsers showing a lazy-loaded responsive post image.")

## Features

A few highlights:

- Display page content in less than a half second
- Choose from one of eight styleable theme skins
- Quickly locate indexable content with fuzzy search
- Create lazy-loading responsive images and galleries
- Earn generous incentives for remaining up-to-date

Visit [vhs.codeberg.page/after-dark](https://vhs.codeberg.page/after-dark) for a complete list.

## Getting Started

[Install Hugo](https://gohugo.io/getting-started/installing) before getting started.

### Installation

Then run the [Quick Installer](https://vhs.codeberg.page/after-dark/feature/quick-installer/) to start a new site:

```shell
wget -qO - https://codeberg.org/vhs/after-dark/raw/branch/trunk/bin/install | sh
```

Installation will download and install After Dark and should complete in 15 to 20 seconds depending on connection speed:

<a href="https://asciinema.org/a/E1Ds7jbjhTel52PvMqZzuGsWE" target="_blank"><img src="https://asciinema.org/a/E1Ds7jbjhTel52PvMqZzuGsWE.png" alt="Quick Installer screenshot"></a>

If you'd prefer to install manually download one of the available [releases](https://codeberg.org/vhs/after-dark/releases) to the themes directory of an existing hugo site and then serve the site with `hugo serve --theme after-dark`. An example site is included in the `/docs` directory as a reference.

### Upgrading

Simply run the [Upgrade Script](https://vhs.codeberg.page/after-dark/feature/upgrade-script/) anytime to check for updates and automatically upgrade to the latest version.

### Verifying

If installed or upgraded via script you may use the [Release Validator](https://vhs.codeberg.page/after-dark/validate/) to verify you're running a PGP-signed and SHA-verified release.

### Help

Complete [Online Help](https://vhs.codeberg.page/after-dark/feature/online-help/) documentation included with installation.

## License

Copyright (C) 2016–2018 VHS <vhsdev@tutanota.com>

This work is free. You can redistribute it and/or modify it under the
terms of the Do What The Fuck You Want To Public License, Version 2,
as published by Sam Hocevar. See the COPYING file for more details.

## Acknowledgements

Thanks to Steve Francia for creating Hugo, エゴイスト for creating hackcss, Dan Klammer for the SVG icons, Simon Fremaux for the groovy 404 background animation and Vincent Prouillet for [porting After Dark to Gutenberg](https://www.getgutenberg.io/themes/after-dark/).
