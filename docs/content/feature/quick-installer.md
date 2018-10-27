+++
title = "Quick Installer"
description = "One command is all you need to start a new website."
categories = ["experience"]
tags = ["setup", "installation", "scripts"]
features = ["code highlighter", "snippets", "related content"]
notes = [
  "review 'module-system' when adding or removing installed add-ons",
  "also review selection of pre-installed modules (see front matter)"
]
+++

After Dark source includes a portable installation script for quick set-up:

<style>.card-content .inner { overflow: scroll; max-height: 30em; }</style>
{{< hackcss-card header="bin/install" >}}
{{< highlight shell "linenos=inline" >}}
{{< include "themes/after-dark/bin/install" >}}
{{< /highlight >}}
{{< /hackcss-card >}}

Installation has been tested on Debian, BusyBox and Darwin, and should also work under Alpine, Ubuntu, Docker and Windows via {{< external href="http://cmder.net" text="Cmder" />}} without added dependencies.

Three methods of running the script:

1. Download, copy into a new file and execute it:

    {{< hackcss-alert >}}
    {{< highlight shell >}}wget cdn.jsdelivr.net/npm/after-dark@latest/bin/install && \
chmod +x install && ./install{{< /highlight >}}
    {{< /hackcss-alert >}}


2. Download and pipe it to `sh` directly:

    {{< hackcss-alert >}}
    {{< highlight shell >}}wget -qO - https://codeberg.org/vhs/after-dark/raw/branch/trunk/bin/install | sh{{< /highlight >}}
    {{< /hackcss-alert >}}

3. [Download After Dark](/#download) and execute it from a terminal with `./bin/install`.

Script should complete in 5-10 seconds resulting in a sample site and help docs:

{{< figure alt="After Dark screenshots"
  src="/images/quick-installer.png"
  lqipsrc="/images/quick-installer-fs8.png"
  caption="After Dark Quick Installer running to completion in Terminal on macOS Mojave."
>}}
