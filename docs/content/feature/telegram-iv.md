+++
title = "Instant Views"
description = "Instantly preview your content from within Telegram."
categories = ["social"]
tags = ["author", "templating"]
features = ["related content"]
+++

Provide an {{< external href="https://instantview.telegram.org/" text="Instant View" />}} for users sharing links to your site on Telegram.

To enable instant views for After Dark create an {{< external href="https://instantview.telegram.org/my/" text="Instant View Template" />}} on the Telegram site using the following template:

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

Preview your result from the Telegram site:

![Telegram Instant View screenshot](data:image/png;base64,{{< include type="image" file="themes/after-dark/images/docs/feat-instant-view-fs8.png" >}} "Example Telegram Instant View for After Dark")

Additionally, if your site has a telegram channel, you can specify it by setting the following in your site config:

```toml
[params.seo]
  telegram_channel = "channelname" # omit the leading `@`
```

Specifying a channel name allows Telegram users to join your channel with a single click from within an Instant View.

See the [Telegram Instant View](https://instantview.telegram.org/docs) docs for additional help and information.
