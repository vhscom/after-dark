<h1 align="center">After Dark</h1>

<p align="center">
  <strong>A retro dark theme for <a target="intro" href="https://gohugo.io/">Hugo</a>.</strong>
</p>

<p align="center">
  <img src="https://raw.githubusercontent.com/vhs/after-dark/master/images/minimal-mac.png" title="After Dark running on a MacBook and iPhone" alt="After Dark theme screenshots">
</p>

<p align="center">
  <a href="https://www.npmjs.com/package/after-dark"><img src="https://img.shields.io/npm/dm/after-dark.svg?style=flat-square" alt="NPM downloads per month"></a>
  <a href="https://www.npmjs.com/package/after-dark"><img src="https://img.shields.io/npm/v/after-dark.svg?style=flat-square" alt="Latest NPM version"></a>
  <a href="https://codeberg.org/vhs/after-dark/blob/master/COPYING"><img src="https://img.shields.io/github/license/vhs/after-dark.svg?style=flat-square" alt="Project license"></a>
</p>

## Features

<details>
  <summary style="margin-bottom:1em">
    View the full list of features
  </summary>
  <table>
    <thead>
      <tr>
        <th>Feature</th>
        <th>Summary</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>Deceptive Simplicity</td>
        <td>After Dark is a <a target="feature" href="http://themes.gohugo.io/">Hugo theme</a>, making it a suitable starting point for <b>novice and advanced developers</b> alike. It advances using the "Code for today, not for tomorrow" philosophy of <abbr title="eXtreme Programming">XP</abbr>, and includes only what's necessary to create and run your site &ndash; nothing more.</td>
      </tr>
      <tr>
        <td>Semantic Versioning</td>
        <td>Predictable changes enable theme users stay up-to-date with what's happening. After Dark uses <a target="feature" href="http://semver.org/">Semantic Versioning</a> and maintains a <a target="feature" href="https://codeberg.org/vhs/after-dark/blob/master/CHANGELOG.md">CHANGELOG</a> for easy consumption.</td>
      </tr>
      <tr>
        <td>Inclusive Design</td>
        <td>Optimized for mobile, tablet, desktop and <kbd>terminal</kbd> browsers.</td>
      </tr>
      <tr>
        <td>Performance Optimized</td>
        <td>Page content, favicon and styles <b>load in a single request</b> on all pages. Resources loaded asynchronously whenver possible. Responsive images with LQIP out of the box. Users should see a <b>~1 second page loads over 2G</b> when hosted using a <abbr title="Content Delivery Network">CDN</abbr>.</td>
      </tr>
      <tr>
        <td>Designed to Scale</td>
        <td>After Dark is capable of generating <b>~1000 pages per second</b> thanks to <a target="feature" href="https://gohugo.io/">Hugo</a> and is likely to become faster over time.</td>
      </tr>
      <tr>
        <td><a href="#lazy-loading">Lazy Loading</a></td>
        <td>Lazily load your images, iFrames and script embeds. After Dark uses the <a title="feature" href="https://github.com/aFarkas/lazysizes">lazysizes</a> library, a zero-configuration JavaScript library with support for <abbr title="Low Quality Image Placeholders">LQIP</abbr> and responsive images.</td>
      </tr>
      <tr>
        <td><a href="#bpg-image-support">BPG Image Support</a></td>
        <td>After Dark supports the <a href="https://bellard.org/bpg/">BPG Image format</a>. Native browser support for BPG is dismal. As a result, a polyfill has been provided to render BPG images.</td>
      </tr>
      <tr>
        <td><a href="#social-engagement">Social Engagement</a></td>
        <td>After Dark provides automatic and configurable <a target="feature" href="http://ogp.me/">Open Graph</a> support and Twitter Cards, making social shares pop like 37 pieces of flair.</td>
      </tr>
      <tr>
        <td><a href="#search-optimization">Search Optimization</a></td>
        <td>Using <a target="feature" href="https://moz.com/learn/seo/schema-structured-data">Schema Structured Data</a> and meta tags, After Dark gives crawlers rich data about the site structure and content. No configuration required.</td>
      </tr>
      <tr>
        <td><a href="#post-images">Post Images</a></td>
        <td>Increase the visual appeal of your posts by providing a captivating image above your content. After Dark enables configuration-driven post images which are lazy-loaded, responsive and automatically cropped for a consistent look-and-feel across your site.</td>
      </tr>
      <tr>
        <td><a href="#fuzzy-search">Fuzzy Search</a></td>
        <td>After Dark ships with an in-browser search app built with <a target="features" href="https://vuejs.org/">Vue</a>, <a target="features" href="http://fusejs.io/">Fuse</a> and <a target="features" href="https://markjs.io">Mark</a>. Use it to quickly find content anywhere your site.</td>
      </tr>
      <tr>
        <td><a href="#personalization">Personalization</a></td>
        <td>Adjust CSS using purpose-built <a href="#custom-styles">customization file</a>. Choose one of several <a href="#theme-variants">theme variants</a>. Swap in <a href="#favicon">your own favicon</a>. Leverage <a target="features" href="https://gohugo.io/templates/blocks">block templates</a> to quickly extend new custom layouts. And use <a target="features" href="https://hackcss.egoist.moe/dark.html">hack.css</a> flexbox grids and CSS components to add style your site.</td>
      </tr>
      <tr>
        <td><a href="#section-menu">Section Menu</a></td>
        <td>Add and customize your site's global navigation. After Dark uses Hugo's <a target="feature" href="https://gohugo.io/extras/menus#section-menu-for-the-lazy-blogger">Section Menu for "the Lazy Blogger"</a>, making navigation easy to create and predictable to use. Don't want navigation? Simply disable it from your site configuration.</td>
      </tr>
      <tr>
        <td><a href="#content-reuse">Content Reuse</a></td>
        <td>Sometimes plan markdown isn't enough to build engaging page content. For this reason After Dark provides a number of reusable code snippets and shortcodes for adding things blockquotes, figure elements, coubs, videos, <a target="feature" href="https://hackcss.egoist.moe/">hackcss components</a> and more to your pages and posts. Use them to create completely custom layouts or simply spice up an old page.</td>
      </tr>
      <tr>
        <td><a href="#related-content">Related Content</a></td>
        <td>Promote more of your content to your site visitors. By offering your readers more content that's relevant to them you can <b>increase your site's page views</b>, the time spent on your site and reader loyalty.</td>
      </tr>
      <tr>
        <td><a href="#table-of-contents">Table Of Contents</a></td>
        <td>Help users locate and share information on your site. By providing a <abbr title="Table Of Contents">TOC</abbr>, users will spend less time scrolling to locate information in larger documents, and are more likely to <i>deep link</i> to specific information on a page.</td>
      </tr>
      <tr>
        <td>Analytics</td>
        <td>Understand and action on user behavior by enabling Google Analytics. After Dark uses the <a target="feature" href="https://developers.google.com/analytics/devguides/collection/analyticsjs/">async tracking snippet</a> to boost performance and allow script preloading.</td>
      </tr>
      <tr>
        <td>User Generated Content</td>
        <td>Improve search rankings and provide interactivity to users with <abbr title="User Generated Content">UGC</abbr>. Enable <a target="feature" href="https://disqus.com/">Disqus</a> commenting to get started.</td>
      </tr>
      <tr>
        <td>Reading Time</td>
        <td>Set user expectations up-front. After Dark provides <b>estimated reading time</b> for each post near the top of the page. This feature is automatic and assumes a reading speed of 200-250 words per minute.</td>
      </tr>
      <tr>
        <td><a href="#modification-dating">Modification Dating</a></td>
        <td>Surface recently updated content to users and crawlers, allowing them to understand when a post or page was was last modified. Recently updated posts will be flagged as modified, and visually lifted upwards in chronological listings.</td>
      </tr>
      <tr>
        <td><a href="#syntax-highlighting">Custom Syntax Highlighting</a></td>
        <td>Share code snippets with style. After Dark provides <b>custom syntax highlighting</b> with support for both Pygments and Chroma.</td>
      </tr>
      <tr>
        <td>Taxonomy Pages</td>
        <td>Help users discover taxonomic content. After Dark automatically generates <b>taxonomy and taxonomy terms pages</b>, and links to them in post bylines.</td>
      </tr>
      <tr>
        <td>Post Bylines</td>
        <td>Rich post bylines include optional author name, word count, links to taxonomy pages and metadata for search engines.</td>
      </tr>
      <tr>
        <td>Pagination</td>
        <td>Pagination can be hard. After Dark makes it easy with simple list pagination with page indication.</td>
      </tr>
      <tr>
        <td>Animated Error Page</td>
        <td>Decrease bounce rate when URL errors occur. After Dark provides an <a target="feature" href="https://hackcabin.com/post/after-dark-error-page-redesign/">engaging 404 page</a> with animated background.</td>
      </tr>
      <tr>
        <td>Accessibility</td>
        <td>After Dark uses semantic HTML5 markup to provide a better experience for aural readers and facilitates <b>navigation via keyboard</b> only.</td>
      </tr>
    </tbody>
  </table>
