# After Dark

> A deceptively simple dark theme for [Hugo](https://gohugo.io/).

[![Latest NPM version](https://img.shields.io/npm/v/after-dark.svg?style=flat-square)](https://www.npmjs.com/package/after-dark)
[![NPM downloads per month](https://img.shields.io/npm/dm/after-dark.svg?style=flat-square)](https://www.npmjs.com/package/after-dark)
[![Minimum Hugo version](https://img.shields.io/badge/hugo->%3D%200.44-FF4088.svg?style=flat-square)](https://gohugo.io)
[![Telegram chat](https://img.shields.io/badge/chat-telegram-32AFED.svg?style=flat-square)][1]
[![WTFPL licensed](https://img.shields.io/npm/l/after-dark.svg?style=flat-square&longCache=true)](https://codeberg.org/vhs/after-dark/src/branch/master/COPYING)

![After Dark screenshots](https://codeberg.org/vhs/after-dark/raw/branch/master/images/docs/minimal-mac.png)

## Demo & Tutorial

Visit [Hack Cabin](https://hackcabin.com) for a production example of which the [site architecture](https://hackcabin.com/post/initial-commit/#site-architecture) can be recreated using a [step-by-step guide](https://vhs.codeberg.page/zero-to-http-2).

## Features

The following table outlines key features which differentiate After Dark for other themes.

Feature | Summary
--------|--------
[Quick Installer](#getting-started) | After Dark provides a cross-platform quick installer. One command is all you need to start creating a website.
[Module System](#module-system) | Add more functionality to your site. After Dark includes a module system and a number of custom-built modules designed to compliment the theme.
[Theme Variants](#theme-variants) | Choose from one of three dark color pallets and two different display modes. Toggle between them anytime directly from your site configuration.
[Fuzzy Search](#fuzzy-search) | Find crawlable content anywhere on your site. After Dark includes a custom search app built with [Vue](https://vuejs.org/), [Fuse](http://fusejs.io/) and [Mark](https://markjs.io). No registration necessary.
[Syntax Highlighting](#syntax-highlighting) | Share code with style. After Dark automatically highlights code written more than 160 languages and doesn't require any JavaScript to do it.
[Post Images](#post-images) | Easily add performance-optimized, responsive post images without fiddling around with an image editor or touching a single line of code.
[Lazy Loading](#lazy-loading) | Decrease page load time and improve user experience on slower connections. After Dark includes [lazysizes](https://github.com/aFarkas/lazysizes) for dead simple lazy-loading of images, scripts, iFrames and more.
[Social Engagement](#social-engagement) | After Dark provides automatic and configurable [Open Graph](http://ogp.me/) support, Twitter Cards and Telegram Instant View template to make social shares pop like 37 pieces of flair.
[Search Optimization](#search-optimization) | Using [Schema Structured Data](https://moz.com/learn/seo/schema-structured-data) and meta tags, After Dark gives crawlers rich data about the site structure and content. No configuration required.
[Personalization](#personalization) | Tweak CSS using the purpose-built [customization file](#custom-styles). Swap in [your own favicon](#favicon). Leverage [block templates](https://gohugo.io/templates/blocks) to quickly extend new custom layouts. And use [hack.css](https://hackcss.egoist.moe/dark.html) flexbox grids and CSS components to add style your site.
[Code Snippets](#code-snippets) | After Dark provides a number of reusable code snippets for adding things like tweets, [coubs](https://coub.com), blockquotes, figures, [hackcss components](https://hackcss.egoist.moe/) and more. Use them to create completely custom layouts or simply spice up an existing document.
[Related Content](#related-content) | Promote more of your content to your site visitors. By offering your readers more content that's relevant to them you can increase your site's page views, the time spent on your site and reader loyalty.
[Table of Contents](#table-of-contents) | Help users locate and share information in long posts. By providing a Table of Contents, users will spend less time scrolling to locate information in larger documents and are more likely to deep link to specific information on a page.
[Modification Dating](#modification-dating) | Surface recently updated content to users and crawlers, allowing them to understand when a post or page was was last modified. Recently updated posts will be flagged as modified and visually lifted upwards in chronological listings.
[Taxonomy Pages](https://gohugo.io/content-management/taxonomies) | Help users discover taxonomic content. After Dark automatically generates taxonomy and taxonomy terms pages and links to them in post bylines.
[Error Page](https://hackcabin.com/post/after-dark-error-page-redesign/) | Decrease bounce rate when URL errors occur. After Dark provides an engaging 404 page with animated background.
Post Bylines | Rich post bylines include optional author name, word count, links to taxonomy pages and metadata for search engines.

## Getting Started

First [Install Hugo](https://gohugo.io/getting-started/installing) and, optionally, [elinks] on your machine. Instructions for installing both using [Homebrew](https://brew.sh/) on macOS:

```shell
brew install hugo elinks
```

Then run the quick install script located in `bin/install`, or just paste this into a terminal and press <kbd>Enter</kbd>:

```shell
wget -qO - https://codeberg.org/vhs/after-dark/raw/branch/master/bin/install | sh
```

Installation should complete in a matter of seconds. If you have `elinks` installed your site will open automatically for [terminal browsing](https://codeberg.org/vhs/after-dark/src/branch/master/images/docs/feat-terminal-browsing-fs8.png).

After installation use the [`hugo new`](https://gohugo.io/commands/hugo_new/) command to create content and [`hugo server`](https://gohugo.io/commands/hugo_server/) to see your content locally. To view your content online run the included preview script from your site directory:

```sh
cd flying-toasters && ./themes/after-dark/bin/preview
```

Preview starts a hugo server and connects to [Serveo](https://serveo.net) using an SSH tunnel to expose your local server to the internet. You must have an ssh server such as [dropbear](https://matt.ucc.asn.au/dropbear/dropbear.html) or similar installed for this to work.

## Customizing

### Module System

After Dark uses Hugo [Theme Components](https://gohugo.io/themes/theme-components/) to provide optional add-on modules. Each module is packaged using NPM for convenience. A summary of available modules can be found in the following table. Got an idea for a new module? Drop into the [Telegram chatroom][1] and let it be known.

Module Name | Difficulty | Latest Version | Description
---|---|---|---
[Fractal Forest] | Easy | [![Latest NPM version](https://img.shields.io/badge/dynamic/json.svg?url=https://codeberg.org/vhs/fractal-forest/raw/branch/master/package.json&label=vers&query=$.version&colorB=000000&style=for-the-badge&longCache=true&maxAge=86400)](https://codeberg.org/vhs/fractal-forest.git) | Better Portable Graphics (Preinstalled)
[Voyeur] | Medium | [![Latest NPM version](https://img.shields.io/badge/dynamic/json.svg?url=https://codeberg.org/vhs/voyeur/raw/branch/master/package.json&label=vers&query=$.version&colorB=000000&style=for-the-badge&longCache=true&maxAge=86400)](https://codeberg.org/vhs/voyeur.git) | Fathom Analytics
[Hall of Mirrors] | Easy | [![Latest NPM version](https://img.shields.io/badge/dynamic/json.svg?url=https://codeberg.org/vhs/hall-of-mirrors/raw/branch/master/package.json&label=vers&query=$.version&colorB=000000&style=for-the-badge&longCache=true&maxAge=86400)](https://codeberg.org/vhs/hall-of-mirrors.git) | PhotoSwipe Image Gallery

### Section Menu

After Dark uses Hugo's [Section Menu for Lazy Bloggers](https://gohugo.io/templates/menu-templates/#section-menu-for-lazy-bloggers) to produce global site navigation, if enabled.

To customize the section menu add and adjust settings in `config.toml` like:

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

Alternatively, update the menu from your content front matter like:

```toml
menu = "main"
weight = 3
```

Finally, the menu can be disabled from site config anytime:

```toml
[params]
  show_menu = false
```

See Hugo's [Menu docs](https://gohugo.io/content-management/menus/) for more information.

### Syntax Highlighting

After Dark automatically highlights code written in more than 160 languages using a customized version of [One Dark Syntax](https://atom.io/themes/one-dark-syntax) with full color display support in terminal browsers.

To activate the syntax highlighter simply use the [`highlight` shortcode](https://gohugo.io/content-management/syntax-highlighting/#highlight-shortcode) or indicate the [highlighting language](https://gohugo.io/content-management/syntax-highlighting/#list-of-chroma-highlighting-languages) with a fenced code block from within your page content, e.g. ```` ```rust ````

![Syntax Highlighting screenshot](https://codeberg.org/vhs/after-dark/raw/branch/master/images/docs/feat-syntax-highlighting-fs8.png "Example JavaScript highlighting with line numbers.")

If you'd prefer a lighter background color create a file called `syntax.css` in your site `static/css` folder and drop in the contents of one of the following:

- [`dark.css`](https://cdn.jsdelivr.net/npm/atom-one-chroma/dist/dark.css) `#282c34` colored background
- [`light.css`](https://cdn.jsdelivr.net/npm/atom-one-chroma/dist/light.css) `#fafafa` colored background

Alternatively, roll your own syntax using the [syntax roller](https://codeberg.org/vhs/atom-one-chroma) purpose-built for use with After Dark.

Reference the Hugo [Syntax Highlighting](https://gohugo.io/content-management/syntax-highlighting/) docs for additional information.

### Fuzzy Search

Find content site-wide in the blink of an eye. JavaScript fuzzy search is at your fingertips. To use it simply create a section called `search` using the After Dark search layout like so:

```
└── content
    └── search
        └── _index.md
```

With `_index.md` like:

```
+++
title = "Search"
layout = "search"
noindex = true
+++
```

Then tell Hugo to output an `index.json` file along with your site when building by adding the following to the config:

```
[outputs]
  home = ["HTML", "RSS", "JSON"]
  section = ["HTML", "RSS", "JSON"]
```

**Note:** If you don't see `index.json` in your `public` folder after building try running a `hugo --gc` to cajole the generator into creating the JSON file.

After that navigate to the `/search/` path on your site and let the fun begin.

**Tip:** Consider enabling the After Dark [section menu](#section-menu) to expose the search section to users.

While deep link searches are supported, please note Fuzzy Search will only return results for [Regular Pages](https://gohugo.io/variables/site/#site-variables-list) and intentionally omits any page tagged for [index blocking](#index-blocking). In other words it's easy to find stuff. But only if you want it to be found.

### Post Images

Bring your words to life with post images. Post images appear above post content and leverage Hugo's inbuilt [Image Processing](https://gohugo.io/content-management/image-processing/) to enable automatic cropping and image positioning.

Because post images are often one of the first things users see when visiting your site After Dark takes some extra steps to load them in a performant manner. Techniques used to speed up image loading include [Low-Quality Image Placeholders](https://www.afasterweb.com/2016/08/31/low-quality-blur-in/), [Lazy Loading](#lazy-loading) and responsive images using the `srcset` and `sizes` attributes.

Using post images requires some opinion with regard to the structure of your content. To create a post with a post image you must:

1. Create a [Page Bundle](https://gohugo.io/content-management/page-bundles/) grouping your desired image together with your post content.
2. Specify the [Resources Metadata](https://gohugo.io/content-management/page-resources/#resources-metadata-toml-example) in the post front matter and set the `name` property to `"header"`.

An example page bundle might look like:

```
└── post
    └── secure-your-digital-life
        ├── images
        │   └── florian-klauer-119557-unsplash.jpg
        └── index.md
```

With the following front matter specified in `index.md`:

```
[[resources]]
  src = "images/florian-klauer-119557-unsplash.jpg"
  name = "header"
```

That's it! After Dark does the rest.

### Lazy Loading

Lazy loading prioritizes when and how images and more are downloaded, improving perceived performance and reducing page load times. Lazy loading will start working automatically. No configuration is necessary.

To activate lazy loading with [lazysizes], add `lazyload` to the `class` attribute of your images/iframes in conjunction with a `data-src` and/or `data-srcset` attribute:

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

After Dark includes a _Shortcode_ taking advantage of this feature, enabling you to easily create [lazy-loaded `figure` elements](#code-snippets) within your markdown content.

Additional information and examples, including how to set-up and use LQIP (Low-Quality Image Placeholders), are available on the [lazysizes] repository on GitHub.

### Related Content

Promote more of your content to your site visitors. By offering your readers more content that's relevant to them you can increase your site's page views, the time spent on your site and reader loyalty.

Related content surfaces content across sections by matching taxonomy tags. If After Dark finds related content, it will automatically output a list of links to that content in reverse chronological order below the byline of your post content.

By default After Dark will display up to 7 items by title along with their reading times. You can limit the number of items displayed by setting the following optional parameter in the `[params]` section of your `config.toml` file:

```toml
related_content_limit = 5
```

Learn more about [Related Content in Hugo](https://gohugo.io/content-management/related/), including configuration options you may wish to add to your site.

### Table Of Contents

Help users locate and share information on your site. By providing a <abbr title="Table Of Contents">TOC</abbr>, users will spend less time scrolling to locate information in larger documents and are more likely to deep to specific information on a page.

To automatically generate a TOC for a post based on the [page outline](https://gsnedders.html5.org/outliner/), add the following to your post front matter:

```toml
toc = true
```

To hide the TOC set `toc = false`, or simply remove the setting from the post front matter.

After Dark uses the HTML5 [`details`](http://devdocs.io/html/element/details) and [`summary`](http://devdocs.io/html/element/summary) elements to provide a TOC which does not require use of CSS or JavaScript to function.

When a page is first loaded, the TOC will be collapsed so it does not clutter up the page. Once expanded, selecting an item in the TOC will smooth scroll to that section within the document, highlight the section header and updating the browser's location bar for deep linking and back-button support.

### Social Engagement

Increase user engagement when sharing links on social media.

#### Open Graph

After Dark leverages Open Graph tags using the *undocumented* [internal template](https://github.com/spf13/hugo/blob/142558719324aa1628541d556ef1fa2d123f1e68/tpl/tplimpl/template_embedded.go#L159-L201) to achieve rich sharing cards for Facebook and other social networks, as shown here:

![Open Graph sharing card screenshot](https://codeberg.org/vhs/after-dark/raw/branch/master/images/docs/feat-social-awareness-fs8.png "Example Open Graph sharing card produced by After Dark")

To create a social sharing card like the one shown above, specify `author` in `config.toml` and, optionally, override it from your front matter as shown here:

```toml
title = "Become a Digital Nomad in Bali: The Lost Guide"
description = "Everything you need to know to become a Digital Nomad in Bali."
author = "Bali Bebas!"
date = "2017-02-02T11:57:24+08:00"
publishdate = "2017-01-28T02:31:22+08:00"
images = [
  "https://source.unsplash.com/-09QE4q0ezw/2000x1322"
]
```

**Why use array notation for one image?** [The Open Graph protocol](http://ogp.me) supports [arrays](http://ogp.me/#array) and users may wish to extend Hugo internal templates to do so.

To configure site-wide Open Graph images to use as fallbacks for posts not specifying their own open graph images, add an array of URLs to the `[params]` section in `config.toml`:

```toml
images = [
  "https://source.unsplash.com/-09QE4q0ezw/2000x1322" # Default Open Graph image for site
]
```

Or, if using [Page Bundles](https://gohugo.io/content-management/page-bundles/), specify the relative path to an image resource for the page:

```toml
images = [
  "/post/post-title/images/lana-abie-581813-unsplash.jpg"
]
```

Images stored in bundles can be grouped together with content (i.e. `/post-title/images/*`) or kept together in a [headless bundle](https://gohugo.io/content-management/page-bundles/#headless-bundle) (e.g. `content/uploads`) and reused anywhere on your site.

See [Unsplash Source](https://source.unsplash.com/) for image configuration options for images sourced externally or copied from Unsplash.

#### Twitter Cards

Optimize tweets with Twitter Cards. After Dark leverages the Hugo [internal template](https://gohugo.io/templates/internal/#the-internal-templates) for Twitter to provide large preview images in addition to associating shares with the site creator.

See the Hugo [Internal Templates documentation](https://gohugo.io/templates/internal/#the-internal-templates) for more information.

#### Telegram Instant View

Improve the experience for Telegram users by providing an [Instant View](https://instantview.telegram.org/). After Dark makes easy.

![Open Graph sharing card screenshot](https://codeberg.org/vhs/after-dark/raw/branch/master/images/docs/feat-instant-view-fs8.png "Example Telegram Instant View for After Dark")

To create an Instant View for your site simply [create your own](https://instantview.telegram.org/my/) IV template modeling from the example here:

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

Additionally, if your site has a telegram channel, you can specify it by setting the following in your site config:

```toml
[params.seo]
  telegram_channel = "channelname" # omit the `@`
```

Specifying a channel name allows Telegram users to join your channel with a single click from within an Instant View.

See the [Telegram IV docs](https://instantview.telegram.org/docs) for additional information.

### Search Optimization

After Dark is built with SEO in mind. Schema Structured Data and other meta are applied to give robots what they want, automatically, without any configuration necessary.

The default set-up helps ensure your After Dark site will rank well in <abbr title="Search Engine Results Pages">SERP</abbr>s and prevent search crawlers from indexing undesirable content. Fine-tune your search settings using the following available options.

#### Webmaster Verification

Verify your site with several webmaster tools including Google, Bing, Alexa and Yandex. To allow verification of your site with any or all of these providers simply add the following to your `config.toml` and fill in their respective values:

```toml
[params.seo.webmaster_verifications]
  google = "" # Optional, Google verification code
  bing = "" # Optional, Bing verification code
  alexa = "" # Optional, Alexa verification code
  yandex = "" # Optional, Yandex verification code
```

**Note:** Claiming your site with Alexa was [retired in May 2016](https://support.alexa.com/hc/en-us/articles/219135887-Claiming-has-been-retired-May-2016). However, Alexa verification has been added as a convenience for existing sites migrating to After Dark.

#### Meta Descriptions

Well-crafted page titles help catch the human eye on search results pages and meta descriptions provide a summary of the content and why its relevant for the reader, driving click-throughs.

To add a custom meta description to your pages and posts add `description` to the front matter:

```toml
description = "Everything you need to know to become a Digital Nomad in Bali."
```

In addition to appearing in search engines, meta descriptions also appear on individual pages and in content summaries in After Dark, adding transparency to how your page will appear in search.

If no custom description is provided, After Dark will fallback to the description provided in `config.toml`. Learn more on [how to craft your meta descriptions](https://moz.com/learn/seo/meta-description).

#### Modification Dating

Help user agents know when posts were last modified. To do so add `publishdate` to your page front matter and update `date` anytime you make an update to a post.

Updates will be made visible to readers by surfacing content higher in your page and post listings and by using visible callouts on content summaries. For robots, making this change will automatically update Schema Structured Data and Web feeds, as well as the `lastmod` setting in your `sitemap.xml` file.

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

In addition to `date` and `publishdate`, it's also possible to set an expiry date. Expired posts will automatically disappear when the site is built, but the content will be retained. To future- or back-date content for expiration, set the `expirydate` field in the front matter.

#### Index Blocking

Just because a page appears in your `sitemap.xml` does not mean you want it to appear in a SERP. Examples of pages which will appear in your `sitemap.xml` that you typically do not want indexed by crawlers include error pages, search pages, legal pages, and pages that simply list summaries of other pages.

Though it's possible to block search indexing from a `robots.txt` file, After Dark makes it possible to block page indexing using Hugo configuration as well. By default the following page types will be blocked:

- Section Pages (e.g. Post listings)
- Taxonomy Pages (e.g. Category and Tag listings)
- Taxonomy Terms Pages (e.g. Pages listing taxonomies)

To customize default blocking configure the `noindex_kinds` setting in the `[params]` section of your `config.toml`.

For example, if you want to enable crawling for sections appearing in [Section Menu](#adding-a-section-menu), add the following to your configuration file:

```
[params]
  noindex_kinds = [
    "taxonomy",
    "taxonomyTerm"
  ]
```

To block individual pages from being indexed add `noindex` to your page's front matter and set the value to `true`, like:

```toml
noindex = true
```

And, finally, if you're using Hugo `v0.18` or newer, you can also add an `_index.md` file with the `noindex` front matter to control indexing for specific section list layouts:

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

#### Referrer Policy

Resource requests such as images and scripts typically send an HTTP header containing the location where the request originated. Most of the time this is okay. But sometimes it's not. Sometimes the referrer header is used to censor information or even perform [spear phishing](https://en.wikipedia.org/wiki/Phishing#Spear_phishing) attacks. Perhaps more importantly, transmission of the referrer header can present a privacy concern when transmitted to external sites. But not in After Dark.

After Dark leverages [Referrer Policy](https://w3c.github.io/webappsec-referrer-policy/) to increase security and privacy beyond browser defaults by preventing spec-compliant browsers from passing referrer data when making cross-origin requests.

If you wish to relax the security policy for whatever reason you may do so by:

- Setting the [`referrerpolicy`](https://w3c.github.io/webappsec-referrer-policy/#referrer-policy-delivery-referrer-attribute) by HTML attribute;
- Override the policy using a [nested browsing context](https://w3c.github.io/webappsec-referrer-policy/#referrer-policy-delivery-nested); or,
- Override the page-level default specified by After Dark.

To override the page-level default of [`same-origin`](https://w3c.github.io/webappsec-referrer-policy/#referrer-policy-same-origin) add/adjust the following config when building your site:

```
[params.seo]
  referrer = "same-origin"
```

For a list of possible values and their meanings please see W3C's [Referrer Policy](https://w3c.github.io/webappsec-referrer-policy/).

#### Link Types

For related content split across multiple pages in a sequence After Dark supports use of `prev` and `next` settings in your front matter. Use them to provide semantic relationships between pages in a segmented article or series or [LiveBlogPosting](https://schema.org/LiveBlogPosting).

```toml
prev = "/series/learn-to-code/part-one/"
next = "/series/learn-to-code/part-three/"
```

Link Types are commonly shown at the top of the page in terminal browsers as auxiliary means of navigation and may help crawlers better understand relationships within your content.

Learn more about [link types](http://devdocs.io/html/link_types) and how to [customize Hugo taxonomies](https://gohugo.io/taxonomies/overview/).

#### Meta Keywords

Meta keywords offer semantic detail to crawlers regarding the subject matter of your content. Keywords meta are generated automatically for pages given the tags used for that page, and for other pages using the site categories taxonomy. Keywords and key phrases may be customized by setting a `keywords` array in your front matter:

```toml
keywords = [
  "web development",
  "digital marketing",
  "social media",
  "link building"
]
```

While not considered relevant to some crawlers, keywords can be a useful way to document target search terms for use in <abbr title="Pay-Per-Click">PPC</abbr> online advertising and provide semantic value to your pages.

### Markdown Output

Gain more control over markdown conversion to HTML. By modifying the markdown processor settings you can take advantage of [Blackfriday](https://github.com/russross/blackfriday) features not enabled by default.

To customize conversion output add a `[blackfriday]` section to your site's `config.toml` file like so:

```toml
[blackfriday]
  hrefTargetBlank = true
  fractions = false
```

Overrides to theme markdown processing defaults are available from page front matter as well, giving you control on a page-by-page basis.

See the Hugo docs for additional [configuration options](http://gohugo.io/overview/configuration/#configure-blackfriday-rendering).

### Code Snippets

Snippets are reusable bits of code you can sprinkle across your site to reduce repetition and improve consistency. After Dark provides a number of snippets in the form of [hackcss components](https://hackcss.egoist.moe/) and [Hugo Shortcodes](https://gohugo.io/extras/shortcodes) to help make your site easier to maintain.

Take for example the After Dark `blockquote` shortcode:

```html
<blockquote {{ with .Get "class" }}class="{{ . }}"{{ end }} {{ with .Get "citelink" }}cite="{{ . }}"{{ end }}>
  {{ .Inner }}
  {{ with .Get "citelink" }}
    <cite><a target="_blank" href="{{ . }}">{{ $.Get "cite" }}</a></cite>
  {{ else }}
    <cite>{{ .Get "cite" }}</cite>
  {{ end }}
</blockquote>
```

Rather than repeating the HTML to create a blockquote in your content simply call the shortcode from your markdown files like so:

```html
{{< blockquote cite="Bitly" citelink="https://bitly.is/2mkxskj" >}}
  <p>When you create your own Branded Short Domain, you can expect to see up to a 34% increase in CTR when compared to standard bit.ly links.</p>
{{< /blockquote >}}
```

Included are a number of shortcodes for hackcss components designed to work across all [theme variants](#theme-variants):

- `hackcss-alert` - Provides themed alert boxes. See `hackcss-alert.html` for usage notes.
- `hackcss-button` - Provides themed buttons. See `hackcss-button.html` for usage notes.
- `hackcss-buttongroup` - Allows buttons to be grouped together. See `hackcss-buttongroup.html` for usage notes.
- `hackcss-card` - Provides themed card element. See `hackcss-card.html` for usage notes.
- `hackcss-progress` - Provides themed progress meter. See `hackcss-progress.html` for usage notes.
- `hackcss-throbber` - Provides themed loading indicator. See `hackcss-throbber.html` for usage notes.

Because Hugo doesn't support the use of shortcodes outside of markdown files the After Dark hackcss components were created using partial _components_, enabling reuse in both your content as well as your [personalized layouts](#personalization).

Additional theme-provided shortcodes at your disposal:

- `privacytube` – It's YouTube. But without cookies and UI cruft.
- `coub` - GIFs with sound. Think of it like YouTube for video loops.
- `figure` - Similar to the Hugo built-in, but with [Lazy Loading](#lazy-loading), an adjusted caption title and smaller caption text.

To create your own custom shortcodes add a `layouts/shortcodes` directory to your site, place your shortcodes within and start using them in your markdown content. To create or override provided components add a `layouts/partials/components` directory to your site and reference the theme-provided files as you hack away.

Reference the Hugo docs for [shortcode usage instructions](https://gohugo.io/content-management/shortcodes/#using-a-shortcode) and see the inline documentation within each shortcode for example usage instructions.

### Personalization

After Dark uses [hack.css](https://hackcss.egoist.moe/dark.html) to automatically style your markup, giving you instant access to flexbox grids, several dark theme variants, and other pre-built components. Use them while creating new [sections](#section-menu) leveraging [block templates](https://gohugo.io/templates/blocks). Additional personalization options listed below.

#### Theme Variants

Customize the look and feel of your site using theme variants. After Dark provides three dark color palettes and two display modes. Toggle between them anytime directly from your site configuration.

The default theme variant uses the `dark` color palette with the `hack` display mode. To modify it add the following to your site configuration and choose one of the available options:

```toml
[params.hackcss]
  disabled = false # Optional, set true to disable hackcss styles
  mode = "hack" # Optional, choose from 'hack' and 'standard'
  palette = "dark" # Optional, choose from 'dark', 'dark-grey' and 'solarized-dark'
```

Once updated review the included 404 page and `theme-color.html` partial and tweak your site using [Custom Styles](#custom-styles) and, if you desire even more control, [site-level overrides](https://gohugo.io/templates/lookup-order/).

#### Custom Styles

Easily add and customize styles without modifying the theme simply by overriding styles in your site. To get started:

1. Create a file named `custom.css` in your site's `assets/css` directory. If the directory does not exist yet, simply create it.
2. Add your custom styles inside the file and rebuild your site.

For example, to center figure elements, constrain the width and adjust their link styles add the following to your `custom.css`:

```css
figure {
  margin-left: auto;
  margin-right: auto;
  text-align: center;
}
figure img {
  max-width: 80%;
}
figure a {
  border-bottom: none !important;
}
figure a:hover {
  background-color: inherit !important;
}
```

**Note:** After Dark ships with some example customizations. If you would like to keep these, copy the styles from the theme's version of `custom.css` into your site-level `custom.css` file after creating it.

Custom styles will be automatically be concatenated into a `style` element in the document `head` along with theme and vendor styles. See the [Asset Bundling](https://gohugo.io/hugo-pipes/bundling/) section of the [Hugo Pipes](https://gohugo.io/hugo-pipes/) documentation for a better understanding of how this works.

#### Favicon

After Dark ships with a lightweight SVG favicon embedded into every page. To customize or replace it create a file named `favicon.html` under `layouts/partials/head` within your site and place an [`icon` link](http://devdocs.io/html/link_types#icon) within it.

**Why SVG?** Though they don't have perfect [browser support](http://caniuse.com/#feat=link-icon-svg) yet, SVG favicons are smaller in size and more flexible. SVG favicons can be styled with CSS or even animated with JavaScript.

## License

Copyright (C) 2016–2018 VHS <vhsdev@tutanota.com>

This work is free. You can redistribute it and/or modify it under the
terms of the Do What The Fuck You Want To Public License, Version 2,
as published by Sam Hocevar. See the COPYING file for more details.

[1]: https://t.me/joinchat/Iw_6FEhmKL9sPUAukX9jzg
[lazysizes]: https://github.com/aFarkas/lazysizes
[elinks]: http://elinks.or.cz/
[Fractal Forest]: https://codeberg.org/vhs/fractal-forest
[Voyeur]: https://codeberg.org/vhs/voyeur
[Hall of Mirrors]: https://codeberg.org/vhs/hall-of-mirrors
