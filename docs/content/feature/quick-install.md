+++
title = "Quick Install"
description = "One command is all you need to start a new website."
categories = ["experience"]
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

<style>.card-content .inner { overflow: scroll; max-height: 30em; }</style>
{{< hackcss-card header="themes/after-dark/bin/install" >}}
<details>
<summary>Expand to view script</summary>
{{< highlight shell "linenos=inline" >}}
{{< include "themes/after-dark/bin/install" >}}
{{< /highlight >}}
</details>
{{< /hackcss-card >}}

Please install {{< external href="https://gohugo.io" text="Hugo" />}} `0.44` or greater before running the script.

Script has been tested on Debian, BusyBox and Darwin, and should also work under Alpine, Ubuntu, Docker and Windows via {{< external href="http://cmder.net" text="Cmder" />}} without additional dependencies.

Run the script however you like. Here are three possible methods:

2. Download and pipe to `sh` directly:

    {{< hackcss-alert >}}
    {{< highlight shell >}}wget -qO - https://codeberg.org/vhs/after-dark/raw/branch/trunk/bin/install | sh{{< /highlight >}}
    {{< /hackcss-alert >}}

    <i>(Kahones not included.)</i>

1. Download into new file, `chmod` and execute:

    {{< hackcss-alert >}}
    {{< highlight shell >}}curl -O cdn.jsdelivr.net/npm/after-dark@latest/bin/install && \
chmod +x install && ./install{{< /highlight >}}
    {{< /hackcss-alert >}}

    <i>(It's safe if it comes from a CDN, amirite?)</i>

3. From canonical `git` clone:

    {{< hackcss-alert >}}
    {{< highlight shell >}}# clone source and change to source directory
git clone https://codeberg.org/vhs/after-dark.git && cd "$_"

# use npm cli to get source integrity value
echo "${$(npm run integrity)#*sha512-}"

# run quick install
./bin/install
{{< /highlight >}}
    {{< /hackcss-alert >}}

    <i>(If you're really paranoid.)</i>

Script should complete in 5-10 seconds resulting in a sample site and help docs:

{{< figure alt="After Dark screenshots"
  src="/images/quick-install.png"
  lqipsrc="/images/quick-install-fs8.png"
  caption="After Dark Quick Install running to completion in Terminal on macOS Mojave."
>}}

If you'd prefer not to run the script you can still [Download Manually](/#download) and use [Online Help](../online-help) as an example to get you started.
