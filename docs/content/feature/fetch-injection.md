+++
title = "Fetch Injection"
description = "Load external scripts and styles with incredible speed."
categories = ["experience"]
tags = ["performance", "styles"]
features = ["snippets", "related content", "code highlighter"]
+++

After Dark uses the {{< external rel="external help" href="https://codeberg.org/vhs/vhs/fetch-inject" text="Fetch Inject" />}} library to load and execute external scripts and styles faster than browsers are natively capable of themselves.

{{< external href="https://hackcabin.com/post/managing-async-dependencies-javascript/" text="Fetch Injection" />}} was conceptualized and first developed specifically for After Dark to make it possible to deep-link to full-sized [PhotoSwipe  Gallery](/module/hall-of-mirrors) images near-instantly and some other useful performance applications:

<table>
  <thead>
    <tr>
      <th rowspan="2" scope="col">Use Case</th>
      <th colspan="2" scope="col">Google Chrome Performance Comparison</th>
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

Use Fetch Inject in your [Custom Layouts](../custom-layouts) to load scripts and styles from your site `static` directory or include cross-origin resources:

{{< highlight html "linenos=inline" >}}
<script>
  fetchInject(['/js/baffle.min.js']).then(() => {
    baffle('header h1').start().reveal(1000);
  })
</script>
{{< /highlight >}}

Fetch Inject is non-blocking, has 0 dependencies and is already included for use on all pages within After Dark. See {{< external rel="external help" href="https://codeberg.org/vhs/vhs/fetch-inject" text="Fetch Inject" />}} for additional use cases.
