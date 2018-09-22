+++
title = "Upgrade Script"
description = "Check for After Dark updates and upgrade effortlessly."
categories = ["experience"]
tags = ["updating", "installation", "scripts"]
features = ["code highlighter", "related content"]
+++

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
Stopping help server if running ...</br>
Generating help documentation ...<br>
Upgrade complete! Please see CHANGELOG.md for changes.</samp>
{{< /hackcss-alert >}}

If current version can't be detected the script will prompt you:

{{< hackcss-alert >}}
<samp>Cannot detect version. Upgrade after-dark anyway (y/n)? y<br>
Starting upgrade from unknown version to 6.12.1 ...<br>
Version 6.12.1 downloaded to themes/after-dark<br>
Stopping help server if running ...</br>
Generating help documentation ...<br>
Upgrade complete! Please see CHANGELOG.md for changes.</samp>
{{< /hackcss-alert >}}

Upon upgrade the [Release Hash](../release-hashes) will update for proper [Release Validation](/validate).
