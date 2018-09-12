+++
title = "Upgrade Script"
description = "Check for After Dark updates and upgrade effortlessly."
categories = ["experience"]
tags = ["updating", "installation", "scripts"]
features = ["code highlighter", "related content"]
+++

{{< hackcss-alert type="info" >}}
<strong>Note:</strong> Use of the upgrade script requires After Dark version 6.7.5 or better. If you're running an earlier version please follow {{< external href="https://codeberg.org/vhs/after-dark/commit/6415250769c9c78338893f98b5ab9b77968053f7" text="these steps" />}} first.
{{< /hackcss-alert >}}

To check for updates and automatically upgrade to the latest version simply run the upgrade script from your site directory:

```sh
$ ./themes/after-dark/bin/upgrade
```

Like [Quick Installer](../quick-installer) the upgrade script is written for POSIX shells and does not require additional dependencies to operate.

If you're already using the latest version the script will let you know:

{{< hackcss-alert >}}
<samp>Did not upgrade after-dark. Already using latest version.</samp>
{{< /hackcss-alert >}}

If an update is available the script will download and install it automatically:

{{< hackcss-alert >}}
<samp>Starting upgrade from 6.7.6 to 6.8.0 ...<br>
Version 6.8.0 downloaded to themes/after-dark<br>
Generating help documentation ...<br>
Upgrade complete! Please see CHANGELOG.md for changes.</samp>
{{< /hackcss-alert >}}

Upon upgrade the [Release Hash](../release-hashes) will change for accurate [Release Validation](/validate).
