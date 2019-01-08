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

1. Bundle image and content in a directory as shown below.
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

That's it! After Dark does the rest.

For help understanding bundles see {{< external href="https://gohugo.io/content-management/page-bundles/" text="Page Bundles in Hugo" />}}.
