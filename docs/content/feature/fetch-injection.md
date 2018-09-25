+++
title = "Fetch Injection"
description = "Load external scripts and styles with incredible speed."
categories = ["experience"]
tags = ["performance", "styles"]
features = ["snippets", "related content", "code highlighter"]
+++

After Dark uses the {{< external rel="external help" href="https://codeberg.org/vhs/vhs/fetch-inject" text="Fetch Inject" />}} library to load and execute external scripts and styles faster than browsers are capable of otherwise.

{{< external href="https://hackcabin.com/post/managing-async-dependencies-javascript/" text="Fetch Injection" />}} was conceptualized and developed for After Dark to make it possible to deep-link to full-sized [Image Gallery](/module/hall-of-mirrors) images without blocking page load and has other performance applications:

<table>
  <thead>
    <tr>
      <th rowspan="2" scope="col">Use Case</th>
      <th colspan="2" scope="col">Chrome Performance Comparison (4G simulated connection speed)</th>
    </tr>
    <tr>
      <th scope="col">Without Fetch Inject</th>
      <th scope="col">With Fetch Inject</th>
    </tr>
  </thead>
  <tbody>
    <td>{{< external href="https://vhs.codeberg.page/talks/screaming-fast-wordpress-redis-vultr/" text="WordPress Twenty Seventeen" />}}</td>
    <td>~3.600s</td>
    <td>~0.918s</td>
  </tbody>
</table>

Use Fetch Inject in your [Custom Layouts](../custom-layouts) to load scripts and styles cross-origin or from your site `static` directory.

Given the following `static` folder contents:

```
├── layouts
├── static
│   ├── js
│   │   ├── jquery.slim.min.js
│   │   ├── tether.min.js
│   │   └── bootstrap.min.js
│   └── css
│       └── font-awesome.min.css
└── themes
```

You can dynamically load the entire Bootstrap 4 library including with Web Fonts on-the-fly:

{{< highlight html "linenos=inline" >}}
<script>
  fetchInject(['/js/bootstrap.min.js'],
    fetchInject([
      'jquery.slim.min.js',
      'tether.min.js',
      'font-awesome.min.css'
    ])
  ])
</script>
{{< /highlight >}}

Fetch Inject is non-blocking, has 0 dependencies and is included on all pages within After Dark by default. See {{< external rel="external help" href="https://codeberg.org/vhs/vhs/fetch-inject" text="Fetch Inject" />}} for additional use cases.
