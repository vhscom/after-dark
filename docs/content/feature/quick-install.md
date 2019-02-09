+++
title = "Quick Install"
description = "One command is all you need to start a new website."
categories = ["core"]
tags = ["setup", "installation", "scripts"]
features = ["code highlighter", "snippets", "related content"]
notes = [
  "review 'module-system' when adding or removing installed add-ons",
  "also review selection of pre-installed modules (see front matter)"
]
aliases = [
  "/feature/quick-installer/"
]
+++

After Dark includes a portable installation script for quick set-up:

{{< hackcss-card header="themes/after-dark/bin/install" >}}
<style>.card-content .inner { overflow: scroll; max-height: 30em; }</style>
<details itemscope itemtype="https://schema.org/SoftwareSourceCode">
<summary>Expand to view script</summary>
{{< highlight sh "linenos=inline" >}}
{{< include "themes/after-dark/bin/install" >}}
{{< /highlight >}}
<link itemprop="codeRepository" href="https://codeberg.org/vhs/after-dark">
<meta itemprop="codeSampleType" content="script">
<meta itemprop="programmingLanguage" content="sh">
<meta itemprop="runtimePlatform" content="busybox">
<link itemprop="targetProduct" href="https://vhs.codeberg.page/after-dark">
<meta itemprop="accessMode" content="textual">
</details>
{{< /hackcss-card >}}

Please install {{< external href="https://gohugo.io" text="Hugo" />}} `0.44` or greater before running the script.

<!--more-->

Script has been tested on Debian, BusyBox and Darwin, and should also work under Alpine, Ubuntu, Docker and Windows via {{< external href="http://cmder.net" text="Cmder" />}} without additional dependencies.

{{% hackcss-alert type="warning" %}}**Warning:** Always examine scripts downloaded from the internet before running them locally. If you'd prefer not to run the script [Download Manually](/#download).{{% /hackcss-alert %}}

Run the script however you like. Here are three possible methods:

1. Download and pipe to `sh` directly:

    {{< hackcss-alert >}}
    {{< highlight shell >}}wget -qO - https://codeberg.org/vhs/after-dark/raw/branch/trunk/bin/install | sh{{< /highlight >}}
    {{< /hackcss-alert >}}

    <i>(Cojones not included.)</i>

2. Download into new file, `chmod` and execute:

    {{< hackcss-alert >}}
    {{< highlight shell >}}curl -O https://cdn.jsdelivr.net/npm/after-dark@latest/bin/install && \
chmod +x install && ./install{{< /highlight >}}
    {{< /hackcss-alert >}}

    <i>(It's safe if it comes from a CDN, amirite?)</i>

3. From canonical `git` clone:

    {{< hackcss-alert >}}
    {{< highlight shell >}}# clone source and change to source directory
git clone https://codeberg.org/vhs/after-dark.git && cd "$_"

# use npm cli to get the release hash
echo "${$(npm run integrity)#*sha512-}"

# run quick install after validating
./bin/install
{{< /highlight >}}
    {{< /hackcss-alert >}}

    <i>(<a href="/feature/release-hashes/">Release Hashes</a> may be used for code validation.)</i>

Script should complete in 5-10 seconds resulting in a sample site and help docs:

{{< figure alt="After Dark screenshots"
  src="/images/quick-install.png"
  lqipsrc="/images/quick-install-fs8.png"
  caption="After Dark Quick Install running to completion in Terminal on macOS Mojave."
>}}

# Multi-site Configuration

After Dark enables multi-site management from a single installation. To manage multiple websites use the `-c` and `-d` flags to specify the `content` and `destination` directories, respectively

For example, to generate an audio site using the current After Dark installation create an executable script to generate the site:

{{< hackcss-card header="flying-toasters/bin/gen-audio-site" >}}
{{< highlight shell >}}#!/bin/sh
hugo -c sites/audio -d public/static.domain.example{{< /highlight >}}
{{< /hackcss-card >}}

Where `audio` contains the content for that site:

```
├── layouts
├── sites
│   └── audio
│       ├── audiobooks
│       │   ├── gaining-currency.md
│       │   └── the-power-of-now.md
│       └── clips
│           └── war-of-the-worlds.md
├── static
```

And `public` contains a folder for each site:

```
public
└── static.domain.example
    ├── categories
    │   └── index.xml
    ├── audiobooks
    │   └── index.html
    ├── clips
    │   └── index.html
    ├── css
    ├── index.html
    ├── index.xml
    ├── js
    ├── sitemap.xml
    └── tags
        └── index.xml
```

And create another script to serve the content for editing:

{{< hackcss-card header="flying-toasters/bin/serve-audio-site" >}}
{{< highlight shell >}}#!/bin/sh
hugo -c sites/audio{{< /highlight >}}
{{< /hackcss-card >}}

Each subdirectory of `public` then becomes an independent, deployable website and exact copy save for destination content generated.

{{% hackcss-alert type="info" %}}**Tip:** For additional flexibility type `hugo --help` and modify your scripts using the `--theme` and `--config` flags.{{% /hackcss-alert %}}

Multi-site is perfect for maintaining a consistent look-and-feel across multiple domain origins while limiting the need to run the [Upgrade Script](/feature/upgrade-script/) for each site.
