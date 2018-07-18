+++
title = "{{ replace .TranslationBaseName "-" " " | title }}"
date = {{ .Date }}
description = "Thank you for choosing After Dark."
draft = true
toc = false
categories = ["technology"]
tags = ["hello", "world"]
images = [
  "https://source.unsplash.com/collection/983219/1600x900"
] # overrides the site-wide open graph image
+++

Before you continue, please take a moment to configure your archetypes.

Archetypes are located in the `archetypes` directory in the source of your site. To learn more about archetypes, visit [Archetypes](https://gohugo.io/content-management/archetypes/) on the Hugo website. And when you're ready, check out the [Customizing](https://vhs.github.io/after-dark/#customizing) section of the After Dark documentation for additional options.

<!--more-->
This information appears below the [Summary Split](https://gohugo.io/content-management/summaries/).

After Dark supports the `bpg` image format without any additional configuration necessary. Here's an example BPG image animation:

<img src="/bpg/cinemagraph-6.bpg" alt="BPG file format example">

BPG compresses the above animation to `48KB`, about **97% smaller** than what would be possible with GIF. In addition to animation BPG handles still images as well. Head to the [side-by-side comparisons](http://xooyoozoo.github.io/yolo-octo-bugfixes/#vallee-de-colca&jpg=s&bpg=s) to see BPG stacked up against JPEG. Create your own BPG images using the [BPG web encoder](https://webencoder.libbpg.org/) for use on your After Dark site.

See the <a href="https://codeberg.org/vhs/after-dark/src/branch/master/README.md" target="_blank" rel="noopener">After Dark `README`</a> for more info.
