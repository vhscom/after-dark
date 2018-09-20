+++
title = "{{ replace .TranslationBaseName "-" " " | title }}"
date = {{ .Date }}
description = "This text was generated using the After Dark post archetype."
draft = false # run 'hugo serve --buildDrafts' to generate draft content
toc = false
categories = ["hacking"]
tags = ["after", "dark"]
images = [
  "https://source.unsplash.com/collection/983219/1600x900"
] # overrides site-wide open graph image
+++

Before continuing please create a post archetype. Archetypes are located within markdown files in the `archetypes` directory of your site:

```sh
└── flying-toasters
    ├── archetypes
    │   ├── default.md
    │   └── post.md
    ├── content
```

If `post.md` does not exist yet, copy it from the After Dark default:

```sh
$ cd flying-toasters
$ cp themes/after-dark/archetypes/post.md archetypes/
```

Make some changes to `post.md` then use `hugo` to generate a new post:

```sh
$ nano archetypes/post.md
$ hugo new post/once-upon-midnight-dreary.md
$ hugo serve --buildDrafts --navigateToChanged
```

You have now created a post using {{< external href="https://gohugo.io/content-management/archetypes/" text="Archetypes in Hugo" />}}. Archetypes establish defaults for new content like posts. Create new archetypes when creating [Custom Layouts](http://localhost:1414/feature/custom-layouts) to help maintain consistency within your content.

<!--more-->

---

{{< hackcss-alert type="info" >}}
<strong>Note:</strong> This {{< external rel="help" target="_self" href="http://localhost:1414/shortcode/alert/" text="Alert" />}} appears below the {{< external href="https://gohugo.io/content-management/summaries/" text="Hugo Summary Split" />}}.
{{< /hackcss-alert >}}

In addition to alerts After Dark includes a number of other [Shortcodes](http://localhost:1414/shortcode/) and other useful [Features](http://localhost:1414/feature/) such as its [Module System](http://localhost:1414/feature/module-system/).

Module System gives After Dark sites the ability to add enhanced functionality using [Modules](http://localhost:1414/module/) like this one, which uses the [Fractal Forest](http://localhost:1414/module/fractal-forest/) module to decode and render a BPG image animation otherwise not possible in most browsers:

![BPG animation example](/bpg/cinemagraph-6.bpg)

If you do not see the above animation, you may install the [Fractal Forest](http://localhost:1414/module/fractal-forest/) module yourself or reinstall After Dark using the [Quick Installer](http://localhost:1414/feature/quick-installer/) for instant setup.

Review the [Online Help](http://localhost:1414/) to learn about other useful features such as the [Section Menus](http://localhost:1414/feature/section-menu) navigational aid, responsive [Post Images](http://localhost:1414/feature/post-images/"), offline [Fuzzy Search](http://localhost:1414/feature/fuzzy-search/) and more.

If Online Help isn't running, start with the following:

```sh
$ cd flying-toasters
$ ./themes/after-dark/bin/help
```

---

Here're some cheat sheets for you to reference as you get started.

After Dark Scripts:

```sh
cd flying-toasters/themes/after-dark
./bin/upgrade # check for updates and upgrade
./bin/help # start online help docs
./bin/install # run the quick installer
cd ../../..
```

Hugo Commands:

```sh
hugo # build site with default settings
hugo --minify # build with minified sources (hugo 0.45 and above)
hugo --config config.prod.toml # build with custom config
hugo --templateMetrics # generate template metrics
hugo new about.md # generate page content
hugo new post/coming-soon.md # generate new post content
hugo serve # serve locally with default settings
hugo serve --buildDrafts --navigateToChanged # serve with drafts for editing
hugo serve --buildExpired # serve locally showing expired content
hugo serve --disableLiveReload # serve locally w/live reload disabled
hugo list drafts # list draft content
hugo list expired # list expired content
hugo list future # list future  content
hugo [serve] --debug # build or serve hugo with debug info
hugo [command] --help
```

Thank you for choosing After Dark.
