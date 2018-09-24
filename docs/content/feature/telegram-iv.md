+++
title = "Instant Views"
description = "Instantly preview your content from within Telegram."
categories = ["social"]
tags = ["author", "templating"]
features = ["related content"]
+++

After Dark provides a template guide to enable Telegram Instant Views for posts. Use it to create an {{< external href="https://instantview.telegram.org/my/" text="Instant View Template" />}} on the Telegram site:

```yaml
# enable for items in the post section
?path: /post/.+

# define required elements
title: //*[@itemprop="headline"]
body: //*[@itemprop="articleBody"]

# if cover exists, define images
?exists: //head/meta[@property="og:image"]/@content
cover: //head/meta[@property="og:image"]/@content
image_url: $cover/self::img/@src

# author and post date extracted automatically
```

Preview your results on the Telegram site:

![Telegram Instant View screenshot](/images/instant-view-fs8.png "Example Telegram Instant View for After Dark")

Additionally, if your site has a telegram channel, you can specify it by setting the following in your site config:

```toml
[params.seo]
  telegram_channel = "channelname" # omit the leading `@`
```

Specifying a channel name allows Telegram users to join your channel with a single click from within an Instant View.

See the {{< external href="https://instantview.telegram.org/" text="Instant View on Telegram" />}} for additional information.
