# After Dark

A retro dark theme for the [Hugo](https://gohugo.io/) static site generator.

![After Dark for Hugo theme screenshot](https://cloud.githubusercontent.com/assets/440298/22617041/a7a9491a-eaf5-11e6-9acd-15da80cb9e71.png)

> Simplicity is the ultimate sophistication<br>
> --- Leonardo da Vinci

## Demo

Head to [Hack Cabin](http://hackcabin.com) for a production example running on AWS. There you can learn how After Dark is used within the Hack Cabin [site architecture](http://hackcabin.com/post/initial-commit/) as well.

## Features

- Dark theme intended for low-light reading
- Entire page served in a single HTTP request (including favicon)
- Grid layouts and more using [hack.css](hackcss.com)
- Responsive typography optimized for mobile, tablet and desktop
- Gentle content fade-in using CSS keyframe animation
- [Schema.org Structured Data](https://moz.com/learn/seo/schema-structured-data) for site nav and posts
- OpenGraph tags using the *undocumented* [internal template](https://github.com/spf13/hugo/blob/95ad3ad2fa3e6f4514166b47b77f051d280c16e9/tpl/template_embedded.go#L161-L204)
- Facebook share author name attribution using `meta name="author"`
- Google Analytics using the [internal async template](https://gohugo.io/extras/analytics)
- Post comments with [Disqus](https://disqus.com/) using the [internal template](https://gohugo.io/extras/comments)
- Rich post bylines including links to category and tag taxonomy listings, author, word count and reading time
- [Block Templates](https://gohugo.io/templates/blocks/) for foolproof layouts
- Extensible [taxonomy terms template](https://gohugo.io/templates/terms)
- Related posts feature guides users to similar content
- Configurable [menu system](https://gohugo.io/extras/menus/) for global site navigation
- Simple list pagination with page indicators
- Custom page meta descriptions and rel meta for SEO control
- Site verification with Google, Bing and Yandex
- Default 404 page with MP4 background video
- Full site keyboard accessibility
- No JavaScript required unless Analytics or Disqus enabled

## Getting started

[Install Hugo](https://gohugo.io/#action) and create a new site:

```shell
brew update && brew install hugo
hugo new site flying-toasters && cd $_
```

Clone the theme and use it to serve your site:

```shell
(cd themes; git clone git@github.com:vhs/after-dark.git)
hugo serve --theme=after-dark
```

Copy the custom archetypes to your site:

```shell
cp themes/after-dark/archetypes/* archetypes
```

And include the following in your site's `config.toml`:

```toml
baseurl = "https://c74ce35e.ngrok.io" # Controls base URL
languageCode = "en-US" # Controls html lang attribute
title = "After Dark" # Homepage title and page title suffix
paginate = 5 # Number of posts to show before paginating

enableRobotsTXT = true # Suggested, enable robots.txt file
googleAnalytics = "" # Optional, add tracking Id for analytics
disqusShortname = "" # Optional, add Disqus shortname for comments
SectionPagesMenu = "main" # Enable menu system for lazy bloggers

[params]
  description = "" # Suggested, controls homepage description meta
  author = "" # Optional, controls author name display on posts
  show_menu = false # Optional, set false to disable menu entirely
  powered_by = true # Optional, set false to disable credits

  [params.seo]
    google_verify = "" # Optional, Google verification code
    bing_verify = "" # Optional, Bing verification code
    yandex_verify = "" # Optional, Yandex verification code
```

Configure menu in `config.toml` if desired:

```toml
[menu]
  [[menu.main]]
    name = "Home"
    weight = 0
    identifier = "home"
    url = "/"
  [[menu.main]]
    name = "Posts"
    weight = 1
    identifier = "post"
    url = "/post/"
```

Or add pages to the menu using front matter:

```toml
menu = "main"
weight = 3
```

## Using OpenGraph

To use OpenGraph to achieve rich sharing cards for Facebook, as shown here:

![OpenGraph image with author attribution](https://cloud.githubusercontent.com/assets/440298/22554715/156ba7f0-e99c-11e6-9d5b-14f0ac4fe496.png)

Specify `author` in `config.toml` and, optionally, override it from your post front matter:

```toml
title = "Become a Digital Nomad in Bali: The Lost Guide"
description = "Everything you need to know to become a Digital Nomad in Bali."
author = "After Dark"
date = "2017-02-02T11:57:24+08:00"
publishdate = "2017-01-28T02:31:22+08:00"
images = [
  "https://source.unsplash.com/-09QE4q0ezw/2000x1322"
]
```

To configure a site-wide OpenGraph image and fallback for posts not specifying their own, add the following to your site parameters in `config.toml` in the `[params]` section:

```toml
images = [
  "https://source.unsplash.com/-09QE4q0ezw/2000x1322" # Optional, OpenGraph image for Node types
]
```

Test how things are looking during development using a combination of the [Facebook Sharing Debugger](https://developers.facebook.com/tools/debug/) and [ngrok](https://ngrok.com/).

**Gotcha:** Relative source URLs are not currently permitted.

## Upgrading hack.css

The specific version of [`hack.css`](hackcss.com) used is _pinned_ in the `package.json` dependency manifest. To check for updates do an `npm i` and run `npm run ncu`.

If an update is available consider taking the automatic update, but keep the version pinned in the manifest. Once the new `hack` dependency version is pulled down to the `node_modules` directory, copy the contents of `hack.css` and `dark.css` into the `critical-vendor.css.html` file.

Once the vendor file is updated pop open your favorite dev tools and test the changes by previewing your site on mobile, tablet and desktop at different display resolutions and orientations. Make any tweaks necessary to the `hack.css` style overrides indicated in `critical-custom.css.html`.

## Contributing

Issues have been disabled for this repo. If you feel passionate something needs to be changed please feel free to submit a pull with your suggested changes.
