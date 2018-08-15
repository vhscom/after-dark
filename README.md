# After Dark

> A deceptively simple dark theme for [Hugo].

[![Latest NPM version](https://img.shields.io/npm/v/after-dark.svg?style=flat-square)](https://www.npmjs.com/package/after-dark)
[![NPM downloads per month](https://img.shields.io/npm/dm/after-dark.svg?style=flat-square)](https://www.npmjs.com/package/after-dark)
[![Minimum Hugo version](https://img.shields.io/badge/hugo->%3D%200.44-FF4088.svg?style=flat-square)](https://gohugo.io)
[![Telegram chat](https://img.shields.io/badge/chat-telegram-32AFED.svg?style=flat-square)][1]
[![WTFPL licensed](https://img.shields.io/npm/l/after-dark.svg?style=flat-square&longCache=true)](https://codeberg.org/vhs/after-dark/src/branch/master/COPYING)

![After Dark screenshots](https://codeberg.org/vhs/after-dark/raw/branch/master/images/docs/minimal-mac.png)

## About

After Dark is a minimalist dark theme and website starter kit for the [Hugo] static site generator. The theme makes use of modern web development and design trends while preserving the aesthetic and simplicity of hobbiest websites created during the mid- to late-1990’s. It includes an offline search app, cross-platform quick installer as well as a set of optional plug-in modules to enhance your website as it grows. Use it online or off to create anything from a microblog to a full-text content search engine.

## Demo & Tutorial

Visit [Hack Cabin](https://hackcabin.com) for a production example. Learn to recreate the production site architecture with a [step-by-step guide](https://vhs.codeberg.page/zero-to-http-2).

## Features

Expand the overview to learn more about what's included, or skip ahead to [getting started](#getting-started).

<details>
<summary>Feature Overview</summary>

Feature | Summary
--------|--------
[Quick Installer](#getting-started) | One command is all you need to start creating a website with After Dark.
[Module System](#module-system) | Add functionality with prebuilt modules designed to compliment your site.
[Section Menu](#section-menu) | Display an accessible site-wide navigation with links to content sections.
[Display Variants](#display-variants) | Customize look-and-feel with one of six included display variations.
[Custom Styles](#custom-styles) | Add to, override or disable theme styles for complete design control.
[Trim Color](#trim-color) | Defines the default trim color and sometimes affects how a browser or OS displays the site.
[SVG Favicon](#svg-favicon) | Help push browser standards forward by decorating your site with an SVG favicon.
[Fuzzy Search](#fuzzy-search) | Find and share indexable content anywhere on your site. No registration required.
[Code Highlighter](#code-highlighter) | Highlight code in over 160 languages without requiring JavaScript.
[Post Images](#post-images) | Add graphics to your posts without touching an image editor.
[Lazy Loading](#lazy-loading) | Boost page speed and save bandwidth by deferring assets you define.
[Social Engagement](#social-engagement) | Share links to your site with optimal experience on Twitter, Telegram and more.
[Search Optimization](#search-optimization) | Give crawlers rich information about your site structure and content.
[Modification Dating](#modification-dating) | Recently updated content is flagged and made more discoverable to readers.
[Index Blocking](#index-blocking) | Hide pages from search engines without modifying robots.txt.
[Referrer Policy](#referrer-policy) | Help protect your visitors from nosy neighbors with a simple site-wide policy.
[Snippets](#snippets) | Adjust layouts, add form components and more without repeating yourself.
[Related Content](#related-content) | Display links to relevant content below blog posts automatically.
[Table of Contents](#table-of-contents) | Create collapsable content summaries with deep link and smooth-scroll support.
[404 Page](#404-page) | Entertain users into staying when they experience linkrot on your site.
</details>

## Getting Started

After Dark requires a single dependency to operate. Before running the installation script please [install Hugo](https://gohugo.io/getting-started/installing) and, optionally, the [elinks] terminal browser, on your system. Instructions for installing both using [Homebrew](https://brew.sh/) on macOS:

```shell
brew install hugo elinks
```

Then run the quick installer located in `bin/install`, or just paste this into a terminal and press <kbd>Enter</kbd>:

```shell
wget -qO - https://codeberg.org/vhs/after-dark/raw/branch/master/bin/install | sh
```

The quick installer will download the theme and any [preinstalled modules](#module-system) and should complete in a matter of seconds. If you have `elinks` installed your new site [will open automatically](https://codeberg.org/vhs/after-dark/src/branch/master/images/docs/feat-quick-installer.gif) with a local preview and next steps.

---

To preview your site online at any time run the included `bin/preview` script from your After Dark installation directory:

```sh
cd flying-toasters && ./themes/after-dark/bin/preview
```

Preview starts a [`hugo server`](https://gohugo.io/commands/hugo_server/) and connects it to [Serveo](https://serveo.net) to expose your website to the Internet using end-to-end encryption. You must have an ssh server such as [dropbear](https://matt.ucc.asn.au/dropbear/dropbear.html) or [openssh](https://www.openssh.com) installed on your system for the preview script to function.

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

### Code Highlighter

After Dark automatically highlights code written in more than 160 languages using a customized version of [One Dark Syntax](https://atom.io/themes/one-dark-syntax) with support for terminal browsers. To activate the code highlighter use the [`highlight` shortcode](https://gohugo.io/content-management/syntax-highlighting/#highlight-shortcode) or indicate the [highlighting language](https://gohugo.io/content-management/syntax-highlighting/#list-of-chroma-highlighting-languages) with a fenced code block from within your page content, e.g. ```` ```js ````

![Syntax Highlighting screenshot](https://codeberg.org/vhs/after-dark/raw/branch/master/images/docs/feat-syntax-highlighting-fs8.png "Example JavaScript highlighting with line numbers.")

If you'd prefer a lighter background create a file called `syntax.css` in your site `static/css` folder and drop in the contents of one of the following:

- [`dark.css`](https://cdn.jsdelivr.net/npm/atom-one-chroma/dist/dark.css) `#282c34` colored background
- [`light.css`](https://cdn.jsdelivr.net/npm/atom-one-chroma/dist/light.css) `#fafafa` colored background

Specifying a site-level `syntax.css` file will override the theme-provided file in its entirety, enabling you to roll your own syntax highlighting theme using the [syntax roller](https://codeberg.org/vhs/atom-one-chroma) purpose-built for use with After Dark.

Reference the Hugo [Syntax Highlighting](https://gohugo.io/content-management/syntax-highlighting/) docs for additional information and configuration settings.

### Fuzzy Search

If a web crawler can find it, so can you. Search for indexable content site-wide using the inbuilt JavaScript search app built with [Vue](https://vuejs.org/), [Fuse](http://fusejs.io/) and [Mark](https://markjs.io). Searches are fuzzy and typos are forgiven.

To begin using fuzzy search create a section called `search` using the After Dark search layout like so:

```
└── content
    └── search
        └── _index.md
```

With an `_index.md` using the search layout:

```toml
+++
title = "Search"
layout = "search"
noindex = true
+++
```

Then tell Hugo to output an `index.json` file along with your site when building by adding the following to your `config.toml`:

```toml
[outputs]
  home = ["HTML", "RSS", "JSON"]
  section = ["HTML", "RSS", "JSON"]
```

The above configuration tells Hugo to create an `index.json` file in addition to `index.xml` and `index.html` when building your site. The JSON file will be consumed by the search app when the layout is used and will update automatically whenever your site is built.

**Tip:** While updating the config consider enabling the After Dark [section menu](#section-menu) to expose search to users.

Finally, go ahead and serve your site, and navigate to the `/search/` path to begin using fuzzy search. Notice how the page URL updates when queries are entered and search terms highlighted in results. Try refreshing the page then copying the URL and opening it in a new window. Notice how the search query and results are persisted across page loads.

Fuzzy Search will only return results for [Regular Pages](https://gohugo.io/variables/site/#site-variables-list) and intentionally omits pages tagged for [index blocking](#index-blocking). Anything you see in search results is also indexable to well-behaved web crawlers and anything you can't search is not.

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

After Dark includes a _Shortcode_ taking advantage of this feature, enabling you to easily create [lazy-loaded `figure` elements](#code-snippets) within your markdown content.

Additional information and examples, including how to set-up and use LQIP (Low-Quality Image Placeholders), are available on the [lazysizes] repository on GitHub.

### Related Content

Promote more of your content to your site visitors. By offering your readers more content that's relevant to them you can increase your site's page views, the time spent on your site and reader loyalty.

Related content surfaces content across sections by matching taxonomy tags. If After Dark finds related content it will automatically output a list of links to that content in reverse chronological order below the byline of your post content.

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

Increase engagement when sharing links to your site on social media.

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

To create an Instant View for your site [create your own](https://instantview.telegram.org/my/) IV template modeling from the example here:

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

Verify your site with several webmaster tools including Google, Bing, Alexa and Yandex. To allow verification of your site with any or all of these providers add the following to your `config.toml` and fill in their respective values:

```toml
[params.seo.webmaster_verifications]
  google = "" # Optional, Google verification code
  bing = "" # Optional, Bing verification code
  alexa = "" # Optional, Alexa verification code
  yandex = "" # Optional, Yandex verification code
```

**Note:** Claiming your site with Alexa was [retired in May 2016](https://support.alexa.com/hc/en-us/articles/219135887-Claiming-has-been-retired-May-2016). However, Alexa verification has been added as a convenience for existing sites migrating to After Dark.

#### Meta Descriptions

Well-crafted page titles help catch the human eye on search results pages. And meta descriptions provide a summary of the content and why its relevant for the reader, driving click-throughs.

To add a custom meta description to your pages and posts add `description` to the front matter:

```toml
description = "Everything you need to know to become a Digital Nomad in Bali."
```

In addition to appearing in search engines, meta descriptions also appear on individual pages and in content summaries in After Dark, adding transparency to how your page will appear in search.

If no custom description is provided After Dark will fallback to the description provided in `config.toml`. Learn more on [how to craft your meta descriptions](https://moz.com/learn/seo/meta-description).

#### Modification Dating

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

In addition to `date` and `publishdate`, it's also possible to set an expiry date. Expired posts will automatically disappear when the site is built, but the content will be retained. To future- or back-date content for expiration, set the `expirydate` field in the front matter.

#### Index Blocking

Just because a page appears in your `sitemap.xml` does not mean you want it to appear in a SERP. Examples of pages which will appear in your `sitemap.xml` that you typically do not want indexed by crawlers include error pages, search pages, legal pages, and pages which list summaries of other pages.

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

### Snippets

Snippets are reusable bits of code you can sprinkle across your site to reduce repetition and improve consistency. They are composed of [partials](https://gohugo.io/templates/partials) and [shortcodes](https://gohugo.io/content-management/shortcodes). After Dark provides a number of snippets to help make your site easier to customize and maintain.

Take for example the included `buttongroup` snippet for creating a set of [hackcss]-styled buttons, which we'll look at in detail here.

First the `buttongroup` partial:

```html
<form
  {{ if .action }}action="{{ .action | safeURL }}" {{ end }}
  {{ if .target }}target="{{ .target }}" {{ end }}
  {{ if in (slice "get" "post") .method }}method="{{ .method }}" {{ end }}
  class="btn-group">
  {{ .body }}
</form>
```

Now the `buttongroup` shortcode:

```html
{{ $action := .Get "action" }}
{{ $target := .Get "target" }}
{{ $method := .Get "method" }}
{{ $body := .Get "body" | default .Inner }}
{{ partial "components/buttongroup.html" (dict "action" $action "target" $target "method" $method "body" $body)}}
```

Notice how the shortcode serves primarily to call the partial, which contains all of the markup and presentation logic. This delegation of responsibility is what enables snippets to be shared between layout (via partial) and content (via shortcode). Now let's see how to actually use it.

To use the `buttongroup` snippet via markdown content use the shortcode form:

```html
{{< hackcss-buttongroup >}}
  {{< hackcss-button text="Left" />}}
  {{< hackcss-button text="Middle" type="info" />}}
  {{< hackcss-button text="Right" isghost="true" />}}
{{< /hackcss-buttongroup >}}
```

This creates a styled button group from your content with three buttons and places them inside a form using the default `form` action.

To use the `buttongroup` in layout use the partial form:

```html
{{ partial "components/buttongroup.html" (dict "body" (partial "components/button.html" (dict "type" "success" "body" "Submit" "action" .RelPermalink))) }}
```

This creates a button group from your layout with a single button and specifies the desired `form` action.

After Dark includes the following snippets designed to take advantage of  [hackcss components][hackcss] available in the theme:

- [`hackcss-alert`](layouts/shortcodes/hackcss-alert.html) - Provides themed alert boxes. See file for usage notes.
- [`hackcss-button`](layouts/shortcodes/hackcss-button.html) - Provides themed buttons. See file for usage notes.
- [`hackcss-buttongroup`](layouts/shortcodes/hackcss-buttongroup.html) - Allows buttons to be grouped together. See file for usage notes.
- [`hackcss-card`](layouts/shortcodes/hackcss-card.html) - Provides themed card element. See file for usage notes.
- [`hackcss-progress`](layouts/shortcodes/hackcss-progress.html) - Provides themed progress meter. See file for usage notes.
- [`hackcss-throbber`](layouts/shortcodes/hackcss-throbber.html) - Provides themed loading indicator. See file for usage notes.

If you'd like to try your hand at creating a snippet look at the above examples then try abstracting the following custom shortcodes included:

- [`blockquote`](layouts/shortcodes/blockquote.html) – Provides a styled blockquote with optional citation link. See file for usage notes.
- [`figure`](layouts/shortcodes/figure.html) – Overrides Hugo [built-in shortcode](https://gohugo.io/content-management/shortcodes/#use-hugo-s-built-in-shortcodes) to provide a [lazy-loaded](#lazy-loading) figure element with small caption text.

Reference the Hugo docs for additional help using [shortcode](https://gohugo.io/templates/shortcode-templates/) and [partial](https://gohugo.io/templates/partials/) templates.

### Personalization

After Dark provides several options to give you more freedom and control over your site's look-and-feel. Read on to learn more.

#### Display Variants

Customize the look-and-feel of your site with display variants. After Dark provides three dark color palettes and two display modes. Toggle between them anytime directly from your site configuration.

The default display variant uses the `dark` color palette with the `hack` display mode. To modify it add the following to your site configuration and choose one of the available options:

```toml
[params.hackcss]
  disabled = false # Optional, set true to disable hackcss styles
  mode = "hack" # Optional, choose from 'hack' and 'standard'
  palette = "dark" # Optional, choose from 'dark', 'dark-grey' and 'solarized-dark'
```

Once updated review the [404 Page](#404-page), [Trim Color](#trim-color) and tweak your [Custom Styles](#custom-styles) to suit your personal taste.

#### Custom Styles

Add to or override existing styles without modifying theme source.

To add your own custom styles:

1. Create a file named `custom.css` in your site's `assets/css` directory. If it doesn't exist yet, simply create it:

    ```sh
    mkdir -p assets/css && touch "$_"/custom.css
    ```

2. Then add any custom styles to `custom.css`. For example, to adjust the treatment of output from the included [`figure` shortcode](https://codeberg.org/vhs/after-dark#snippets) add the following to your `custom.css`:

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
      border-bottom: none;
    }
    figure a:hover {
      background-color: inherit;
    }
    ```

    The above will center figures on the page, constrain their width to 80% of the available layout space and remove any link underlines.

**Heads up:** After Dark ships with some example customizations in [its own `custom.css`](assets/css/custom.css) file. If you wish to keep these in your site, copy the styles within into your site-level `custom.css` file after creating it.

With `hugo serve` running, changes to your site `custom.css` will trigger an automatic rebuild and a live reload in any open browsers with JavaScript support.

**How does this work?** Custom styles are concatenated into a `style` element in the document `head` along with theme and vendor styles. [Specificity](https://devdocs.io/css/specificity) in this file trumps what is output at the theme or vendor levels, so no `!important` hacks are strictly necessary to override anything. See the [Asset Bundling](https://gohugo.io/hugo-pipes/bundling/) Hugo docs for a better understanding of file concatenation using [Hugo Pipes](https://gohugo.io/hugo-pipes/).

Finally, if you wish to disable all theme styles, disable the [Display Variant](#display-variants) after creating your `custom.css`.

#### Trim Color

Defines the default trim color and sometimes affects how a browser or OS displays the site (e.g., in Brave, trim color styles the browser chrome).

If left unchanged, trim color is set automatically to background color of the [Display Variant](#display-variants). To customize the trim color add a CSS variable called `--trim-color` to your [Custom Styles](#custom-styles):

```css
:root {
  --trim-color: rgba(1e2, .5e1, .5e0, +.25e2%); // functional syntax with floats value
}
```

You may then start adding and [Using CSS variables](https://devdocs.io/css/using_css_variables) within your `custom.css` anywhere colors or other variables are desired.

#### SVG Favicon

After Dark ships with a 224B SVG favicon embedded into every page.

**Why SVG?** Though they don't enjoy broad support [yet](http://caniuse.com/#feat=link-icon-svg) they should. SVG favicons are extremely lightweight. And unlike traditional graphics, SVGs can be styled with CSS and even animated with JavaScript.

To customize the favicon create a `favicon.html` under `layouts/partials/head` within your site and place an [`icon` link](http://devdocs.io/html/link_types#icon) within it as illustrated in the included [`favicon.html` partial](layouts/partials/head/favicon.html). If you're planning to optimize for specific [platform experiences](https://github.com/h5bp/html5-boilerplate/blob/6.1.0/dist/doc/extend.md#web-apps) this override file is a good place to add any additional tags required.

#### 404 Page

Linkrot can be embarrassing. If you forget to set your [page aliases](https://gohugo.io/content-management/urls/#aliases) when moving content around, or sipmly fat-finger a <kbd>CTRL+V</kbd> when sharing a link, don't send your users packing. After Dark includes a 404 page. Use it to encourage users to stick around when resources can't be located by redirecting users to `domain.example/404.html` where `domain.example` is your `baseURL` or `localhost:1313` if running locally with `hugo serve`.

To customize the provided 404 page create a `404.html` in your site `layouts` directory and let [Hugo's Lookup Order](https://gohugo.io/templates/lookup-order/) do the rest.

## Adaptations

After Dark enjoys a community-maintained [port for Gutenberg](https://www.getgutenberg.io/themes/after-dark/) for those who'd like to experiment with an alternative to Hugo.

## License

Copyright (C) 2016–2018 VHS <vhsdev@tutanota.com>

This work is free. You can redistribute it and/or modify it under the
terms of the Do What The Fuck You Want To Public License, Version 2,
as published by Sam Hocevar. See the COPYING file for more details.

[1]: https://t.me/joinchat/Iw_6FEhmKL9sPUAukX9jzg
[Hugo]: https://gohugo.io/
[lazysizes]: https://github.com/aFarkas/lazysizes
[elinks]: http://elinks.or.cz/
[hackcss]: https://hackcss.egoist.moe/dark.html
[Fractal Forest]: https://codeberg.org/vhs/fractal-forest
[Voyeur]: https://codeberg.org/vhs/voyeur
[Hall of Mirrors]: https://codeberg.org/vhs/hall-of-mirrors
