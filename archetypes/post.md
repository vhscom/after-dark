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

Welcome to After Dark. Before continuing please adjust your `post` archetype. Archetypes are located in the `archetypes` directory of your site.

If the file does not exist yet, copy it from the After Dark post archetype:

```sh
$ cd flying-toasters
$ cp themes/after-dark/archetypes/post.md archetypes/
```

Once created, edit `post.md` from your `archetypes` directory to remove the content below the {{< external href="https://gohugo.io/content-management/front-matter/" text="Front Matter" />}} and try generating a new post to serve:

```sh
$ hugo new post/once-upon-midnight-dreary.md
$ hugo serve --navigateToChanged
```

Archetypes help establish defaults for your {{< external rel="help" target="_self" href="http://localhost:1414/feature/custom-layouts" text="Custom Layouts" />}} and other content types. To learn more about them visit {{< external href="https://gohugo.io/content-management/archetypes/" text="Archetypes in Hugo" />}}.

<!--more-->

---

{{< hackcss-alert type="info" >}}
<strong>Note:</strong> This text appears below the {{< external href="https://gohugo.io/content-management/summaries/" text="Summary Split" />}}.
{{< /hackcss-alert >}}

After Dark features a {{< external rel="help" target="_self" href="http://localhost:1414/feature/module-system" text="Module System" />}} and provides a number of optional add-on modules specifically designed to enhance your site. For example, here's a `canvas` animation made possible using the {{< external rel="help" target="_self" href="http://localhost:1414/module/fractal-forest" text="Fractal Forest" />}} module:

![BPG animation example](/bpg/cinemagraph-6.bpg)

Fractal Forest uses Fabrice Bellard's {{< external href="https://bellard.org/bpg/" text="BPG Image format" />}} and gives After Dark the ability to render BPG-encoded images such as the above animation, which is ~98% smaller in filesize than its GIF counterpart.

If you do not see the above animation, you may install the module yourself or simply reinstall After Dark using the provided {{< external rel="help" target="_self" href="http://localhost:1414/feature/quick-installer" text="Quick Installer" />}}.

To learn about other modules and features please spend some time reviewing the {{< external rel="help" target="_self" href="http://localhost:1414/feature/online-help" text="Online Help" />}} linked here and also made available at {{< external href="https://vhs.codeberg.page/after-dark" />}}.

If online help is not running, you may start it with the following command:

```sh
$ ./themes/after-dark/bin/help
```

Thank you for choosing After Dark.
