
<h1 align="center">After Dark</h1>

<p align="center">
  <strong>A simple, yet highly configurable responsive dark theme for the <a target="hugo" href="https://gohugo.io/">Hugo</a> static site generator.</strong>
</p>

<img align="center" src="https://raw.githubusercontent.com/vhs/after-dark/master/images/minimal-mac.png" title="After Dark running on a MacBook and iPhone" alt="After Dark theme screenshots">

## Features

| Feature        | Summary        |
| :------------- | :------------- |
| Deceptive simplicity | Instead of trying to be a starter kit that does everything, After Dark is designed specifically as a theme so you can <abbr title="Bring Your Own Boilerplate">BYOB</abbr>, making it a suitable starting point and for both novice and advanced Web developers alike. |
| Responsive design | Optimized for mobile, tablet, desktop and terminal browsers. |
| Performance optimized | Page content and theme CSS loads in a single HTTP request. External resources are loaded asynchronously, and only when required by the page to save bandwidth consumption. |
| Vertical scaling | The Achilles’ heel of many static site generators is their ability to scale in a performant way for sites with hundreds, thousands or even hundreds of thousands of pages. After Dark is capable of generating ~800-1000 static documents per second thanks to <a target="hugo" href="https://gohugo.io/">Hugo</a>, and is likely to become faster over time. |
| Search aware | Using <a target="_features" href="https://opg.me">OpenGraph</a>, <a target="_features" href="https://moz.com/learn/seo/schema-structured-data">Schema Structured Data</a> and meta tags, After Dark gives search engines what they want, automatically without requiring additional work. For power users, additional [SEO and UX](#seo-and-ux) configuration options have been provided. |
| Personalization | Not completely satisfied with the default look-and-feel? Customize it to your liking using one of the available [Theme Variants](#theme-variants) made available by <a target="_features" href="http://hackcss.com/">hack.css</a>. |
| [Section Menu](#section-menu) | Add and customize your site's global navigation. After Dark uses Hugo's <a target="hugo" href="https://gohugo.io/extras/menus#section-menu-for-the-lazy-blogger">Section Menu for "the Lazy Blogger"</a>, making navigation easy to create and predictable to use. |
| [Intelligent Lazyloading](#intelligent-lazyloading) | Lazyload your images, iFrames and script embeds. After Dark uses the <a title="_features" href="https://github.com/aFarkas/lazysizes">lazysizes</a> library, a zero-configuration library with support for <abbr title="Low Quality Image Placeholders">LQIP</abbr>. |
| [Related Content](#related-content) | Promote more of your content to your site visitors. By offering your readers more content that's relevant to them you can increase your site's page views, the time spent on your site and reader loyalty. |
| [Table Of Contents](#table-of-contents) | Help users locate and share information on your site. By providing a <abbr title="Table Of Contents">TOC</abbr>, users will spend less time scrolling to location information in larger documents, and are more likely to deep to specific information on a page. |
| Analytics | Better understand and action on user behavior by enabling Google Analytics. After Dark uses the <a target="_features" href="https://developers.google.com/analytics/devguides/collection/analyticsjs/">async tracking snippet</a> to help boost performance by allowing supported browsers to preload the script before pages even load. |
| <abbr title="User Generated Content">UGC</abbr> | Generate content for your site and enable user interaction by enabling the <a target="_features" href="https://disqus.com/">Disqus</a> commenting feature. |
| Post reading time | Set user expectations up-front by providing an estimated reading time for each post near the top of the page. This feature is automatic and uses an average human reading speed of around 200-250 words per minute. |
| [Modification Dating](#modification-dating) | Surface recently updated content to your users and crawlers, and help them understand when a post was last modified using modification dating. |
| [Syntax Highlighting](#syntax-highlighting) | For sharing code snippets, After Dark provides an opt-in code highlighting system with support for optional line numbers and the ability to call attention to individual lines of code. |
| Post Bylines | Rich and configurable post bylines including category  and tag taxonomy hyperlinks, author, word count and related metadata. |
| Pagination | Pagination can be hard. After Dark keeps it simple with list pagination with page indicators. |
| Accessibility | After Dark uses HTML5 to provide a better experience for aural readers. In addition, After Dark uses semantic markup to provide deeper meaning to the tags used in pages and posts, and enable full site navigation via the keyboard. |
| Engaging error page | Captivate users when they find errors in your URLs with an <a target="_features" href="https://hackcabin.com/post/after-dark-error-page-redesign/">engaging 404 page</a> with animated background. |

## Demo

Head to [Hack Cabin](https://hackcabin.com) for a **production example** running on AWS and to learn more about the [site architecture](https://hackcabin.com/post/initial-commit/) and [how to replicate it](http://vhs.codeberg.page/zero-to-http-2).

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

That's it! Everything else is optional.

Read on to learn how to configure specific features and customize the theme. And when you're ready to host, **save money over using Netify** by [hosting After Dark on Amazon Web Services](http://vhs.codeberg.page/zero-to-http-2).

## Customizing

### Section Menu

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

### Intelligent Lazyloading

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

### Related Content

Promote more of your content to your site visitors. By offering your readers more content that's relevant to them you can increase your site's page views, the time spent on your site and reader loyalty.

Related content surfaces content across sections by matching taxonomy tags. If After Dark finds related content it will automatically output a list of links to that content in reverse chronological order below the byline of your post content.

By default After Dark will display up to 7 items by title along with their reading times. You can limit the number of items displayed by setting the following optional parameter in the `[params]` section of your `config.toml` file:

```toml
related_content_limit = 5
```

### Table Of Contents

Help users locate and share information on your site. By providing a <abbr title="Table Of Contents">TOC</abbr>, users will spend less time scrolling to location information in larger documents, and are more likely to deep to specific information on a page.

To automatically generate a TOC for a post based on the [page outline](https://gsnedders.html5.org/outliner/), add the following to your post front matter:

```toml
toc = true
```

To hide the TOC set `toc = false`, or simply remove the setting from the post front matter.

After Dark uses the HTML5 [`details`](http://devdocs.io/html/element/details) and [`summary`](http://devdocs.io/html/element/summary) elements to provide a TOC which does not require use of CSS or JavaScript to function.

When a page is first loaded, the TOC will be collapsed so it does not clutter up the page. Once expanded, selecting an item in the TOC will smooth scroll to that section within the document, highlight the section header and updating the browser's location bar for deep linking and back-button support.

### OpenGraph

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

### SEO and UX

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

### Meta Descriptions

Well-crafted page titles help catch the human eye on search results pages. And meta descriptions provide a summary of the content and why its relevant for the reader, driving click-throughs.

To add a custom meta description to your pages and posts add `description` to the front matter:

```toml
description = "Everything you need to know to become a Digital Nomad in Bali."
```

In addition to appearing in search engines, meta descriptions also appear on individual pages and in content summaries in After Dark, adding transparency to how your page will appear in search.

If no custom description is provided After Dark will fallback to the description provided in `config.toml`. Learn more on [how to craft your meta descriptions](https://moz.com/learn/seo/meta-description).

### Modification Dating

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

### Link Types

For related content split across multiple pages in a sequence After Dark supports use of `prev` and `next` settings in your front matter.

Learn more about [link types](http://devdocs.io/html/link_types).

### Search Index Blocking

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

### Shortcodes

Keep your content <abbr title="Don't Repeat Yourself">DRY</abbr> and improve thematic consistency across your site. To help achieve this, Hugo provides [Shortcodes](https://gohugo.io/extras/shortcodes).

Shortcodes are very powerful, and can be used to achieve functionality not otherwise available in the markdown processor. Hugo provides a number of [built-in shortcodes](https://gohugo.io/extras/shortcodes#built-in-shortcodes) you can use on your site. And After Dark provides some as well.

Here's the `blockquote` shortcode provided by After Dark:

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

Use it in your markdown files like:

```html
{{< blockquote cite="Bitly" citelink="https://bitly.is/2mkxskj" >}}
  <p>When you create your own Branded Short Domain, you can expect to see up to a 34% increase in CTR when compared to standard bit.ly links.</p>
{{< /blockquote >}}
```

Additional theme-provided shortcodes at your disposal:

- `figure` - Similar to the Hugo built-in, but with [Intelligent Lazyloading](#intelligent-lazyloading), an adjusted caption title and smaller caption text.

To create your own custom shortcodes add a `layouts/shortcodes` directory to your site, place your shortcodes within and start using them in your markdown content.

Reference the Hugo docs for [shortcode usage instructions](https://gohugo.io/extras/shortcodes#using-a-shortcode).

### Syntax Highlighting

Provide a richer experience when sharing code snippets on your site. After Dark provides support for code highlighting using the lovely [One Dark](https://github.com/atom/one-dark-syntax) or [One Light](https://github.com/atom/one-light-syntax) syntax themes used in [Atom](https://github.com/atom/atom).

**Why not use Highlight.js?** Because it's slow, doesn't support line numbers or highlighting of individual lines. In addition, JS-based solutions force browsers to do the same work over and over again when that work can be done once at site generation.

To set-up syntax highlighting for your After Dark site:

- Follow Hugo's [Pygments installation](https://gohugo.io/extras/highlighting/#pygments) instructions.
- Open the `themes/after-dark` folder and run `npm i`
- Then open `./node_modules/atom-one-pygments` and `npm i`
- Once dependencies are instaled, issue `npm run build` to generate the stylesheets to the `./dist` directory

Then choose either `./dist/light.css` or `dark.css` depending on your [Theme Variant](#theme-variants), and copy the contents of the file into your [Custom CSS](#custom-css) file.

Once configured, syntax highlighting can be achieved using the Hugo built-in [`highlight` shortcode](https://gohugo.io/extras/shortcodes#highlight). Reference Hugo's Syntax Highlighting docs for [additional usage instructions](https://gohugo.io/extras/highlighting/#usage).

### Custom CSS

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

### Theme Variants

[`hack.css`](http://hackcss.com/) provides a few variants you may wish to use instead of the After Dark defaults. To download them do an `npm i` from `/themes/after-dark/` (assumes NPM installed).

Once downloaded, open `node_modules/hack/dist` directory and replace the CSS contents of `critical-vendor.css.html` with those you wish to use, updating the `theme_variant` setting in the site configuration like:

    theme_variant = "standard dark-grey"

**Why not use external CSS files?** After Dark is optimized for speed, and, as a result, limits the number of HTTP requests whenever possible. This just so happens to be of those occasions.

Once the vendor file is updated, open your favorite dev tools and test the changes by previewing your site on mobile, tablet and desktop at different display resolutions and orientations, making any tweaks necessary to `critical-theme.css.html`.

And, finally, adjust your [Customized CSS](#custom-css), 404 page and `/meta/theme-color` as necessary.

## Contributing

There's only one rule...there are no rules.

## License

ISC

[lazysizes]: https://github.com/aFarkas/lazysizes
