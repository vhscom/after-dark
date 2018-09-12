+++
title = "Related Content"
description = "Promote more of your content to your site's visitors."
categories = ["navigation"]
tags = ["links", "retention", "engagement"]
features = ["code highlighter", "snippets", "related content"]
+++

After Dark provides related content to help users find more information that's relevant to them and can increase page views and time spent on your site.

When two or more pages or posts contain the same taxonomy `tags` they will be linked in a section as shown near the bottom of the page. The section appears automatically below [Post Bylines](../post-bylines) with a default maximum of 7 items shown.

{{% hackcss-alert type="info" %}}**Tip:** Create a [Custom Layout](/feature/custom-layouts) to show Related Content outside posts.{{% /hackcss-alert %}}

Adjust the maximum from {{< external href="https://gohugo.io/getting-started/configuration/" text="Site Configuration" />}} by adding `related_content_limit`:

```toml
[params]
  related_content_limit = 5 # limit to 5 items maximum site-wide
```

Remove the setting to return to the default.

See {{< external href="https://gohugo.io/content-management/related/" text="Related Content in Hugo" />}} for additional configuration options.
