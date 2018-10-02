+++
title = "Online Help"
description = "Complete After Dark help guide and demo website."
categories = ["experience"]
tags = ["scripts", "security", "networking"]
features = ["related content"]
+++

Navigate to http://localhost:1414 to view the online help docs after running [Quick Install](../quick-installer). Everything you see here is included there for [Air Gapped](../air-gapping) use.

---

Serve doc site for viewing anytime using the `help` script:

{{< hackcss-alert type="info" >}}
{{< highlight sh >}}
cd flying-toasters && \
./themes/after-dark/bin/help
{{< /highlight >}}
{{< /hackcss-alert >}}

Develop or author them with live-reload:

And simply pointing it at any After Dark installation:

{{< hackcss-alert type="info" >}}
{{< highlight sh >}}
alias hs='hugo serve --navigateToChanged' && \
hs --port 1414 --source themes/after-dark/docs
{{< /highlight >}}
{{< /hackcss-alert >}}

Pull down latest doc updates using the [Upgrade Script](feature/upgrade-script/).
