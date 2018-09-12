+++
title = "Air Gapping"
description = "Build and run your entire site without Internet access."
categories = ["security"]
tags = ["privacy", "networking"]
features = ["related content"]
+++

Unless running the [Quick Installer](../quick-installer) After Dark does not require an Internet connection to function. Leverage this feature in creative ways:

- Keep a personal journal while couchsurfing through Southeast Asia.
- Develop your content using {{< external href="https://termux.com" text="Termux" />}} on Android in airplane mode.
- Run your site behind a NAT or firewall blocking all outbound requests.
- Review the [Online Help](../online-help) docs during a flight on Virgin Galactic.
- Report local news from West Timor without tipping off the authorities.
- Create a [PhotoSwipe Gallery](modules/hall-of-mirrors) while trekking the Mount Nimbus via ferrata.
- Document the Syrian Civil War without revealing activity to ISPs.

By default After Dark makes no outbound requests **except** when viewing non-essential [Online Help](../online-help) and where appropriate to cover related functionality.

## Ephemeral hosting with end-to-end encryption

Using {{< external href="https://serveo.net" text="Serveo" />}} you may briefly expose your site to the Internet with end-to-end encryption, no sign-up required.

Serve and expose your site with the following command:

```sh
$ hugo serve --disableLiveReload & ssh -R 80:localhost:1313 serveo.net
```

Once started press `g` for traffic inspection, or quit to go offline and use `fg` to return to `hugo`. Install {{< external href="https://matt.ucc.asn.au/dropbear/dropbear.html" text="dropbear" />}} or {{< external href="https://www.openssh.com" text="openssh" />}} if you need `ssh`.
