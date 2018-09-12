+++
title = "Webmaster Tools"
description = "Submit your site to Google, Yandex, Bing and more."
categories = ["search"]
tags = ["SEO", "robots", "metadata"]
features = ["code highlighter", "related content", "snippets"]
+++

Use homepage `meta` to verify your site with Google, Bing, Alexa and Yandex. All verifications are optional and [some not required](#submit-manually) to get your site listed.

To verify with any of the available providers add the following to your {{< external href="https://gohugo.io/getting-started/configuration/" text="Site Configuration" />}} and fill in the value given to you by the provider:

```toml
[params.seo.webmaster_verifications]
  google = "" # https://search.google.com/search-console
  bing = "" # https://www.bing.com/toolbox/webmaster/
  alexa = "" # claiming retired (see note below)
  yandex = "" # https://webmaster.yandex.com/
```

{{< hackcss-alert type="info" >}}
<strong>Note:</strong> Claiming your site with Alexa {{< external text="was retired" href="https://support.alexa.com/hc/en-us/articles/219135887-Claiming-has-been-retired-May-2016" />}} in May 2016.
{{< /hackcss-alert >}}

Remove verifications you don't need or no longer use.

## Submit manually

Manually submit your Sitemap for search indexing.

{{< hackcss-form target="_blank" action="https://www.google.com/webmasters/tools/ping" >}}
  {{< hackcss-formgroup >}}
    {{< hackcss-label for="google" text="Google:" />}}
    {{< hackcss-textinput id="google" name="sitemap" placeholder="https://domain.example/sitemap.xml" >}}
  {{< /hackcss-formgroup >}}
{{< /hackcss-form >}}
{{< hackcss-form target="_blank" action="https://bing.com/webmaster/ping.aspx" >}}
  {{< hackcss-formgroup >}}
    {{< hackcss-label for="bing" text="Bing:" />}}
    {{< hackcss-textinput id="bing" name="siteMap" placeholder="https://domain.example/sitemap.xml" >}}
  {{< /hackcss-formgroup >}}
{{< /hackcss-form >}}
