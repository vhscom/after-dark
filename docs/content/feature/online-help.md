+++
title = "Online Help"
description = "Complete After Dark help manual and demo website."
categories = ["experience"]
tags = ["scripts", "security", "networking"]
features = ["related content"]
+++

Navigate to http://localhost:1414 to view the online help docs after running [Quick Installer](../quick-installer). Everything you see here is included there for [offline use](../air-gapping).

---

Using the `help` script to view help docs anytime:

{{< hackcss-alert type="info" >}}
{{< highlight sh >}}
cd flying-toasters && \
./themes/after-dark/bin/help
{{< /highlight >}}
{{< /hackcss-alert >}}

Or create an alias and serve docs with live-reload for testing:

{{< hackcss-alert type="info" >}}
{{< highlight sh >}}
alias hs='hugo serve --navigateToChanged' && \
hs --port 1414 --source themes/after-dark/docs
{{< /highlight >}}
{{< /hackcss-alert >}}

Get the latest documentation using the [Upgrade Script](../upgrade-script/).
