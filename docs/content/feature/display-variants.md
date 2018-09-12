+++
title = "Display Variants"
description = "Choose one of eight included skin styles."
categories = ["customizing"]
tags = ["color", "style", "branding"]
features = ["code highlighter", "snippets", "related content"]
+++

After Dark uses {{< external href="https://hackcss.egoist.moe" text="hackcss" />}} to provide four color palettes and two display modes. Toggle between them from {{< external href="https://gohugo.io/getting-started/configuration/" text="Site Configuration" />}} for 8 possible styles.

<style>table[summary] td pre { margin:0 }</style>
<table summary="Display Variations">
  <thead>
    <tr>
      <th rowspan="2">Palette</th>
      <th colspan="2">Mode</th>
    </tr>
    <tr>
      <th>Hack</th>
      <th>Standard</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>Dark</td>
      <td><i>None required.</i></td>
      <td class="highlight">
        <pre><code><span class="p">[</span><span class="nx">params</span><span class="p">.</span><span class="nx">hackcss</span><span class="p">]</span>
  <span class="nx">mode</span> <span class="p">=</span> <span class="s2">&quot;standard&quot;</span></code></pre>
      </td>
    </tr>
    <tr>
      <td style="background-color:#181818;color:#ccc">Dark Grey</td>
      <td class="highlight">
        <pre><code><span class="p">[</span><span class="nx">params</span><span class="p">.</span><span class="nx">hackcss</span><span class="p">]</span>
  <span class="nx">palette</span> <span class="p">=</span> <span class="s2">&quot;dark-grey&quot;</span></code></pre>
      </td>
      <td class="highlight">
        <pre><code><span class="p">[</span><span class="nx">params</span><span class="p">.</span><span class="nx">hackcss</span><span class="p">]</span>
  <span class="nx">mode</span> <span class="p">=</span> <span class="s2">&quot;standard&quot;</span>
  <span class="nx">palette</span> <span class="p">=</span> <span class="s2">&quot;dark-grey&quot;</span></code></pre>
      </td>
    </tr>
    <tr>
      <td style="background-color:#073642;color:#78909c">Solarized Dark</td>
      <td class="highlight">
        <pre><code><span class="p">[</span><span class="nx">params</span><span class="p">.</span><span class="nx">hackcss</span><span class="p">]</span>
  <span class="nx">palette</span> <span class="p">=</span> <span class="s2">&quot;solarized-dark&quot;</span></code></pre>
      </td>
      <td class="highlight">
        <pre><code><span class="p">[</span><span class="nx">params</span><span class="p">.</span><span class="nx">hackcss</span><span class="p">]</span>
  <span class="nx">mode</span> <span class="p">=</span> <span class="s2">&quot;standard&quot;</span>
  <span class="nx">palette</span> <span class="p">=</span> <span class="s2">&quot;solarized-dark&quot;</span></code></pre>
      </td>
    </tr>
    <tr>
      <td style="background-color:#fff;color:#000">Light</td>
      <td class="highlight">
        <pre><code><span class="p">[</span><span class="nx">params</span><span class="p">.</span><span class="nx">hackcss</span><span class="p">]</span>
  <span class="nx">palette</span> <span class="p">=</span> <span class="s2">&quot;light&quot;</span></code></pre>
      </td>
      <td class="highlight">
        <pre><code><span class="p">[</span><span class="nx">params</span><span class="p">.</span><span class="nx">hackcss</span><span class="p">]</span>
  <span class="nx">mode</span> <span class="p">=</span> <span class="s2">&quot;standard&quot;</span>
  <span class="nx">palette</span> <span class="p">=</span> <span class="s2">&quot;light&quot;</span></code></pre>
      </td>
    </tr>
  </tbody>
</table>

The default display variant uses the `dark` color palette with the `hack` display mode. No configuration is necessary to use the default display variant.

Disable display variants entirely with `disabled = true`:

```toml
[params.hackcss]
  disabled = true # disable the display variant
```

When changing variants review [Custom Styles](../custom-styles), [Trim Color](../trim-color) and [Error Page](../error-page), making any adjustments necessary to achieve the desired look-and-feel.
