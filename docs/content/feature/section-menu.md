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

See {{< external href="https://gohugo.io/content-management/menus/" text="Menus in Hugo" />}} for additional information.
