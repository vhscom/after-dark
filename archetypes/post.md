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

Before you continue please take a moment to configure your archetypes. Archetypes are located in the `archetypes` directory of your site. To learn more about archetypes visit the [Archetypes](https://gohugo.io/content-management/archetypes/) page on the Hugo website. Click `Read more` to continue.

<!--more-->
This information appears below the [Summary Split](https://gohugo.io/content-management/summaries/).

After Dark ships with a custom module system and provides a number of prebuilt modules. Shown here, an animation made possible by the `Fractal Forest` module:

<img width="494" height="371" src="/bpg/cinemagraph-6.bpg" alt="BPG file format example">

The Fractal Forest module gives After Dark the special ability to render images encoded using Fabrice Bellard's [BPG Image format](https://bellard.org/bpg/) and comes preinstalled for sites set-up using the installation script located in the `bin` directory.

To learn more about After Dark modules and how to configure your site please see the [`README`](https://codeberg.org/vhs/after-dark#after-dark) once you've configured your `archetypes`.
