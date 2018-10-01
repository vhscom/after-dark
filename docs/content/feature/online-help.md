+++
title = "Online Help"
description = "How to verify, customize and upgrade your installation."
categories = ["experience"]
tags = ["scripts", "security", "networking"]
features = ["related content"]
+++

Complete documentation seen on {{< external "https://vhs.codeberg.page/after-dark" />}} included in `/docs` directory and served automatically when using the [Quick Installer](../quick-installer).

Serve docs while [Air Gapping](../air-gapping) using the included help script:

```sh
$ cd flying-toasters
$ ./themes/after-dark/bin/help
```

Navigate to http://localhost:1414 to view the docs after running the script. Or use the [Upgrade Script](../upgrade-script) to check for, download and install updated docs along with the latest SHA-512 [Release Hash](../release-hashes/).
