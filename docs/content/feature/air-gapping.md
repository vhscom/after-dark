+++
title = "Air Gapping"
description = "Build and run your entire site without Internet access."
categories = ["security"]
tags = ["privacy", "networking"]
features = ["related content"]
+++

Unless running the [Quick Install](../quick-install) After Dark does not require an Internet connection to function. Leverage this feature in creative ways:

- Review the [Online Help](../online-help) docs during a flight on Virgin Galactic.
- Keep a personal journal while couchsurfing through Southeast Asia.
- Securely generate configuration for the [Web Mining](/module/toxic-swamp#config-generator) add-on module.
- Run your site behind a NAT or firewall blocking all outbound requests.
- Develop your content using {{< external href="https://termux.com" text="Termux" />}} on Android in airplane mode.
- Report news from Timor Barat without tipping off authorities.
- Create an [Image Gallery](/module/hall-of-mirrors) while trekking the Mount Nimbus via ferrata.

By default After Dark makes no outbound requests **except** when viewing certain [Online Help](../online-help) documentation to cover related functionality.

## Ephemeral hosting with end-to-end encryption

Using {{< external href="https://serveo.net" text="Serveo" />}} you may briefly expose your site to the Internet with end-to-end encryption, no sign-up required.

Serve and expose your site with the following command:

```sh
$ hugo serve --disableLiveReload & ssh -R 80:localhost:1313 serveo.net
```

Once started press `g` for traffic inspection, or quit to go offline and use `fg` to return to `hugo`. Install {{< external href="https://matt.ucc.asn.au/dropbear/dropbear.html" text="dropbear" />}} or {{< external href="https://www.openssh.com" text="openssh" />}} if you need `ssh`.
