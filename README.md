# After Dark

A retro dark theme for the [Hugo](https://gohugo.io/) static site generator.

![Theme screenshot](https://cloud.githubusercontent.com/assets/440298/22641591/4f3166d4-ec92-11e6-9022-de351c1e2938.png "After Dark Hugo in Safari")

> Simplicity is the ultimate sophistication<br>
> --- Leonardo da Vinci

## Demo

Head to [Hack Cabin](http://hackcabin.com) for a production example running on AWS. There you can learn how After Dark is used within the Hack Cabin [site architecture](http://hackcabin.com/post/initial-commit/) as well.

## Features

- Dark theme intended for low-light reading
- Entire page served in a single HTTP request (including favicon)
- Responsive typography optimized for mobile, tablet and desktop
- SEO-optimized using OpenGraph, [Schema Structured Data](https://moz.com/learn/seo/schema-structured-data) and Meta tags
- Google Analytics using the [internal async template](https://gohugo.io/extras/analytics)
- Post comments with [Disqus](https://disqus.com/) using the [internal template](https://gohugo.io/extras/comments)
- Gentle content fade-in using CSS keyframe animation
- Customizable grid layouts and more using [hack.css](http://hackcss.com)
- Post reading time and update notice set user expectations
- Rich post bylines including links to category and tag taxonomy listings, author and word count
- [Block Templates](https://gohugo.io/templates/blocks/) for foolproof layouts
- Extensible [taxonomy terms template](https://gohugo.io/templates/terms)
- Related posts feature to guide readers to similar content
- Configurable [Section Menu](#section-menu) for global site navigation
- Simple list pagination with page indicators
- Optional [Table of Contents for posts](#using-the-table-of-contents)
- Site verification with Google, Bing and Yandex
- Default 404 page with MP4 background video
- Full site keyboard accessibility
- No JavaScript required unless Analytics or Disqus enabled

## Getting started

```shell
brew install hugo
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

Include settings in your site's `config.toml`:

```toml
baseurl = "https://c74ce35e.ngrok.io" # Controls base URL
languageCode = "en-US" # Controls html lang attribute
title = "After Dark" # Homepage title and page title suffix
paginate = 5 # Number of posts to show before paginating
images = [] # Optional, adds a default OpenGraph image

enableRobotsTXT = true # Suggested, enable robots.txt file
googleAnalytics = "" # Optional, add tracking Id for analytics
disqusShortname = "" # Optional, add Disqus shortname for comments
SectionPagesMenu = "main" # Enable menu system for lazy bloggers

[params]
  description = "" # Suggested, controls default description meta
  author = "" # Optional, controls author name display on posts
  show_menu = false # Optional, set false to disable menu entirely
  powered_by = true # Optional, set false to disable credits
```

## Section Menu

Theme uses [Section Menu for Lazy Bloggers](https://gohugo.io/extras/menus/#section-menu-for-the-lazy-blogger) to produce global site navigation, if enabled.

To customize the menu, update the settings in `config.toml` like:

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

Or update the menu using front matter from your pages:

```toml
menu = "main"
weight = 3
```

## Using OpenGraph

After Dark leverages OpenGraph tags using the *undocumented* [internal template](https://github.com/spf13/hugo/blob/95ad3ad2fa3e6f4514166b47b77f051d280c16e9/tpl/template_embedded.go#L161-L204) to achieve rich sharing cards for Facebook and other social networks, as shown here:

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

**Gotcha:** Relative source URLs not currently supported.

## Improving SEO and UX

After Dark is built with SEO in mind. Aside from OpenGraph, Schema Structured Data and SEO meta is applied to give robots what they want, automatically, without any user configuration necessary. This helps ensure your After Dark site will rank well in Search Engine Results Pages (SERPs) and prevent crawlers from indexing of unwanted content.

To fine-tune your SEO, however, the following options are available, all of which are recommended for optimal user experience within search engines.

### Webmaster verifications

After Dark ships with the ability to verify your site with several webmaster tools used for SEO including Google, Bing, Alexa and Yandex. Specific naming conventions were chosen to provide parity with the [jekyll-seo-tag](https://github.com/jekyll/jekyll-seo-tag/). To allow verification of your site with any or all of these providers simply add the following to your `config.toml` and fill in their respective values:

```toml
[params.seo.webmaster_verifications]
  google = "" # Optional, Google verification code
  bing = "" # Optional, Bing verification code
  alexa = "" # Optional, Alexa verification code
  yandex = "" # Optional, Yandex verification code
```

Note that claiming your site with Alexa was [retired in May 2016](https://support.alexa.com/hc/en-us/articles/219135887-Claiming-has-been-retired-May-2016). However, Alexa verification has been added as a convenience for existing sites migrating to After Dark.

### Custom Meta Descriptions

To help your content stand out in SERPs and enable users to [quickly grok the subject matter](https://moz.com/learn/seo/meta-description) add a `description` to the front matter of your post or page:

```toml
description = "Become a Digital Nomad in Bali: The Lost Guide"
```

Descriptions will also be used to accent the content summaries After Dark displays in lists when the site is generated. If no custom description is provided After Dark will fallback to the description provided in `config.toml`.

### Specifying Publish Dates

Let user agents know when posts were last modified. To do so add `publishdate` to your page front matter and update `date` anytime you make an update to a post. Updates will be made visible to readers and search engines alike using visible callouts, Schema Structured Data and via the `lastmod` setting your `sitemap.xml` file.

### Using Link Types

For related content split across multiple pages in a sequence After Dark supports use of `prev` and `next` settings in your front matter. Learn more about [link types](http://devdocs.io/html/link_types).

### Blocking Search Indexing

Just because a page appears in your `sitemap.xml` does not mean you want it to appear in a SERP. Examples of pages which will appear in your `sitemap.xml` that you typically do not want indexed by crawlers include error pages, search pages, legal pages, and pages that simply list summaries of other pages.

Though it's possible to block search indexing from a `robots.txt` file, After Dark makes it possible to block page indexing using Hugo configuration as well. By default the following page types will be blocked:

- Section Pages (e.g. Post listings)
- Taxonomy Pages (e.g. Category and Tag listings)
- Taxonomy Terms Pages (e.g. Pages listing taxonomies)

If you do not like this behavior you may override the defaults by setting `params.noindex_kinds` in your site's `config.toml`, e.g.

```
noindex_kinds = [
  "section",
  "taxonomy",
  "taxonomyTerm"
]
```

To block individual pages from being indexed simply add `nofollow` to your page's front matter and set the value to `true`, like:

```toml
noindex = true
```

And, finally, if you're using Hugo `v0.18` or better, you can also add an `_index.md` file with the `noindex` front matter to control indexing for specific sections:

```shell
├── content
│   ├── modules
│   │   ├── starry-night.md
│   │   └── flying-toilets.md
│   └── news
│       ├── _index.md
│       └── return-flying-toasters.md
```

To learn more about how this works, read [block search indexing with meta tags](https://support.google.com/webmasters/answer/93710).

## Using the Table of Contents

For longer posts its possible to automatically generate a Table of Contents. The feature uses the HTML5 [`details` element](http://devdocs.io/html/element/details) and is opt-in on a per post basis. To add a Table of Contents to a post set the following in the post front matter:

```toml
toc = true
```

To hide the Table of Contents set `toc = false` or simply remove the setting from the post front matter.

## Customizing CSS

To customize CSS without having to tamper with theme files do the following:

1. Create a `critical-custom.css.html` in your site's `layouts/partials directory`.
2. Add your customizations inside a `<style media="screen"></style>` element.

Example customization file:

```html
<style media="screen">
  .hack ul li {
    margin: 0;
  }
</style>
```

Your customizations will automatically be added to generated pages, inline in the document `HEAD`. Thanks to [@rsommerard](https://github.com/rsommerard) for making the suggestion.

## Upgrading hack.css

The specific version of [`hack.css`](hackcss.com) used is _pinned_ in the `package.json` dependency manifest. To check for updates do an `npm i` and run `npm run ncu`.

If an update is available consider taking the automatic update, but keep the version pinned in the manifest. Once the new `hack` dependency version is pulled down to the `node_modules` directory, copy the contents of `hack.css` and `dark.css` into the `critical-vendor.css.html` file.

Once the vendor file is updated pop open your favorite dev tools and test the changes by previewing your site on mobile, tablet and desktop at different display resolutions and orientations. Make any tweaks necessary to the `hack.css` style overrides indicated in `critical-theme.css.html`. And finally adjust any [Customized CSS](#customizing-css).

## Contributing

Issues have been disabled for this repo. If you feel passionate something needs to be changed please feel free to submit a pull with your suggested changes.