</details>

## Demo & Tutorial

Head to [Hack Cabin](https://hackcabin.com) for a **production example** of which the [site architecture](https://hackcabin.com/post/initial-commit/) can be recreated using a [step-by-step guide](https://vhs.codeberg.page/zero-to-http-2). And while you're looking at example sites, check out [a few others](https://codeberg.org/vhs/after-dark/wiki) for even more inspiration.

## Getting Started

First [Install Hugo](https://gohugo.io/#action) and, optionally, [elinks](http://elinks.or.cz/) on your machine. Instructions for installing both using [Homebrew](https://brew.sh/) on macOS:

```shell
brew install hugo elinks
```

Then run the install script located in `bin/install.sh`, or just paste this into a terminal and press <kbd>Enter</kbd>:

```shell
curl -s https://raw.githubusercontent.com/vhs/after-dark/master/bin/install.sh | sh
```

Installation should complete in a matter of seconds.

## Customizing

### Section Menu

After Dark uses Hugo's [Section Menu for Lazy Bloggers](https://gohugo.io/extras/menus/#section-menu-for-the-lazy-blogger) to produce global site navigation if enabled.

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

After Dark includes a _Shortcode_ taking advantage of this feature, enabling you to easily create [lazy-loaded `figure` elements](#content-reuse) within your markdown content.

Additional information and examples, including how to set-up and use LQIP (Low-Quality Image Placeholders), are available on the [lazysizes] repository on GitHub.

### BPG Image Support

The BPG image format provides [high-fidelity images](http://xooyoozoo.github.io/yolo-octo-bugfixes/#vintage-car&jpg=s&bpg=s) which look more like PNGs but loads as fast as a JPG. From a compression standpoint, BPG really shines when handling animations. With support for alpha transparency and given its compression, BPG [literally steamrolls](https://bellard.org/bpg/animation.html) the GIF format of yesteryear.

**Why haven't I heard of BPG?** You have now, and you'll learn about all kinds of cool stuff like this by keeping your eye on [Perf.Rocks](http://perf.rocks/). Please help push BPG forward by encouraging browser makers to improve [current support levels](http://caniuse.com/#search=bpg).

Use BPG just like any other image with the `img` element with a `.bpg` image file extension on any [encoded image](https://webencoder.libbpg.org/). After Dark will asynchronously download a BPG polyfill and render the image in a `canvas` element.

BPG image support is enabled by default in After Dark. To disable support for BPG images add the following to your site configuration:

```toml
[params.seo]
  disable_bpg = true # Disable BPG image support
```

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

Increase user engagement when sharing links on social media.

#### Open Graph

After Dark leverages Open Graph tags using the *undocumented* [internal template](https://github.com/spf13/hugo/blob/142558719324aa1628541d556ef1fa2d123f1e68/tpl/tplimpl/template_embedded.go#L159-L201) to achieve rich sharing cards for Facebook and other social networks, as shown here:

![Open Graph sharing card screenshot](https://raw.githubusercontent.com/vhs/after-dark/a647938/images/docs/feat-social-awareness.png "Example Open Graph sharing card produced by After Dark")

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

Or, if using [Page Bundle](https://gohugo.io/content-management/page-bundles/), specify the relative path to an image resource for the page:

```toml
images = [
  "/post/post-title/images/lana-abie-581813-unsplash.jpg"
]
```

See [Unsplash Source](https://source.unsplash.com/) for image configuration options.

**Note:** While it would be possible, After Dark does not currently support relative links to images. If you would like to see this feature, please [open a new issue](https://codeberg.org/vhs/after-dark/issues/new).

#### Twitter Cards

Optimize tweets with Twitter Cards. After Dark leverages the Hugo [internal template](https://gohugo.io/templates/internal/#the-internal-templates) for Twitter to provide large preview images in addition to associating shares with the site creator.

See the Hugo documentation for usage guidelines.

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

Then simply navigate to the `/search/` URL on your site and let the fun begin.

**Tip:** Consider enabling the After Dark [section menu](#section-menu) to expose the search section to users.

While deep link searches are supported, please note Fuzzy Search will only return results for [Regular Pages](https://gohugo.io/variables/site/#site-variables-list) and intentionally omits any page tagged for [index blocking](#index-blocking).

In other words it's easy to find stuff. But only if you want it to be found.

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

### Content Reuse

Keep your content <abbr title="Don't Repeat Yourself">DRY</abbr> and improve thematic consistency across your site. After Dark provides a number [Shortcodes](https://gohugo.io/extras/shortcodes) and composable components to help you keep your content and layouts easy to maintain.

Take for example After Dark's `blockquote` shortcode:

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

Use it in your page or post markdown files like:

```html
{{< blockquote cite="Bitly" citelink="https://bitly.is/2mkxskj" >}}
  <p>When you create your own Branded Short Domain, you can expect to see up to a 34% increase in CTR when compared to standard bit.ly links.</p>
{{< /blockquote >}}
```

Additional theme-provided shortcodes at your disposal:

- `privacytube` – It's YouTube. But without cookies and UI cruft.
- `coub` - GIFs with sound. Think of it like YouTube for video loops.
- `figure` - Similar to the Hugo built-in, but with [Lazy Loading](#lazy-loading), an adjusted caption title and smaller caption text.

Also included are a number of shortcodes for [hackcss components](https://hackcss.egoist.moe/). These shortcodes function across After Dark [theme variants](#theme-variants) and were created as partials, enabling reuse in both your content as well as your [personalized layouts](#personalization):

- `hackcss-alert` - Provides themed alert boxes. See `hackcss-alert.html` for usage notes.
- `hackcss-button` - Provides themed buttons. See `hackcss-button.html` for usage notes.
- `hackcss-buttongroup` - Allows buttons to be grouped together. See `hackcss-buttongroup.html` for usage notes.
- `hackcss-card` - Provides themed card element. See `hackcss-card.html` for usage notes.
- `hackcss-progress` - Provides themed progress meter. See `hackcss-progress.html` for usage notes.
- `hackcss-throbber` - Provides themed loading indicator. See `hackcss-throbber.html` for usage notes.

To create your own custom shortcodes add a `layouts/shortcodes` directory to your site, place your shortcodes within and start using them in your markdown content. To create or override provided components add a `layouts/partials/components` directory to your site and reference the theme-provided files as you hack away.

Reference the Hugo docs for [shortcode usage instructions](https://gohugo.io/content-management/shortcodes/#using-a-shortcode) and see the inline documentation within each shortcode for example usage instructions.

### Syntax Highlighting

Provide a richer experience when sharing code snippets on your site. After Dark provides support for code highlighting using the lovely [One Dark](https://github.com/atom/one-dark-syntax) and [One Light](https://github.com/atom/one-light-syntax) syntax themes for Pygments and Chroma.

![Syntax Highlighting screenshot](https://raw.githubusercontent.com/vhs/after-dark/d98d68e/images/docs/feat-syntax-highlighting.png "Syntax Highlighting using Atom One Pygments and Chroma")

To set-up syntax highlighting for your After Dark site:

- Follow Hugo's [Syntax Highlighting](https://gohugo.io/content-management/syntax-highlighting/) instructions.
- Open the `themes/after-dark` folder and run `npm i` (assumes NPM installed).
- Then open `./node_modules/atom-one-pygments` and `npm i`.
- Once dependencies are installed, issue `npm run build` within the module to generate the stylesheets to the module's `./dist` directory.

Then choose either `./dist/light.css` or `dark.css` depending on your [Theme Variant](#theme-variants) and copy the contents of the file into your [Custom Styles](#custom-styles) file.

Once configured, syntax highlighting can be achieved using the Hugo built-in [`highlight` shortcode](https://gohugo.io/extras/shortcodes#highlight). Reference Hugo's [Syntax Highlighting docs](https://gohugo.io/content-management/syntax-highlighting/) for usage instructions.

**Not completely satisfied?** [Atom One Pygments](https://codeberg.org/vhs/atom-one-pygments) is built as a theme roller, making it possible to modify the look-and-feel of the resulting syntax highlighting. Make it your own. See the [README](https://codeberg.org/vhs/atom-one-pygments/blob/master/README.md) for more details.

### Personalization

After Dark uses [hack.css](https://hackcss.egoist.moe/dark.html) to automatically style your markup, giving you instant access to flexbox grids, light and dark theme variants, and other pre-built components. Use them while creating new [sections](#section-menu) leveraging [block templates](https://gohugo.io/templates/blocks). Additional personalization options listed below.

#### Custom Styles

Customize theme styles without forking using Hugo's inbuilt [Partial Templates](https://gohugo.io/templates/partials/). To get started:

1. Create a `critical-custom.css` in your site's `layouts/partials/head` directory. If the directory does not exist yet, simply create it.
2. Add your custom styles inside the file.

Example customization file:

```css
/* override theme defaults */
.muted {
  color: rgba(255, 255, 255, 0.5);
}
/* custom styles */
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

Styles are inlined into the `head` of each page. If you would prefer to use external stylesheets override the `partials/global-styles.html` template, modeling from the theme's version of the file, and make any adjustments you see fit.

#### Theme Variants

[`hack.css`](https://hackcss.egoist.moe/) provides a few variants you may wish to use instead of the After Dark defaults. To download them do an `npm install` from `/themes/after-dark/` (assumes NodeJS installed).

Once downloaded, open `./node_modules/hack/dist`, copy the styles you wish to use into a `critical-vendor.css` [template override](https://gohugo.io/themes/customizing/#override-template-files) and apply the variant by setting `theme_variant` in your site config to one of:

    "standard"
    "hack dark-grey"
    "hack solarized-dark"

Once variant applied, open your browser's dev tools and test the changes by previewing your site on mobile, tablet and desktop at different display resolutions and orientations—overriding and making any desired changes to your [overridden](https://gohugo.io/themes/customizing/#override-template-files) `critical-theme.css`, 404 page, `theme-color.html` and [Custom Styles](#custom-styles).

#### Favicon

After Dark ships with a lightweight SVG favicon embedded into every page. To customize or replace it create a file named `favicon.html` under `layouts/partials/head` within your site and place an [`icon` link](http://devdocs.io/html/link_types#icon) within it.

**Why SVG?** Though they don't have perfect [browser support](http://caniuse.com/#feat=link-icon-svg) yet, SVG favicons are smaller in size and more flexible. SVG favicons can be styled with CSS or even animated with JavaScript.

## License

Copyright © 2016-2017 VHS <jhabas@pm.me> (https://vhs.codeberg.page)
<br>This work is free. You can redistribute it and/or modify it under the
<br>terms of the Do What The Fuck You Want To Public License, Version 2,
<br>as published by Sam Hocevar. See the COPYING file for more details.

[lazysizes]: https://github.com/aFarkas/lazysizes
