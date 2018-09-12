+++
title = "{{ replace .TranslationBaseName "-" " " | title }}"
date = {{ .Date }}
description = "This text was generated using the default post archetype."
draft = false # run 'hugo serve --buildDrafts' to generate draft content
toc = false
categories = ["hacking"]
tags = ["after", "dark"]
images = [
  "https://source.unsplash.com/collection/983219/1600x900"
] # overrides site-wide open graph image
+++

Before you continue please take a moment to customize your `post` archetype. Your post archetype is located in the following file relative to your site: `archetypes/post.md`.

If the file does not exist yet, create it by copying from the After Dark default:

```sh
$ cp themes/after-dark/archetypes/post.md archetypes/
```

Once copied, edit your new `post.md` to remove the text you see here then use it go generate a new post for your site:

```
$ hugo new post/the-darkness-is-spreading.md
```

Use archetypes to establish sensible defaults when generating content for your {{< external rel="help" target="help" href="http://localhost:1414/feature/custom-layouts" text="Custom Layouts" />}}.

Visit {{< external target="help" href="https://gohugo.io/content-management/archetypes/" text="Archetypes in Hugo" />}} to learn more about them.

<!--more-->

{{< hackcss-alert type="info" >}}
This text appears below the {{< external target="help" href="https://gohugo.io/content-management/summaries/" text="Summary Split" />}}.
{{< /hackcss-alert >}}

After Dark ships with a {{< external rel="help" target="help" href="http://localhost:1414/feature/module-system" text="Module System" />}} and provides several {{< external rel="help" href="https://vhs.codeberg.page/after-dark/module/" text="prebuilt modules" />}} designed to enhance your site.

Shown here, an animation made possible with the {{< external rel="help" target="help" href="http://localhost:1414/module/fractal-forest" text="Fractal Forest" />}} module:

![BPG animation example](/bpg/cinemagraph-6.bpg)

Fractal Forest gives After Dark the ability to render images encoded using Fabrice Bellard's {{< external href="https://bellard.org/bpg/" target="help" text="BPG Image format" />}} and comes preinstalled for sites created using the {{< external rel="help" target="help" href="https://vhs.codeberg.page/after-dark/feature/quick-installer" text="Quick Installer" />}}.

To learn more about Fractal Forest and other modules available, in addition to the many features available in After Dark please spend some time reviewing the {{< external rel="help" target="help" href="https://localhost:1414/feature/online-help" text="Online Help" documentation before you continue.

If help is not running, start it with the following command:

```sh
./themes/after-dark/bin/help
```

Thank you for choosing After Dark.
