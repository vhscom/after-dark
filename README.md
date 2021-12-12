<img
  alt="After Dark"
  src="https://codeberg.org/vhs/after-dark/raw/branch/trunk/static/images/logo-dark.png"
  width="358">

**Retro Dark Theme for Hugo**
<br>[Docs](https://vhs.codeberg.page/after-dark) • [Releases](https://codeberg.org/vhs/after-dark/releases) • [Community](https://t.me/afterdarkhugo)

## After Dark

[![Latest NPM version](https://img.shields.io/npm/v/after-dark.svg?style=flat-square)](https://www.npmjs.com/package/after-dark)
[![Monthly downloads](https://img.shields.io/npm/dm/after-dark.svg?style=flat-square)](https://www.npmjs.com/package/after-dark)
[![Minimum Hugo version](https://img.shields.io/badge/hugo->%3D%200.51-FF4088.svg?style=flat-square)](https://gohugo.io)
[![IRC chat](https://img.shields.io/badge/irc-%23after--dark-32AFED.svg?style=flat-square&longCache=true)](https://vhs.codeberg.page/after-dark/#chat)
[![AGPL licensed](https://img.shields.io/npm/l/after-dark.svg?style=flat-square&longCache=true)](https://codeberg.org/vhs/after-dark/src/branch/trunk/COPYING)

## Features

- **Developer Focused:** Cross-platform, 1 dependency, single-codebase.
- **Incredibly Fast:** ~0.615s average build time and decisecond page loads.
- **Privacy Aware:** No cookies, no trackers, no external requests.
- **Securely Designed:** Source-level integrity checking and strict content security policy.
- **Advanced Graphics:** BPG image support, PhotoSwipe support, aggressive lazy-loading.
- **Easily Customized:** Override any theme template to compose your own views.
- **Fuzzy Search:** Offline, automatic and no third-parties.
- **Batteries Included**: Integrates with Gitea, Kubernetes, Traefik and Fathom Analytics.
- **Extended Builds:** Add Sass support to your project and decrease built times.
- **Detailed Docs:** Includes example documentation website written using After Dark.

## Screenshot

[![Demo](https://codeberg.org/vhs/after-dark/raw/branch/trunk/docs/static/images/screenshots/after-dark-v6.15.0-homepage-fs8.png)](https://codeberg.org/vhs/after-dark)

## Requirements

Hugo 0.51+ is the only requirement. ([Install instructions](https://gohugo.io/getting-started/installing/))

### Installation

The fastest installation method is to run the quick install script:

```sh
wget -qO - https://codeberg.org/vhs/after-dark/raw/branch/trunk/bin/install | sh
```

Quick Install is ideal for first-time users and does not require use of git. Quick install will automatically run two servers: One containing your website ready to use and the other containing comprehensive help documentation.

By convention After Dark may also be used with an existing Hugo site by git cloning to or adding as a submodule of the `themes` directory of your Hugo site:

```sh
flying-toasters
├── static
└── themes
    └── after-dark # git clone or submodule
```

See [Install a Single Theme](https://gohugo.io/themes/installing-and-using-themes/#install-a-single-theme) on the Hugo docs site for additional instructions.

After Dark releases are tagged in git and [packaged on NPM](https://www.npmjs.com/package/after-dark). Use the NPM package to integrate After Dark into existing workflows.

### Usage

Run the online help server after installing for detailed instructions:

```
sh ./themes/after-dark/bin/help
```

See the [Hugo docs](https://gohugo.io/documentation/) as well. There's also a [Hugo community forum](https://discourse.gohugo.io/) in case you get stuck.

### Upgrading

Run the [Upgrade Script](https://vhs.codeberg.page/after-dark/feature/upgrade-script/) to check for updates and upgrade automatically:

```sh
./themes/after-dark/bin/upgrade
```

Upgrading replaces the file contents of the theme as a whole for security reasons. If you wish to modify the source please create a fork.

### Verifying

If installed or upgraded via script you may use the [Release Validator](https://vhs.codeberg.page/after-dark/validate/) to verify you're running a PGP-signed and SHA-verified release. Integrity is checked at the source level and may be performed offline. See [Release Hashes](https://vhs.codeberg.page/after-dark/feature/release-hashes/) for more info.

## Credits

Special thanks to エゴイスト for [hackcss](https://codeberg.org/vhs/mirrors/hack), Dan Klammer for the [bytesize icons](https://codeberg.org/vhs/mirrors/bytesize-icons) and Vincent Prouillet for the [Zola port](https://www.getzola.org/themes/after-dark/).

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
