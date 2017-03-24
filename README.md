# After Dark

> A simple, yet highly configurable responsive dark theme for the [Hugo](https://gohugo.io/) static site generator.

![Theme screenshots](https://raw.githubusercontent.com/vhs/after-dark/master/images/minimal-mac.png "After Dark running on a MacBook and iPhone")

## Demo

Head to [Hack Cabin](https://hackcabin.com) for a **production example** running on AWS and to learn more about the JAMstack [site architecture](https://hackcabin.com/post/initial-commit/).

## Features

- [Configurable](#configuring-a-theme-variant) dark theme intended for low-light reading
- Optimized for mobile, tablet, desktop and terminal browsing
- Configurable [Section Menu](#adding-a-section-menu) for global site navigation
- [Intelligent Lazyloading](#using-intelligent-lazyloading) for images and iFrame embeds
- [Related Content](#about-related-content) for increased page views and reader loyalty
- Accessible [Table of Contents](#creating-a-table-of-contents) with smooth scroll
- SEO-optimized using [OpenGraph](https://opg.me), [Schema Structured Data](https://moz.com/learn/seo/schema-structured-data) and Meta tags
- Google Analytics using the [internal async template](https://gohugo.io/extras/analytics)
- Post comments with [Disqus](https://disqus.com/) using the [internal template](https://gohugo.io/extras/comments)
- Post reading time and update notice set user expectations
- Rich post bylines including links to category and tag taxonomy listings, author and word count
- [Block Templates](https://gohugo.io/templates/blocks/) for foolproof layout extensions
- Extensible [taxonomy terms template](https://gohugo.io/templates/terms)
- Simple list pagination with page indicators
- Site verification with Google, Bing Alexa and Yandex
- 404 page with [animated background](https://hackcabin.com/post/after-dark-error-page-redesign/)
- Full site keyboard accessibility

## Getting Started

[Install Hugo](https://gohugo.io/#action) on your machine and use it to create a new site. Instructions for [Homebrew](https://brew.sh/) on macOS:

```shell
brew install hugo
hugo new site flying-toasters && cd $_
```

Clone After Dark and use it to serve your site:

```shell
(cd themes; git clone https://codeberg.org/vhs/after-dark)
hugo serve --theme=after-dark
```

Copy custom archetypes to your site:

```shell
cp themes/after-dark/archetypes/* archetypes
```

Finally, include the settings in your site's `config.toml`:

```toml
baseurl = "https://c74ce35e.ngrok.io" # Controls base URL
languageCode = "en-US" # Controls html lang attribute
title = "After Dark" # Homepage title and page title suffix
paginate = 5 # Number of posts to show before paginating

# theme = "after-dark" # Uncomment to use as default theme

enableRobotsTXT = true # Suggested, enable robots.txt file
googleAnalytics = "" # Optional, add tracking Id for analytics
disqusShortname = "" # Optional, add Disqus shortname for comments
SectionPagesMenu = "main" # Enable menu system for lazy bloggers
footnoteReturnLinkContents = "↩" # Provides a nicer footnote return link

[params]
  description = "" # Suggested, controls default description meta
  author = "" # Optional, controls author name display on posts
  hide_author = false # Optional, set true to hide author name on posts
  show_menu = false # Optional, set true to enable section menu
  powered_by = true # Optional, set false to disable credits
  images = [] # Suggested, controls default OpenGraph images
  theme_variant = "" # Optional, for use to overriding default theme
```

That's it! Everything else is optional. Read on to learn more about specific features and how to customize the theme. And, when you're ready, here are instructions to [run After Dark on AWS with HTTP/2 enabled](https://vhs.codeberg.page/zero-to-http-2-aws-hugo/).

## Adding a Section Menu

Theme uses [Section Menu for Lazy Bloggers](https://gohugo.io/extras/menus/#section-menu-for-the-lazy-blogger) to produce global site navigation, if enabled.

To customize the menu, update the settings in `config.toml` like:

```toml
[[menu.main]]
  name = "Home"
  weight = 1
  identifier = "home"
  url = "/"
[[menu.main]]
  name = "Posts"
  weight = 2
  identifier = "post"
  url = "/post/"
```

Or update the menu using front matter from your pages:

```toml
menu = "main"
weight = 3
```

## Using Intelligent Lazyloading

Lazyloading prioritizes when and how images and more are downloaded, improving perceived performance and reducing page load times. When activated, lazyloading will start working automatically. No JavaScript configuration is necessary.

**What makes it _Intelligent_?** If no lazyloaded content is detected on a page when the site is generated, the feature will not be activated and no additional downloads will occur.

To activate lazyloading with [lazysizes], add `lazyload` to the `class` attribute of your images/iframes in conjunction with a `data-src` and/or `data-srcset` attribute:

```html
<!-- non-responsive -->
<img data-src="image.jpg" class="lazyload">
```

```html
<!-- responsive with automatic sizes calculation -->
<img
  data-sizes="auto"
  data-src="image2.jpg"
  data-srcset="image1.jpg 300w, image2.jpg 600w, image3.jpg 900w"
  class="lazyload">
```

```html
<!-- iframe example -->
<iframe frameborder="0"
  class="lazyload"
  allowfullscreen
  data-src="//www.youtube.com/embed/ZfV-aYdU4uE">
</iframe>
```

Additional information and examples, including how to set-up and use LQIP (Low-Quality Image Placeholders), are available on the [lazysizes] repository on GitHub.

## About Related Content

Promote more of your content to your site visitors. By offering your readers more content that's relevant to them you can increase your site's page views, the time spent on your site and reader loyalty.

Related content surfaces content across sections by matching taxonomy tags. If After Dark finds related content it will automatically output a list of links to that content in reverse chronological order below the byline of your post content.

By default After Dark will display up to 7 items by title along with their reading times. You can limit the number of items displayed by setting the following optional parameter in the `[params]` section of your `config.toml` file:

```toml
related_content_limit = 5
```

## Creating a Table of Contents

Help users locate and share information on your site. By providing a Table of Contents (TOC), users will spend less time scrolling and are more likely to deep link to specific information.

To automatically generate a TOC for a post based on the [page outline](https://gsnedders.html5.org/outliner/), add the following to your post front matter:

```toml
toc = true
```

To hide the TOC set `toc = false`, or simply remove the setting from the post front matter.

After Dark uses the HTML5 [`details`](http://devdocs.io/html/element/details) and [`summary`](http://devdocs.io/html/element/summary) elements to provide a TOC which does not require use of CSS or JavaScript to function.

When a page is first loaded, the TOC will be collapsed so it does not clutter up the page. Once expanded, selecting an item in the TOC will smooth scroll to that section within the document, highlight the section header and updating the browser's location bar for deep linking and back-button support.

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

To configure a site-wide OpenGraph images and fallbacks for posts not specifying their own, add the following to your site parameters in `config.toml` in the `[params]` section:

```toml
images = [
  "https://source.unsplash.com/-09QE4q0ezw/2000x1322" # Default OpenGraph image for site
]
```

Test how things are looking during development using a combination of the [Facebook Sharing Debugger](https://developers.facebook.com/tools/debug/) and [ngrok](https://ngrok.com/).

## Improving SEO and UX

After Dark is built with SEO in mind. Aside from OpenGraph, Schema Structured Data and SEO meta is applied to give robots what they want, automatically, without any user configuration necessary. This helps ensure your After Dark site will rank well in Search Engine Results Pages (SERPs) and prevent crawlers from indexing undesirable content.

Fine-tune your SEO settings using the following available options.

### Webmaster Verification

Verify your site with several webmaster tools including Google, Bing, Alexa and Yandex. To allow verification of your site with any or all of these providers simply add the following to your `config.toml` and fill in their respective values:

```toml
[params.seo.webmaster_verifications]
  google = "" # Optional, Google verification code
  bing = "" # Optional, Bing verification code
  alexa = "" # Optional, Alexa verification code
  yandex = "" # Optional, Yandex verification code
```

**Note:** Claiming your site with Alexa was [retired in May 2016](https://support.alexa.com/hc/en-us/articles/219135887-Claiming-has-been-retired-May-2016). However, Alexa verification has been added as a convenience for existing sites migrating to After Dark.

### Custom Meta Descriptions

Well-crafted page titles help catch the human eye on search results pages. And meta descriptions provide a summary of the content and why its relevant for the reader, driving click-throughs.

To add a custom meta description to your pages and posts add `description` to the front matter:

```toml
description = "Everything you need to know to become a Digital Nomad in Bali."
```

In addition to appearing in search engines, meta descriptions also appear on individual pages and in content summaries in After Dark, adding transparency to how your page will appear in search.

If no custom description is provided After Dark will fallback to the description provided in `config.toml`. Learn more on [how to craft your meta descriptions](https://moz.com/learn/seo/meta-description).

### Specifying Publish Dates

Help user agents know when posts were last modified. To do so add `publishdate` to your page front matter and update `date` anytime you make an update to a post.

Updates will be made visible to readers by surfacing content higher in your page and post listings, and using using visible callouts on content summaries. For robots, making this change will automatically update Schema Structured Data and Web feeds, as well as the `lastmod` setting your `sitemap.xml` file.

You can be specific and use a datetime (with timezone offset) like:

```
date = "2017-02-02T01:20:56-06:00"
publishdate = "2016-11-21T10:32:33+08:00"
```

Or less specific and use just the dates:

```
date = "2017-02-02"
publishdate = "2016-11-21"
```

Review the W3C website for more [information on dates and times](https://www.w3.org/TR/html51/infrastructure.html#dates-and-times) for the Web infrastructure.

### Using Link Types

For related content split across multiple pages in a sequence After Dark supports use of `prev` and `next` settings in your front matter.

Learn more about [link types](http://devdocs.io/html/link_types).

### Blocking Search Indexing

Just because a page appears in your `sitemap.xml` does not mean you want it to appear in a SERP. Examples of pages which will appear in your `sitemap.xml` that you typically do not want indexed by crawlers include error pages, search pages, legal pages, and pages that simply list summaries of other pages.

Though it's possible to block search indexing from a `robots.txt` file, After Dark makes it possible to block page indexing using Hugo configuration as well. By default the following page types will be blocked:

- Section Pages (e.g. Post listings)
- Taxonomy Pages (e.g. Category and Tag listings)
- Taxonomy Terms Pages (e.g. Pages listing taxonomies)

To customize default blocking configure the `noindex_kinds` setting in the `[params]` section of your `config.toml`. For example, if you want to enable crawling for sections appearing in [Section Menu](#adding-a-section-menu) add the following to your configuration file:

```
[params]
  noindex_kinds = [
    "taxonomy",
    "taxonomyTerm"
  ]
```

To block individual pages from being indexed add `nofollow` to your page's front matter and set the value to `true`, like:

```toml
noindex = true
```

And, finally, if you're using Hugo `v0.18` or better, you can also add an `_index.md` file with the `noindex` front matter to control indexing for specific section list layouts:

```shell
├── content
│   ├── modules
│   │   ├── starry-night.md
│   │   └── flying-toilets.md
│   └── news
│       ├── _index.md
│       └── return-flying-toasters.md
```

To learn more about how crawlers use this feature read [block search indexing with meta tags](https://support.google.com/webmasters/answer/93710).

## Customizing CSS

To add your own theme css or override existing CSS without having to change theme files do the following:

1. Create a `critical-custom.css.html` in your site's `layouts/partials directory`.
1. Add your customizations inside a `style` element.

Example customization file:

```html
<style media="screen">
  .hack ul li {
    margin: 0;
  }
</style>
```

Your customizations will automatically be added to generated pages, inline in the document `HEAD`. Thanks to [@rsommerard](https://github.com/rsommerard) for making the suggestion.

If you choose to modify the Hack CSS

## Customizing Markdown Output

Gain more control over markdown conversion to HTML. By modifying the markdown processor settings you can take advantage of [Blackfriday](https://github.com/russross/blackfriday) features not enabled by default.

To customize conversion output add a `[blackfriday]` section to your site's `config.toml` file like so:

```toml
[blackfriday]
  hrefTargetBlank = true
  fractions = false
```

Overrides to theme markdown processing defaults are available from page front matter as well, giving you control on a page-by-page basis.

See the Hugo docs for additional [configuration options](http://gohugo.io/overview/configuration/#configure-blackfriday-rendering).

## Creating Shortcodes

Keep your content <abbr title="Don't Repeat Yourself">DRY</abbr> to improve thematic consistency throughout your site. To help achieve this, Hugo provides [Shortcodes](https://gohugo.io/extras/shortcodes). Shortcodes are very powerful, and can be used to achieve functionality not otherwise available in the markdown processor.

To create your own custom shortcodes add a `layouts/shortcodes` directory to your site and place your shortcodes within. Here's an example shortcode overriding Hugo's [built-in `figure` shortcode](https://gohugo.io/extras/shortcodes#figure) to leverage After Dark's [Intelligent Lazyloading](#using-intelligent-lazyloading) feature and improve display for use with the theme:

```html
<!--{{/*
  Similar to the internal shortcode, but with image lazyloading and
  and adjusted caption title and small caption text.
*/}}-->
<figure {{ with .Get "class" }}class="{{ . }}"{{ end }}>
  {{ with .Get "link" }}<a href="{{ . }}">{{ end }}
    <img class="lazyload" data-src="{{ .Get "src" }}" {{ if or (.Get "alt") (.Get "caption") }}alt="{{ with .Get "alt"}}{{ . }}{{ else }}{{ .Get "caption" }}{{ end }}"{{ end }} />
  {{ if .Get "link" }}</a>{{ end }}
  {{ if or (or (.Get "title") (.Get "caption")) (.Get "attr")}}
  <figcaption>{{ if isset .Params "title" }}
    <header><b>{{ .Get "title" }}</b></header>{{ end }}
    {{ if or (.Get "caption") (.Get "attr")}}
    <small>{{ .Get "caption" }}
    {{ with .Get "attrlink" }}<a href="{{ . }}"> {{ end }}
      {{ .Get "attr" }}
    {{ if .Get "attrlink"}}</a> {{ end }}
    </small>{{ end }}
  </figcaption>
  {{ end }}
</figure>
```

To use it create a file called `figure.html` with the above contents in your `shortcodes` directory and use it like:

```
{{< figure src="/gear/southeast-asia-carry-on-packing-list/" caption="Southeast Asia Carry-On Packing List: Digital Nomad Edition" >}}
```

Reference the Hugo docs for [additional usage instructions](https://gohugo.io/extras/shortcodes#figure), including caption titles, attribution links and more.

## Configuring a Theme Variant

[`hack.css`](hackcss.com) provides a few variants you may wish to use instead of the After Dark defaults. To download them do an `npm i` from `/themes/after-dark/` (assumes NPM installed).

Once downloaded, open `node_modules/hack/dist` directory and replace the CSS contents of `critical-vendor.css.html` with those you wish to use, updating the `theme_variant` setting in the site configuration like:

    theme_variant = "standard dark-grey"

**Why not use external CSS files?** After Dark is optimized for speed, and, as a result, limits the number of HTTP requests whenever possible. This just so happens to be of those occasions.

Once the vendor file is updated, open your favorite dev tools and test the changes by previewing your site on mobile, tablet and desktop at different display resolutions and orientations, making any tweaks necessary to `critical-theme.css.html`.

And, finally, adjust your [Customized CSS](#customizing-css), 404 page and `/meta/theme-color` as necessary.

## Contributing

Issues have been disabled for this repo. If you feel passionate something needs to be changed please feel free to submit a pull with your suggested changes. For a showcase of derivative works head to the [After Dark wiki](https://codeberg.org/vhs/after-dark/wiki#derivative-works).

## License

MIT License 2017 © Comfusion LLC

[lazysizes]: https://github.com/aFarkas/lazysizes
