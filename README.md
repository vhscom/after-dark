<img
  alt="After Dark"
  src="https://codeberg.org/vhs/after-dark/raw/branch/master/static/images/logo-dark.png"
  width="358">

**Hugo Dark Theme Website Generator**
<br>[Documentation](https://vhs.codeberg.page/after-dark) • [Releases](https://codeberg.org/vhs/after-dark/releases) • [Community](https://t.me/afterdarkhugo)

## After Dark

[![Latest NPM version](https://img.shields.io/npm/v/after-dark.svg?style=flat-square)](https://www.npmjs.com/package/after-dark)
[![Monthly downloads](https://img.shields.io/npm/dm/after-dark.svg?style=flat-square)](https://www.npmjs.com/package/after-dark)
[![Minimum Hugo version](https://img.shields.io/badge/hugo->%3D%200.44-FF4088.svg?style=flat-square)](https://gohugo.io)
[![IRC chat](https://img.shields.io/badge/irc-%23after--dark-32AFED.svg?style=flat-square&longCache=true)](https://vhs.codeberg.page/after-dark/#chat)
[![AGPL licensed](https://img.shields.io/npm/l/after-dark.svg?style=flat-square&longCache=true)](https://codeberg.org/vhs/after-dark/src/branch/master/COPYING)

```sh
wget -qO - https://codeberg.org/vhs/after-dark/raw/branch/trunk/bin/install | sh
```

**After Dark** is an extensible, robust templating system for [Hugo](https://gohugo.io) written from the ground up for speed, privacy and security.

## Features

- **[Developer Focused](https://vhs.codeberg.page/after-dark/#feature-workflow)**: Cross-platform, 1 dependency, single-codebase.
- **[Incredibly Fast](https://vhs.codeberg.page/after-dark/#feature-speed)**: ~0.615s builds and decisecond page loads.
- **[Privacy Aware](https://vhs.codeberg.page/after-dark/#feature-privacy)**: No cookies, no external requests, ephemeral hosting.
- **[Securely Designed](https://vhs.codeberg.page/after-dark/#feature-security)**: Source-level integrity, content security and more.
- **[Advanced Graphics](https://vhs.codeberg.page/after-dark/#feature-graphics)**: Silky-smooth post and homepage images.
- **[Easily Customized](https://vhs.codeberg.page/after-dark/#feature-customize)**: Easily modify website look-and-feel.
- **[Fuzzy Search](https://vhs.codeberg.page/after-dark/#feature-search)**: Offline, automatic and no third-parties.
- **[Rewards System](https://vhs.codeberg.page/after-dark/#feature-rewards)**: Earn rewards for keeping your software up-to-date.
- **[Batteries Included](https://vhs.codeberg.page/after-dark/#feature-extras)**: Integrate with Gitea, k8s, Traefik and Fathom.
- **[Extended Builds](https://vhs.codeberg.page/after-dark/#feature-builds)**: Create high-performance Hugo builds with integrated Sass support.

## Demo

Click a screenshot for a live demo of the functionality:

<table>
  <tr>
    <td>
      <a href="https://vhs.codeberg.page/after-dark/">
        <img alt src="https://vhs.codeberg.page/after-dark/images/screenshots/after-dark-v6.15.0-homepage-fs8.png">
      </a>
    </td>
    <td>
      <a href="https://vhs.codeberg.page/after-dark/feature/svg-favicon/">
        <img alt src="https://vhs.codeberg.page/after-dark/images/screenshots/feature-online-help-fs8.png">
      </a>
    </td>
    <td>
      <a href="https://vhs.codeberg.page/after-dark/404.html">
        <img alt src="https://vhs.codeberg.page/after-dark/images/screenshots/feature-error-page-fs8.png">
      </a>
    </td>
  </tr>
  <tr>
    <th scope="col"><center>Help Docs</center></th>
    <th scope="col"><center>SVG Favicon</center></th>
    <th scope="col"><center>404 Page</center></th>
  </tr>
</table>

<table>
  <tr>
    <td>
      <a href="https://vhs.codeberg.page/after-dark/module/toxic-swamp/">
        <img alt src="https://vhs.codeberg.page/after-dark/images/screenshots/module-toxic-swamp-fs8.png">
      </a>
    </td>
    <td>
      <a href="https://vhs.codeberg.page/after-dark/shortcode/button/">
        <img alt src="https://vhs.codeberg.page/after-dark/images/screenshots/shortcode-button-fs8.png">
      </a>
    </td>
    <td>
      <a href="https://vhs.codeberg.page/after-dark/extra/high-tea/">
        <img alt src="https://vhs.codeberg.page/after-dark/images/screenshots/extra-high-tea-fs8.png">
      </a>
    </td>
  </tr>
  <tr>
    <th scope="col"><center>Add-on Modules</center></th>
    <th scope="col"><center>Form Controls</center></th>
    <th scope="col"><center>IndieWeb Extras</center></th>
  </tr>
</table>

## Getting Started

Please [Install Hugo](https://gohugo.io/getting-started/installing) `0.44` or greater on your machine prior to installation unless you're starting with [After Dark K3s](https://vhs.codeberg.page/after-dark/extra/after-dark-k3s).

### Installation

One command is all you need to start a new website:

```sh
wget -qO - https://codeberg.org/vhs/after-dark/raw/branch/trunk/bin/install | sh
```

For fastest installation use the provided [Quick Install](https://vhs.codeberg.page/after-dark/feature/quick-install/) script. Quick Install is ideal for first-time users and does not require use of git. Use it to automatically set-up, configure and run a sample After Dark website you may re-purpose as your own.

By convention After Dark may be used with an existing Hugo site by git cloning to or adding as a submodule of the `themes` directory:

```sh
flying-toasters
├── static
└── themes
    └── after-dark # the clone or submodule
```

See [Install a Single Theme](https://gohugo.io/themes/installing-and-using-themes/#install-a-single-theme) on the Hugo docs site for further instructions.

After Dark also ships [as an NPM module](https://www.npmjs.com/package/after-dark) as a convenience for users. Use it to integrate After Dark into an existing publishing workflow.

### Usage

Use [Online Help](https://vhs.codeberg.page/after-dark/feature/online-help/) to learn how to set-up and use After Dark. Help docs may be served locally and do not require an Internet connection to function.

### Upgrading

Run the [Upgrade Script](https://vhs.codeberg.page/after-dark/feature/upgrade-script/) to check for updates and upgrade automatically:

```sh
./themes/after-dark/bin/upgrade
```

Upgrading replaces the file contents of the theme as a whole.

### Verifying

If installed or upgraded via script you may use the [Release Validator](https://vhs.codeberg.page/after-dark/validate/) to verify you're running a PGP-signed and SHA-verified release. Integrity is checked at the source level and may be performed offline. See [Release Hashes](https://vhs.codeberg.page/after-dark/feature/release-hashes/) for more info.

## Credits

Special thanks to エゴイスト for [hackcss](https://codeberg.org/vhs/vhs/hack), Dan Klammer for the [bytesize icons](https://codeberg.org/vhs/bytesize-icons) and Vincent Prouillet for the [Zola port](https://www.getzola.org/themes/after-dark/).

## Rights

Copyright (C) 2019  VHS <vhsdev@tutanota.com>

After Dark is free software: you can redistribute it and/or modify
it under the terms of the GNU Affero General Public License as published
by the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

After Dark is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU Affero General Public License for more details.

You should have received a copy of the GNU Affero General Public License
along with this program.  If not, see <https://www.gnu.org/licenses/>.
