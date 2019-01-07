+++
title = "Section Menu"
description = "Display a contextual site-wide navigation with links."
categories = ["navigation"]
tags = ["links", "taxonomy"]
features = ["code highlighter", "snippets", "section menu"]
notes = [
  "review 'fuzzy-search' examples if modified"
]
+++

After Dark uses Hugo's {{< external href="https://gohugo.io/templates/menu-templates/#section-menu-for-lazy-bloggers" text="Section Menu for “Lazy” Bloggers" />}} to create a site-wide navigational aid. The section menu is disabled by default.

{{< hackcss-card header="Interactive Example" >}}
  {{< navmenu >}}
{{< /hackcss-card >}}

Enable it by toggling the `show_menu` setting in your site configuration:

```toml
[params]
  show_menu = false # set to `true` to enable section menu
```

With the menu enabled navigation links will begin appearing automatically on a per-section basis whenever {{< external href="https://gohugo.io/getting-started/usage/#draft-future-and-expired-content" text="Published Content" />}} is available within that section.

Link to stand-alone pages from {{< external href="https://gohugo.io/content-management/front-matter/" text="Front Matter" />}} by specifying `menu = "main"`:

```toml
title = "About"
menu = "main"
```

Adjust link names and menu position by adding the following code block to your {{< external href="https://gohugo.io/getting-started/configuration/" text="Site Configuration" />}} and modifying it to meet your needs:

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

Decorate links with SVG icons using `pre` and `post`:

```toml
[[menu.main]]
  name = "Search"
  identifier = "search"
  url = "/search/"
  post = "<svg aria-hidden=\"true\" class=\"i-search\" viewBox=\"0 0 32 32\" width=\"14\" height=\"14\" fill=\"none\" stroke=\"currentcolor\" stroke-linecap=\"round\" stroke-linejoin=\"round\" stroke-width=\"3\"><circle cx=\"14\" cy=\"14\" r=\"12\" /><path d=\"M23 23 L30 30\" /></svg>"
```

See {{< external href="https://gohugo.io/content-management/menus/" text="Menus in Hugo" />}} for additional information.
