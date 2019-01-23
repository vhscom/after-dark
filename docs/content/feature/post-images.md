+++
title = "Post Images"
description = "Add large hero images without touching an image editor."
categories = ["experience"]
tags = ["performance", "imaging", "graphics", "posts"]
features = ["code highlighter", "snippets", "related content"]
todo = [
  "normalize with the actual code to create a responsive post image"
]
+++

{{< figure
  src="/images/watercolor_pTIyYTqAlF8_w1440h700.jpeg"
  alt="Map image"
  lqipsrc="/images/watercolor_pTIyYTqAlF8_w936h455.jpeg"
>}}

Add visual appeal to your posts with post images. Post images appear above post content and leverage {{< external href="https://gohugo.io/content-management/image-processing/" text="Hugo Image Processing" />}} and [Lazy Loading](../lazy-loading) to provide fully automatic, lazy-loaded responsive images with <abbr title="Low-Quality Image Placeholders">LQIP</abbr> and built-in art direction.

Using post images requires some opinion with regard to the structure of your content. To create a post with a post image you must:

1. Group image and content in a {{< external href="https://gohugo.io/content-management/page-bundles/" text="Page Bundle" />}} as shown below.
2. Update post {{< external href="https://gohugo.io/content-management/front-matter/" text="Front Matter" />}} as described below.

An example page bundle might look like:

```
├── archetypes
├── content
│   └── post
│       └── secure-your-digital-life
│           ├── images
│           │   └── florian-klauer-119557-unsplash.jpg
│           └── index.md
├── layouts
```

With a `header` image specified in `index.md`:

```toml
[[resources]]
  src = "images/*119557*"
  name = "header"
```

{{% hackcss-alert type="info" %}}**Tip:** Orientation is not significant. For optimal display use larger images.{{% /hackcss-alert %}}

Optionally use {{< external "https://gohugo.io/content-management/page-resources/#page-resources-metadata" "Page Resources Metadata" />}} to add [Structured Data]({{< relref "structured-data" >}}) for the image:

```toml
[[resources]]
  src = "images/**291607**.jpg"
  name = "header"
  [resources.params.meta]
    creator = "Marc-Olivier Jodoin"
```

Figure captions are generated automatically when `description` and/or `creator` is specified and may be combined with `sameas` to specify image origin:

```toml
[[resources]]
  src = "images/**291607**.jpg"
  name = "header"
  [resources.params.meta]
    description = "Ottawa road in the evening"
    creator = "Marc-Olivier Jodoin"
    sameas = "https://unsplash.com/photos/NqOInJ-ttqM/ottawa-road-in-the-evening"
```

Override automatic caption using `caption` metadata:

```toml
[[resources]]
  src = "images/**291607**.jpg"
  name = "header"
  [resources.params.meta]
    caption = "Photo by @marcojodoin on Twitter"
    creator = "Marc-Olivier Jodoin"
    license = "https://unsplash.com/license"
    contentlocation = "Ottawa, Canada"
    keywords = ["light trail", "building", "speed", "night"]
```

Hide captions while retaining structured data with `hide_caption` param:

```toml
[[resources]]
  src = "images/**291607**.jpg"
  name = "header"
  [resources.params]
    hide_caption = true
  [resources.params.meta]
    creator = "Marc-Olivier Jodoin"
    sameas = "https://unsplash.com/photos/NqOInJ-ttqM/ottawa-road-in-the-evening"
    contentlocation = "Ottawa, Canada"
```

All available metadata provided in examples above.
