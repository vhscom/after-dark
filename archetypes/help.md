+++
title = "Help {{ .Site.Data.npm.latest.version }}"
expirydate = {{ .Date }}
noindex = true
toc = true
type = "help"
layout = "help"
integrity = "{{ strings.TrimLeft "sha512-" .Site.Data.npm.latest.dist.integrity }}"
+++

{{< hackcss-form name="validate" action="/help/" >}}
  {{< hackcss-formgroup name="integrity" >}}
    {{< hackcss-label for="digest" >}}
      <abbr title="Secure Hash Algorithm">SHA-512</abbr> Digest:
    {{< /hackcss-label >}}
    {{< hackcss-textinput
        required="true"
        autofocus="true"
        autocomplete="off"
        type="text" id="digest" name="digest"
        pattern="^(?:[A-Za-z0-9+/]{4})*(?:[A-Za-z0-9+/]{2}==|[A-Za-z0-9+/]{3}=)?$" >}}
    {{< hackcss-helpblock >}}
      Submit with digest to validate installation.
      <noscript>JavaScript must be enabled for proper validation.</noscript>
    {{< /hackcss-helpblock >}}
  {{< /hackcss-formgroup >}}
{{< /hackcss-form >}}

<!--more-->

Welcome to the Online Help for After Dark. Here you will find instructions for configuring your site. Use the `Table of Contents` to jump ahead to any section.

If you can't find what you're looking for, or just need a helping hand, please join the private telegram chatroom and ask for help. Active chatroom link can be found at the top of the `README` in the latest version of the theme.

To return to this documentation later run `./themes/after-dark/bin/help`.

# Module System

