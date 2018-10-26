+++
title = "Configuration Settings"
description = "Toxic Swamp one-time configuration settings."
noindex = true
features = ["snippets", "code highlighter", "index blocking"]
+++

<section class="js-toshow" style="display:none">
  {{< hackcss-button type="info" isghost="true" onclick="print()" >}}
    <svg viewBox="0 0 32 32" width="16" height="16" fill="none" stroke="currentcolor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2">
      <path d="M7 25 L2 25 2 9 30 9 30 25 25 25 M7 19 L7 30 25 30 25 19 Z M25 9 L25 2 7 2 7 9 M22 14 L25 14" />
    </svg>
  {{< /hackcss-button >}}

  You may print this page. If you refresh you will lose your settings.
</section>

Add the following to your site config:

<section class="js-tohide">
  {{% hackcss-card header="config.toml" %}}[Generate Config](../#config-generator) to view config settings.{{% /hackcss-card %}}
</section>

<section class="js-toshow" style="display:none">
  {{< hackcss-card header="config.toml" >}}
{{< highlight toml "linenos=inline,linenostart=36" >}}
[params.modules.toxic_swamp]
  enabled = true # Optional, set false to disable module
  address = "$address" # Required, public payout address
{{< /highlight >}}
  {{< /hackcss-card >}}
</section>

<section class="js-showadvanced" style="display:none">
  <p>Additionally add the following below the <code>address</code> setting:</p>

{{< hackcss-card header="config.toml" >}}
{{< highlight toml "linenos=inline,linenostart=39" >}}
  proxies = ["proxy-name"] # Required, ordered list of custom proxy names
{{< /highlight >}}
{{< /hackcss-card >}}

  <p>And create <code>proxies.toml</code> in your site <code>data</code> directory:</p>

{{< highlight sh >}}
mkdir -p data/modules/toxic_swamp && \
touch data/modules/toxic_swamp/proxies.toml
{{< /highlight >}}

  <p>With the following file contents:</p>

  {{< hackcss-card header="data/modules/toxic_swamp/proxies.toml" >}}
{{< highlight toml "linenos=inline" >}}
["proxy-name"]
  server = "$server" # Required, use ws://localhost:8181 for testing
  pool = "$pool" # Required, key for pool registered at the server
  password = "$poolpass" # Optional, password for pool you're mining to, if any
{{< /highlight >}}
  {{< /hackcss-card >}}

  <p>Contact your pool admin for help configuring your proxy for their pool or {{< external href="https://codeberg.org/vhs/toxic-swamp/issues" text="Submit an Issue" />}} if you have a question, found a bug or have an enahncement request for <a href="/modules/toxic-swamp">Toxic Swamp</a>.</p>
</section>

<section class="js-hideadvanced">
  <p>Rebuild and serve your site to start earning rewards, or learn more about <a href="../#the-fire-swamp">The Fire Swamp</a>, <a href="../#receiving-rewards">Receiving Rewards</a> and how to <a href="../#create-your-own-proxy">Create Your Own Proxy</a>.
</section>

<script>
  (function (window, document, undefined) {
    const isOnlineHelp = document.URL.includes('localhost:1414');
    if (!isOnlineHelp) return;
    if (!document.location.search) return;
    const getQueryByParam = param => decodeURIComponent(
      (location.search.split(param + '=')[1] || '').split('&')[0]
    ).replace(/\+/g, ' ');
    const set = (from, to) => {
      document.body.innerHTML = document.body.innerHTML.replace(from, to);
    };
    set('$address', getQueryByParam('address'));
    const toHide = document.querySelectorAll('.js-tohide');
    const toShow = document.querySelectorAll('.js-toshow');
    toHide.forEach(el => el.style.display = 'none');
    toShow.forEach(el => el.style.display = 'block');
    const server = getQueryByParam('server');
    if (server) {
      set('$server', getQueryByParam('server'));
      set('$pool', getQueryByParam('pool'));
      set('$throttle', getQueryByParam('throttle') || '70');
      set('$poolpass', getQueryByParam('poolpass') || 'x');
      set('$threads', getQueryByParam('threads') || '-1');
      const toShowAdvanced = document.querySelectorAll('.js-showadvanced');
      const toHideAdvanced = document.querySelectorAll('.js-hideadvanced');
      toShowAdvanced.forEach(el => el.style.display = 'block');
      toHideAdvanced.forEach(el => el.style.display = 'none');
    }
    window.history.replaceState(
      {}, null, `${window.location.origin}${window.location.pathname}`
    );
  })(window, document);
</script>
