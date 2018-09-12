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

After Dark includes a portable installation script located in `bin/install`. Run it using `./bin/install` or copy the code below into a file and execute it:

{{< highlight shell "linenos=inline" >}}
{{< include "themes/after-dark/bin/install" >}}
{{< /highlight >}}

Installation has been tested on Debian, BusyBox and Darwin, and should also work under Alpine, Ubuntu, Docker and Windows via {{< external href="http://cmder.net" text="Cmder" />}} without added dependencies.