After Dark includes a custom module system and provides a number of prebuilt modules. Modules use Hugo [Theme Components](https://gohugo.io/themes/theme-components/) and are packaged using NPM for convenience. A summary of available modules can be found in the following table.

Module Name | Version | Description
---|---|---
[Fractal Forest] | ![Latest version](https://img.shields.io/badge/dynamic/json.svg?url=https://codeberg.org/vhs/fractal-forest/raw/branch/master/package.json&label=vers&query=$.version&colorB=000000&style=for-the-badge&longCache=true&maxAge=86400) | Better Portable Graphics (Preinstalled)
[Voyeur] | ![Latest version](https://img.shields.io/badge/dynamic/json.svg?url=https://codeberg.org/vhs/voyeur/raw/branch/master/package.json&label=vers&query=$.version&colorB=000000&style=for-the-badge&longCache=true&maxAge=86400) | Fathom Analytics
[Hall of Mirrors] | ![Latest version](https://img.shields.io/badge/dynamic/json.svg?url=https://codeberg.org/vhs/hall-of-mirrors/raw/branch/master/package.json&label=vers&query=$.version&colorB=000000&style=for-the-badge&longCache=true&maxAge=86400) | PhotoSwipe Image Gallery

Shown here, an animation made possible with the `Fractal Forest` module:

![BPG animation example](/bpg/cinemagraph-6.bpg)

Fractal Forest gives After Dark the ability to render images encoded using Fabrice Bellard's [BPG Image format](https://bellard.org/bpg/) and comes preinstalled with After Dark.

Choose a module above to learn how to install and use them.

# Section Menu

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

# Code Highlighter

After Dark automatically highlights code written in more than 160 languages using a customized version of [One Dark Syntax](https://atom.io/themes/one-dark-syntax) with support for terminal browsers. To activate the code highlighter use the [`highlight` shortcode](https://gohugo.io/content-management/syntax-highlighting/#highlight-shortcode) or indicate the [highlighting language](https://gohugo.io/content-management/syntax-highlighting/#list-of-chroma-highlighting-languages) with a fenced code block from within your page content, e.g. ```` ```js ````

![Syntax Highlighting screenshot](data:image/png;base64,{{ readFile "themes/after-dark/images/docs/feat-syntax-highlighting-fs8.png" | base64Encode }} "Example JavaScript highlighting with line numbers.")

If you'd prefer a lighter background create a file called `syntax.css` in your site `static/css` folder and drop in the contents of one of the following:

- [dark.css](https://cdn.jsdelivr.net/npm/atom-one-chroma/dist/dark.css) `#282c34` colored background
- [light.css](https://cdn.jsdelivr.net/npm/atom-one-chroma/dist/light.css) `#fafafa` colored background

Specifying a site-level `syntax.css` file will override the theme-provided file in its entirety, enabling you to roll your own syntax highlighting theme using the [syntax roller](https://codeberg.org/vhs/atom-one-chroma) purpose-built for use with After Dark.

Reference the Hugo [Syntax Highlighting](https://gohugo.io/content-management/syntax-highlighting/) docs for additional information and configuration settings.

# Fuzzy Search

If a web crawler can find it, so can you. Search for indexable content site-wide using the inbuilt JavaScript search app built with [Vue](https://vuejs.org/), [Fuse](http://fusejs.io/) and [Mark](https://markjs.io). Searches are fuzzy and typos are forgiven.

To begin using fuzzy search create a section called `search` using the After Dark search layout like so:

```
└── content
    └── search
        └── _index.md
```

With an `_index.md` using the search layout:

```toml
title = "Search"
layout = "search"
noindex = true
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

# Post Images

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
        │   └── florian-klauer-119557-unsplash.jpg
        └── index.md
```

With the following front matter specified in `index.md`:

```toml
[[resources]]
  src = "images/florian-klauer-119557-unsplash.jpg"
  name = "header"
```

That's it! After Dark does the rest.

# Lazy Loading

Lazy loading prioritizes when and how images and other external resources are downloaded when viewing a page. Used effectively lazy loading can improve user experience by reducing the amount of time and bandwidth required to load a page.

To facilitate the effective use of lazy loading After Dark includes the [lazySizes] JavaScript library on every page. Use it to take control over how external resources are loaded on your site.

By default After Dark will lazy load [Post Images](#post-images). It also [includes](#snippets) a custom `figure` shortcode to provide a consistent and easy-to-use lazy-loading experience for post images with optional caption text.

To manually activate lazySizes add the `lazyload` class to your images, iframes and more as illustrated in the following examples:

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

See the [lazySizes] docs for additional information and examples, including instructions on how to use it to create <abbr title="Low-Quality Image Placeholders">LQIP</abbr>.

# Related Content

Promote more of your content to your site visitors. By offering your readers more content that's relevant to them you can increase your site's page views, the time spent on your site and reader loyalty.

Related content surfaces content across sections by matching taxonomy tags. If After Dark finds related content, it will automatically output a list of links to that content in reverse chronological order below the byline of your post content.

By default After Dark will display up to 7 items by title along with their reading times. You can limit the number of items displayed by setting the following optional parameter in the `[params]` section of your `config.toml` file:

```toml
related_content_limit = 5
```

Learn more about [Related Content in Hugo](https://gohugo.io/content-management/related/), including configuration options you may wish to add to your site.

# Table Of Contents

Help users locate and share information on your site. By providing a <abbr title="Table Of Contents">TOC</abbr>, users will spend less time scrolling to locate information in larger documents and are more likely to deep to specific information on a page.

To automatically generate a TOC for a post based on the [page outline](https://gsnedders.html5.org/outliner/), add the following to your post front matter:

```toml
toc = true
```

To hide the TOC set `toc = false`, or simply remove the setting from the post front matter.

After Dark uses the HTML5 [`details`](http://devdocs.io/html/element/details) and [`summary`](http://devdocs.io/html/element/summary) elements to provide a TOC which does not require use of CSS or JavaScript to function.

When a page is first loaded, the TOC will be collapsed so it does not clutter up the page. Once expanded, selecting an item in the TOC will smooth scroll to that section within the document, highlight the section header and updating the browser's location bar for deep linking and back-button support.

# Social Engagement

Increase engagement when sharing links to your site on social media.

## Open Graph

After Dark uses the `opengraph` Hugo [internal template](https://gohugo.io/templates/internal/#the-internal-templates) to achieve rich sharing cards for Facebook and other social networks, as shown here:

![Open Graph sharing card screenshot](data:image/png;base64,{{ readFile "themes/after-dark/images/docs/feat-social-awareness-fs8.png" | base64Encode }} "Example Open Graph sharing card produced by After Dark")

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

**Why use arrays?** Open Graph [supports them](http://ogp.me/#array) and users may wish to extend internal templates to output multiple images.

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

## Twitter Cards

Optimize tweets with Twitter Cards. After Dark leverages the Hugo [internal template](https://gohugo.io/templates/internal/#the-internal-templates) for Twitter to provide large preview images in addition to associating shares with the site creator.

See the Hugo [Internal Templates documentation](https://gohugo.io/templates/internal/#the-internal-templates) for more information.

## Telegram Instant View

Improve experience for Telegram users by providing an [Instant View](https://instantview.telegram.org/) for your site. After Dark makes easy.

![Open Graph sharing card screenshot](data:image/png;base64,{{ readFile "themes/after-dark/images/docs/feat-instant-view-fs8.png" | base64Encode }} "Example Telegram Instant View for After Dark")

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

# Search Optimization

After Dark is built with SEO in mind. Schema Structured Data and other meta are applied to give robots what they want, automatically, without any configuration necessary.

The default set-up helps ensure your After Dark site will rank well in <abbr title="Search Engine Results Pages">SERP</abbr>s and prevent search crawlers from indexing undesirable content. Fine-tune your search settings using the following available options.

## Webmaster Verification

Though not required you may wish to verify your site with Google, Bing, Alexa and Yandex. To verify simply add the `META` verification code supplied by the provider in your `config.toml` as shown here:

```toml
[params.seo.webmaster_verifications]
  google = "" # Optional, Google verification code
  bing = "" # Optional, Bing verification code
  alexa = "" # Optional, Alexa verification code
  yandex = "" # Optional, Yandex verification code
```

**Note:** Claiming your site with Alexa was [retired in May 2016](https://support.alexa.com/hc/en-us/articles/219135887-Claiming-has-been-retired-May-2016).

If you choose not to verify it's still possible to submit your site to search engines though the specific method may vary by provider.

## Meta Descriptions

Well-crafted page titles help catch the human eye on search results pages and meta descriptions provide a summary of the content and why its relevant for the reader, driving click-throughs.

To add a custom meta description to your pages and posts add `description` to the front matter:

```toml
description = "Everything you need to know to become a Digital Nomad in Bali."
```

In addition to appearing in search engines, meta descriptions also appear on individual pages and in content summaries in After Dark, adding transparency to how your page will appear in search.

If no custom description is provided, After Dark will fallback to the description provided in `config.toml`. Learn more on [how to craft your meta descriptions](https://moz.com/learn/seo/meta-description).

## Modification Dating

Help user agents know when posts were last modified. To do so add `publishdate` to your page front matter and update `date` anytime you make an update to a post.

Updates will be made visible to readers by surfacing content higher in your page and post listings and by using visible callouts on content summaries. For robots, making this change will automatically update Schema Structured Data and Web feeds, as well as the `lastmod` setting in your `sitemap.xml` file.

You can be specific and use a datetime (with timezone offset) like:

```toml
date = "2017-02-02T01:20:56-06:00"
publishdate = "2016-11-21T10:32:33+08:00"
```

Or less specific and use just the dates:

```toml
date = "2017-02-02"
publishdate = "2016-11-21"
```

In addition to `date` and `publishdate`, it's also possible to set an expiry date. Expired posts will automatically disappear when the site is built, but the content will be retained. To future- or back-date content for expiration, set the `expirydate` field in the front matter.

## Index Blocking

Just because a page appears in your `sitemap.xml` does not mean you want it to appear in a SERP. Examples of pages which will appear in your `sitemap.xml` that you typically do not want indexed by crawlers include error pages, search pages, legal pages, and pages which list summaries of other pages.

Though it's possible to block search indexing from a `robots.txt` file, After Dark makes it possible to block page indexing using Hugo configuration as well. By default the following page types will be blocked:

- Section Pages (e.g. Post listings)
- Taxonomy Pages (e.g. Category and Tag listings)
- Taxonomy Terms Pages (e.g. Pages listing taxonomies)

To customize default blocking configure the `noindex_kinds` setting in the `[params]` section of your `config.toml`.

For example, if you want to enable crawling for sections appearing in [Section Menu](#section-menu), add the following to your configuration file:

```toml
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

You may also add an `_index.md` file with the `noindex` front matter to control indexing for an entire section:

```shell
├── content
│   ├── modules
│   │   ├── _index.md
│   │   ├── starry-night.md
│   │   └── flying-toilets.md
│   └── articles
│       ├── aggressively-stupid-story-behind-after-dark.md
│       ├── another-poppin-fresh-lawsuit.md
```

To learn how crawlers use this see [Block search indexing with 'noindex'](https://support.google.com/webmasters/answer/93710).

## Referrer Policy

Resource requests such as images and scripts typically send an HTTP header containing the location where the request originated. Most of the time this is okay. But sometimes it's not. Sometimes the referrer header is used to censor information or even perform [spear phishing](https://en.wikipedia.org/wiki/Phishing#Spear_phishing) attacks. Perhaps more importantly, transmission of the referrer header can present a privacy concern when transmitted to external sites. But not in After Dark.

After Dark leverages [Referrer Policy](https://w3c.github.io/webappsec-referrer-policy/) to increase security and privacy beyond browser defaults by preventing spec-compliant browsers from passing referrer data when making cross-origin requests.

If you wish to relax the security policy for whatever reason you may do so by:

- Setting the [referrerpolicy](https://w3c.github.io/webappsec-referrer-policy/#referrer-policy-delivery-referrer-attribute) by HTML attribute;
- Override the policy using a [nested browsing context](https://w3c.github.io/webappsec-referrer-policy/#referrer-policy-delivery-nested); or,
- Override the page-level default specified by After Dark.

To override the page-level default of [`same-origin`](https://w3c.github.io/webappsec-referrer-policy/#referrer-policy-same-origin) add/adjust the following config when building your site:

```toml
[params.seo]
  referrer = "same-origin"
```

For a list of possible values and their meanings please see [Referrer Policy](https://w3c.github.io/webappsec-referrer-policy/).

## Link Types

For related content split across multiple pages in a sequence After Dark supports use of `prev` and `next` settings in your front matter. Use them to provide semantic relationships between pages in a segmented article or series or [LiveBlogPosting](https://schema.org/LiveBlogPosting).

```toml
prev = "/series/learn-to-code/part-one/"
next = "/series/learn-to-code/part-three/"
```

Link Types are commonly shown at the top of the page in terminal browsers as auxiliary means of navigation and may help crawlers better understand relationships within your content.

Learn more about [link types](http://devdocs.io/html/link_types) and how to [customize Hugo taxonomies](https://gohugo.io/taxonomies/overview/).

## Meta Keywords

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

# Markdown Output

Gain more control over markdown conversion to HTML. By modifying the markdown processor settings you can take advantage of [Blackfriday](https://github.com/russross/blackfriday) features not enabled by default.

To customize conversion output add a `[blackfriday]` section to your site's `config.toml` file like so:

```toml
[blackfriday]
  hrefTargetBlank = true
  fractions = false
```

Overrides to theme markdown processing defaults are available from page front matter as well, giving you control on a page-by-page basis.

See the Hugo docs for additional [configuration options](http://gohugo.io/overview/configuration/#configure-blackfriday-rendering).

# Snippets

Snippets are reusable bits of code you can add to your site to reduce repetition and improve consistency. They are composed of [partials](https://gohugo.io/templates/partials) and [shortcodes](https://gohugo.io/content-management/shortcodes) and may be combined together to produce powerful results.

The following core snippets are supplied by the theme:

- `external` - Create styled anchor links.
- `navmenu` - Displays a navigation menu.

After Dark also includes snippets to take advantage of [hackcss components][hackcss]:

- `hackcss-alert` - Show various alert boxes.
- `hackcss-button` - Add buttons inside and out of forms.
- `hackcss-buttongroup` - Group buttons together visually.
- `hackcss-card` - Display a card with title.
- `hackcss-form` - Enables powerful form-building applications.
- `hackcss-formgroup` - Groups together form controls.
- `hackcss-helpblock` - Display help text in your forms.
- `hackcss-label` - Add labels to form controls.
- `hackcss-progress` - Display a progress meter.
- `hackcss-textarea` - Provide an area to enter longer text.
- `hackcss-textinput` - Accept any kind of text input.
- `hackcss-throbber` - Show an animated spinner.

Each snippet includes extensive inline documentation. Docs are located in the shortcode files in the `layouts/shortcodes` directory of the theme.

Combine snippets to build great-looking forms anywhere on your site:

![Form snippets screenshot](data:image/png;base64,{{ readFile "themes/after-dark/images/docs/feat-snippets-fs8.png" | base64Encode }} "Example form created using snippet shortcodes.")

Or try your hand at creating your own snippets for the following additional shortcodes included with After Dark:

- `blockquote` – Provides a styled blockquote with optional citation link.
- `figure` – Overrides Hugo [built-in](https://gohugo.io/content-management/shortcodes/#use-hugo-s-built-in-shortcodes) for [lazy loading](#lazy-loading) and small caption text.

Reference the Hugo [shortcode](https://gohugo.io/templates/shortcode-templates/) and [partial](https://gohugo.io/templates/partials/) template docs for additional help.

# Personalization

After Dark provides several options to give you more freedom and control over your site's look-and-feel. Read on to learn more.

## Display Variants

Customize the look-and-feel of your site with display variants. After Dark provides three dark color palettes and two display modes. Toggle between them anytime directly from your site configuration.

The default display variant uses the `dark` color palette with the `hack` display mode. To modify it add the following to your site configuration and choose one of the available options:

```toml
[params.hackcss]
  disabled = false # Optional, set true to disable hackcss styles
  mode = "hack" # Optional, choose from 'hack' and 'standard'
  palette = "dark" # Optional, choose from 'dark', 'dark-grey' and 'solarized-dark'
```

Once updated review the [404 Page](#404-page), [Trim Color](#trim-color) and tweak your [Custom Styles](#custom-styles) to suit your personal taste.

## Custom Styles

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

## Trim Color

Defines the default trim color and sometimes affects how a browser or OS displays the site (e.g., in Brave, trim color styles the browser chrome).

If left unchanged, trim color is set automatically to background color of the [Display Variant](#display-variants). To customize the trim color add a CSS variable called `--trim-color` to your [Custom Styles](#custom-styles):

```css
:root {
  --trim-color: papayawhip;
}
```

You may then start adding and [Using CSS variables](https://devdocs.io/css/using_css_variables) within your `custom.css` anywhere colors or other variables are desired.

## SVG Favicon

After Dark ships with a 224B SVG favicon embedded into every page.

**Why SVG?** SVG favicons are lightweight enough to embed for offline use and, unlike traditional graphics, may can be styled with CSS, animated with JavaScript resized without loss in image fidelity.

To customize the favicon create a `favicon.html` under `layouts/partials/head` within your site and place an [`icon` link](http://devdocs.io/html/link_types#icon) within it as illustrated in the included [`favicon.html` partial](layouts/partials/head/favicon.html). If you're planning to optimize for specific [platform experiences](https://github.com/h5bp/html5-boilerplate/blob/6.1.0/dist/doc/extend.md#web-apps) this override file is a good place to add any additional tags required.

## 404 Page

Linkrot can be embarrassing. If you forget to set your [page aliases](https://gohugo.io/content-management/urls/#aliases) or sipmly fat-finger a URL, don't send your users packing. After Dark includes an engaging 404 page which links back to your homepage. Use it to encourage users to stick around when resources can't be located by redirecting them to `404.html` when a page can't be found.

To customize the provided 404 page create a `404.html` in your site `layouts` directory and let [Hugo's Lookup Order](https://gohugo.io/templates/lookup-order/) do the rest.

[lazySizes]: https://afarkas.github.io/lazysizes/
[hackcss]: https://hackcss.egoist.moe/dark.html
[Fractal Forest]: https://codeberg.org/vhs/fractal-forest
[Voyeur]: https://codeberg.org/vhs/voyeur
[Hall of Mirrors]: https://codeberg.org/vhs/hall-of-mirrors
