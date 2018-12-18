+++
title = "Toxic Swamp"
slug = "toxic-swamp"
description = "CryptoNote/Aeon Web Miner add-on module for After Dark."
summary = "CryptoNote/Aeon Web Miner."
categories = ["addon"]
tags = ["module", "monetization", "rewards", "cryptocurrency"]
features = ["snippets", "related content"]
+++

<a id="footnote-return"></a>
Monetize attention in one of more than 40 cryptocurrency mining pools and take home over 200% more per hash when compared to Coinhive.<sup><a href="#mining-footnote">†</a></sup>

<section>
  <style>.form { width: unset }</style>
  {{< hackcss-grid >}}
    {{< hackcss-cell class="-4of12" >}}
      {{< hackcss-card header="Step 1" >}}
        {{< hackcss-form action="https://codeberg.org/vhs/toxic-swamp/releases" >}}
          {{< hackcss-button type="primary" isblock="true" isghost="true" >}}
            <svg class="i-download" viewBox="0 0 32 32" width="24" height="24" fill="none" stroke="currentcolor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2">
              <path d="M9 22 C0 23 1 12 9 13 6 2 23 2 22 10 32 7 32 23 23 22 M11 26 L16 30 21 26 M16 16 L16 30"></path>
            </svg>&nbsp;&nbsp;Download
          {{< /hackcss-button >}}
        {{< /hackcss-form >}}
      {{< /hackcss-card >}}
    {{< /hackcss-cell >}}
    {{< hackcss-cell class="-4of12" >}}
      {{< hackcss-card header="Step 2" >}}
        {{< hackcss-form action="#installation" >}}
          {{< hackcss-button type="info" isblock="true" isghost="true" >}}
            <svg id="source" aria-labelledby="source-label" class="i-code" viewBox="0 0 32 32" width="24" height="24" fill="none" stroke="currentcolor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2">
              <path d="M10 9 L3 17 10 25 M22 9 L29 17 22 25 M18 7 L14 27" />
            </svg>&nbsp;&nbsp;Install
          {{< /hackcss-button >}}
        {{< /hackcss-form >}}
      {{< /hackcss-card >}}
    {{< /hackcss-cell >}}
    {{< hackcss-cell class="-4of12" >}}
      {{< hackcss-card header="Step 3" >}}
        {{< hackcss-form action="#receiving-rewards" >}}
          {{< hackcss-button type="success" isblock="true" isghost="true" >}}
            <svg id="i-creditcard" viewBox="0 0 32 32" width="24" height="24" fill="none" stroke="currentcolor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2">
              <path d="M2 7 L2 25 30 25 30 7 Z M5 18 L9 18 M5 21 L11 21" />
              <path d="M2 11 L2 13 30 13 30 11 Z" fill="currentColor" />
            </svg>&nbsp;&nbsp;Profit
          {{< /hackcss-button >}}
        {{< /hackcss-form >}}
      {{< /hackcss-card >}}
    {{< /hackcss-cell >}}
  {{< /hackcss-grid >}}
</section>

Basic set-up is simple. October 2018 hard fork supported. Works with both Cryptonight and Cryptonight-Light. {{< external text="Kovri I2P Router" href="https://getkovri.org" />}} integration anticipated.

## Demo

{{< hackcss-alert >}}
  <video controls preload="auto" width="100%">
    <source src="https://vhs.keybase.pub/toxic-swamp-demo.mp4" type="video/mp4">
    <p>Your browser doesn't support HTML5 video. Here is a <a href="https://vhs.keybase.pub/after-dark-web-mining-prototype.mp4">link to the video</a> instead.</p>
  </video>
{{< /hackcss-alert >}}

## Features

Interface:

- At-a-glance hash metrics
- Transparent worker state
- User-adjustable hashrate
- Detailed status messages
- One-click on/off setting
- Accessible user controls

Behavior:

- Auto-starts with simple opt-out
- Disables itself unless charging
- Remembers user-defined settings
- Purges user data following session
- Enters standby when attention lost
- Obfuscates proxy server settings
- Obfuscates end-user IP via proxy

Technical:

- Efficient client miner using ASM/WASM
- Rust proxy server with full sources
- WebSocket persists proxy connection
- Compiles with Mono or Mono in Docker
- Comprehensive pool settings included
- Configurable client-side debugging
- Loads quickly with [Fetch Injection](/feature/fetch-injection)
- Uses automatic multi-thread detection
- Automatic TLS certs with cron renewal

## Installation

Depending on your configuration Toxic Swamp can be run stand-alone using [The Fire Swamp](#the-fire-swamp) proxy or full-stack using the source code included in the module.

Choose a module download source:

- {{< external "https://www.npmjs.com/package/toxic-swamp" />}}
- {{< external "https://www.jsdelivr.com/package/npm/toxic-swamp" />}}
- {{< external "https://codeberg.org/vhs/toxic-swamp" />}}

Extract module contents into site themes directory:

```
├── static
└── themes
    ├── after-dark
    └── toxic-swamp
```

Specify module in site config:

{{< highlight toml "linenos=inline,linenostart=6" >}}
# Controls default theme and theme components
theme = [
  "toxic-swamp", # sequence before "after-dark"
  "after-dark"
]
{{< /highlight >}}

{{< hackcss-alert type="success" >}}
Miner functional! It's recommended you run your own proxy during the beta. <span hidden>A few more steps and you'll be safe in the fire swamp.</span>
{{< /hackcss-alert >}}

Optionally, verify the module [Release Hash](/feature/release-hashes):

```sh
cd themes/toxic-swamp && \
npm install && npm run integrity
```

<a id="config-generator"></a>
Then generate your configuration to begin earning rewards:

{{< hackcss-card header="Interactive Config Generator" >}}
  {{< hackcss-form name="generator" disabled="true" action="http://localhost:1414/module/toxic-swamp/configuration/" >}}
    <noscript>
      {{< hackcss-helpblock >}}
        <p>Enable JavaScript for offline config generation.</p>
      {{< /hackcss-helpblock >}}
    </noscript>
    {{< hackcss-alert type="warning" class="js-usesameorigin" >}}
      <style>.js-usesameorigin { display: none }</style>
      <strong>NOPE!</strong> Attempting to submit to unknown origin.
    {{< /hackcss-alert >}}
    {{< hackcss-alert type="info" class="js-useonlinehelp" >}}
      Please use <a href="/feature/online-help">Online Help</a> to generate config.
    {{< /hackcss-alert >}}
    {{< hackcss-alert type="info" class="js-disconnect" >}}
      <style>.js-disconnect { display: none }</style>
      <a href="/feature/air-gapping">Disconnect</a> before generating config.
    {{< /hackcss-alert >}}
    {{< hackcss-formgroup name="addressgroup" >}}
      {{< hackcss-label for="address" >}}
        <abbr title="Monero">XMR</abbr> Address:
      {{< /hackcss-label >}}
      {{< hackcss-textinput
          required="true"
          disabled="true"
          type="text" id="address" name="address"
          placeholder="44ky1q4d..."
          pattern="^4[0-9AB][123456789ABCDEFGHJKLMNPQRSTUVWXYZabcdefghijkmnopqrstuvwxyz]{93}$"
      >}}
      {{< hackcss-helpblock >}}
        Enter payout address. {{< external href="https://getmonero.org/resources/user-guides/securely_purchase.html" >}}Create Secure Wallet{{< /external >}}.
      {{< /hackcss-helpblock >}}
    {{< /hackcss-formgroup >}}
    {{< hackcss-buttongroup formactions="true" >}}
      {{< hackcss-button class="muted" name="generate" type="success" text="Generate Config" disabled="true" />}}
    {{< /hackcss-buttongroup >}}
    <details>
      <summary>Advanced Settings</summary>
      <p>Optional. <a href="#create-your-own-proxy">Create Your Own Proxy</a> before specifying advanced settings.</p>
      {{< hackcss-formgroup name="servergroup" >}}
        {{< hackcss-label for="server" text="Proxy Server:" />}}
        {{< hackcss-textinput type="url" id="server" name="server" placeholder="wss://domain.example:80" >}}
        {{< hackcss-helpblock >}}
          Web Socket URL for custom proxy server.
        {{< /hackcss-helpblock >}}
      {{< /hackcss-formgroup >}}
      {{< hackcss-formgroup name="poolgroup" >}}
        {{< hackcss-label for="pool" text="Mining pool:" />}}
        {{< hackcss-select id="pool" name="pool" >}}
          <option>moneroocean.stream</option>
          <option>etn.nanopool.org</option>
          <option>monero.hashvault.pro</option>
          <option>minemonero.pro</option>
          <option>moneroocean.stream:100</option>
          <option>aeon-pool.com</option>
          <option>aeon-pool.sytes.net</option>
          <option>aeonpool.xyz</option>
          <option>trtl.flashpool.club</option>
          <option>aeonpool.dreamitsystems.com</option>
          <option>clawde.xyz</option>
          <option>xmr.prohash.net</option>
          <option>aeon.uax.io</option>
          <option>aeonpool.net</option>
          <option>xmrminerpro.com</option>
          <option>minercircle.com</option>
          <option>xmrpool.net</option>
          <option>supportaeon.com</option>
          <option>usxmrpool.com</option>
          <option>aeonminingpool.com</option>
          <option>supportxmr.com</option>
          <option>aeonhash.com</option>
          <option>minexmr.com</option>
          <option>pooltupi.com</option>
          <option>xmrpool.eu</option>
          <option>slowandsteady.fun</option>
          <option>etn.hashvault.pro</option>
          <option>poolmining.org</option>
          <option>aeon.rupool.tk</option>
          <option>aeon.semipool.com</option>
          <option>etn.spacepools.org</option>
          <option>osiamining.com</option>
          <option>durinsmine.com</option>
          <option>dwarfpool.com</option>
          <option>arhash.xyz</option>
          <option>xmr.nanopool.org</option>
          <option>aeon.hashvault.pro</option>
          <option>minereasy.com</option>
          <option>moneropool.com</option>
          <option>aeon.n-engine.com</option>
          <option>aeon.sumominer.com</option>
          <option>monerohash.com</option>
          <option>monero.crypto-pool.fr</option>
        {{< /hackcss-select >}}
        {{< hackcss-helpblock >}}
          Select a {{< external href="https://codeberg.org/vhs/toxic-swamp/src/branch/master/server/pools.json" text="supported pool" />}} to mine with.
        {{< /hackcss-helpblock >}}
      {{< /hackcss-formgroup >}}
      {{< hackcss-formgroup name="poolpassgroup" >}}
        {{< hackcss-label for="poolpass" text="Password:" />}}
        {{< hackcss-textinput type="password" id="poolpass" name="poolpass" >}}
        {{< hackcss-helpblock >}}
          Password for your pool. Often not needed.
        {{< /hackcss-helpblock >}}
      {{< /hackcss-formgroup >}}
      {{< hackcss-formgroup name="throttlegroup" >}}
        {{< hackcss-label for="throttle" text="Throttle:" />}}
        {{< hackcss-textinput type="number" id="throttle" name="throttle" placeholder="Use 90 for 10% capacity" step="5" min="70" max="90" >}}
        {{< hackcss-helpblock >}}
          Override default of 70 (30% capacity).
        {{< /hackcss-helpblock >}}
      {{< /hackcss-formgroup >}}
      {{< hackcss-formgroup name="useridgroup" >}}
        {{< hackcss-label for="userid" text="User Id:" />}}
        {{< hackcss-textinput type="text" id="userid" name="userid" placeholder="Any string with a length < 200 characters" maxlength="200" >}}
        {{< hackcss-helpblock >}}
          Combine hash metrics for all users.
        {{< /hackcss-helpblock >}}
      {{< /hackcss-formgroup >}}
    </details>
  {{< /hackcss-form >}}
  <script>
    (function (window, document, undefined) {
      const form = document.forms.generator;
      form.reset();
      const isOnlineHelp = document.URL.includes('localhost:1414');
      if (!isOnlineHelp) return;
      form.querySelector('.js-useonlinehelp').style.display = 'none';
      if (window.navigator.onLine) {
        form.querySelector('.js-disconnect').style.display = 'block';
      }
      const activate = () => {
        form.querySelector('.js-disconnect').style.display = 'block';
        form.generate.disabled = true;
        form.address.disabled = true;
        form.address.value = '';
        form.generate.classList.add('muted');
      };
      const deactivate = () => {
        form.querySelector('.js-disconnect').style.display = 'none';
        form.generate.disabled = false;
        form.address.disabled = false;
        form.generate.classList.remove('muted');
      };
      window.addEventListener('online', activate);
      window.addEventListener('offline', deactivate);
      if (!window.navigator.onLine) deactivate();
      form.addEventListener('submit', evt => {
        evt.preventDefault();
        const isLocal = document.location.host.includes('localhost');
        const hasSameOrigin = form.action.includes(document.location.origin);
        if (isLocal && hasSameOrigin) {
          evt.target.submit();
        } else {
          form.querySelector('.js-usesameorigin').style.display = 'block';
          deactivate();
        }
      })
    })(window, document);
  </script>
{{< /hackcss-card >}}

Unless you specify a custom proxy you will begin mining in [The Fire Swamp](#the-fire-swamp). Use `Advanced Settings` to set a custom proxy or come back later once you've survived the three terrors which lie ahead.

## The Fire Swamp

After Dark provides a proxy called The Fire Swamp using {{< external href="https://moneroocean.stream/?dark" text="MoneroOcean" />}} to help you get started and as a fallback when custom proxies fail to connect.

The proxy servers are located at `fs*.vhs.codeberg.page:80` and will be used by default until you [Create Your Own Proxy](#create-your-own-proxy) or fall more than two major versions behind.

To maximize your rewards while using the Fire Swamp proxy you must try to keep your After Dark version up-to-date as illustrated here:

<style>
  .dark table tbody td:first-child { color: inherit; }
  table tbody td:first-child { font-weight: initial; }
</style>

<table>
  <caption>Figure 1: Fire Swamp upgrade incentive based on After Dark version</caption>
  <thead>
    <tr>
      <th scope="col">Latest Version</th>
      <th scope="col">Your Version</th>
      <th scope="col">Upgrade Incentive</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>7.0.0</td>
      <td>7.0.0</td>
      <td>None</td>
    </tr>
    <tr>
      <td>7.0.2</td>
      <td>7.0.1</td>
      <td>2.2%</td>
    </tr>
    <tr>
      <td>7.1.0</td>
      <td>7.0.2</td>
      <td>13.6%</td>
    </tr>
    <tr>
      <td>8.0.0</td>
      <td>7.1.0</td>
      <td>34.1%</td>
    </tr>
  </tbody>
</table>

To describe in more detail:

- If a bugfix, documentation update, refactoring or other patch release occurs your upgrade incentive is 2.2% of your total combined mining hash power.

- If an enhancement, feature or other minor release occurs your upgrade incentive is 13.6% of your total combined mining hash power.

- If a breaking change, license update or other major release occurs your upgrade incentive is 34.1% of your total combined mining hash power.

- If you fall more than one point release behind any minor or patch release the upgrade incentive will remain the same as if you were only one release behind.

- If you fall more than two majors behind your miner may continue to function but you will be required to upgrade to maintain your upgrade incentive.

Maximize your incentive with reduced effort by using the [Upgrade Script](/feature/upgrade-script/) to  check for and automatically update After Dark to the latest available version.

{{< hackcss-alert type="success" >}}
  <strong>Tip:</strong> After Dark uses {{< external href="https://semver.org" text="Semantic Versioning" />}} and the <code>latest</code> version may be tracked programmatically using on the NPM registry and in JSON form {{< external href="https://registry.npmjs.org/-/package/after-dark/dist-tags" text="here" />}}.
{{< /hackcss-alert >}}

{{< hackcss-alert type="info" >}}
  <strong>Note:</strong> After Dark updates are typically backwards compatible with existing modules though there may be cases where module updates are required.
{{< /hackcss-alert >}}

## Create Your Own Proxy

Specify proxy under advanced settings when generating module config. Use the instructions in {{< external "https://codeberg.org/vhs/webminerpool" />}} to stand up your own proxy server and reference the following to understand connection activity:

<style>
  table { caption-side: bottom; }
  caption { margin-top: 0.5rem; font-variant: all-small-caps; }
  dd, dt { display: inline-block; }
  dt { margin-left: 3rem; }
  dd { width: 10rem; }
</style>
<table>
  <legend>
    Legend
    <dl>
      <dt>A<dd>Active
      <dt>I<dd>Inactive
      <dt>S<dd>Standby
      <dt>E<dd>Error
      <dt>O<dd>Open
      <dt>C<dd>Closed
      <dt>K<dd>Known
      <dt>U<dd>Unknown
    </dl>
  </legend>
  <caption>Figure 2: Miner connection activity by device, proxy and toolbar state</caption>
  <thead>
    <tr>
      <th colspan="3" scope="col">Device</th>
      <th colspan="3" scope="col">Toolbar</th>
      <th colspan="4" scope="col">Miner</th>
      <th colspan="3" scope="col">Proxy</th>
    </tr>
    <tr>
      <th scope="col">Charging</th>
      <th scope="col">Online</th>
      <th scope="col">Cores</th>
      <th scope="col">Visible</th>
      <th scope="col">Powered</th>
      <th scope="col">Throttle</th>
      <th scope="col">Status</th>
      <th scope="col">Socket</th>
      <th scope="col">Workers</th>
      <th scope="col">Load</th>
      <th scope="col">Online</th>
      <th scope="col">Pool</th>
      <th scope="col">Allow</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>--</td>
      <td>--</td>
      <td>--</td>
      <td>--</td>
      <td>Off</td>
      <td>--</td>
      <td>I</td>
      <td>--</td>
      <td>--</td>
      <td>--</td>
      <td>--</td>
      <td>--</td>
      <td>--</td>
    </tr>
    <tr>
      <td>Yes</td>
      <td>Yes</td>
      <td>8</td>
      <td>No</td>
      <td>On</td>
      <td>Any</td>
      <td>S</td>
      <td>C</td>
      <td>8</td>
      <td>0</td>
      <td>--</td>
      <td>--</td>
      <td>--</td>
    </tr>
    <tr>
      <td>Yes</td>
      <td>No</td>
      <td>8</td>
      <td>Yes</td>
      <td>On</td>
      <td>Any</td>
      <td>S</td>
      <td>E</td>
      <td>8</td>
      <td>0</td>
      <td>--</td>
      <td>--</td>
      <td>--</td>
    </tr>
    <tr>
      <td>No</td>
      <td>Yes</td>
      <td>16</td>
      <td>Yes</td>
      <td>On</td>
      <td>25</td>
      <td>E</td>
      <td>O</td>
      <td>16</td>
      <td>4</td>
      <td>Yes</td>
      <td>K</td>
      <td>Yes</td>
    </tr>
    <tr>
      <td>Yes</td>
      <td>Yes</td>
      <td>16</td>
      <td>Yes</td>
      <td>On</td>
      <td>25</td>
      <td>A</td>
      <td>O</td>
      <td>16</td>
      <td>12</td>
      <td>Yes</td>
      <td>K</td>
      <td>Yes</td>
    </tr>
    <tr>
      <td>Yes</td>
      <td>Yes</td>
      <td>32</td>
      <td>Yes</td>
      <td>On</td>
      <td>50</td>
      <td>A</td>
      <td>O</td>
      <td>32</td>
      <td>16</td>
      <td>Yes</td>
      <td>K</td>
      <td>Yes</td>
    </tr>
    <tr>
      <td>Yes</td>
      <td>Yes</td>
      <td>32</td>
      <td>Yes</td>
      <td>On</td>
      <td>75</td>
      <td>A</td>
      <td>O</td>
      <td>32</td>
      <td>24</td>
      <td>Yes</td>
      <td>K</td>
      <td>Yes</td>
    </tr>
    <tr>
      <td>Yes</td>
      <td>Yes</td>
      <td>64</td>
      <td>Yes</td>
      <td>On</td>
      <td>Any</td>
      <td>S</td>
      <td>E</td>
      <td>64</td>
      <td>0</td>
      <td>Yes</td>
      <td>U</td>
      <td>No</td>
    </tr>
    <tr>
      <td>Yes</td>
      <td>Yes</td>
      <td>64</td>
      <td>Yes</td>
      <td>On</td>
      <td>Any</td>
      <td>S</td>
      <td>E</td>
      <td>64</td>
      <td>0</td>
      <td>No</td>
      <td>--</td>
      <td>--</td>
    </tr>
  </tbody>
</table>

Enable debugging to output detailed socket messages from the proxy to the browser console by adding the following to your site config:

```toml
[params.modules.toxic_swamp]
  debugging = true
```

## Receiving Rewards

If you're using [The Fire Swamp](#the-fire-swamp) with a configured payout address, you may view your accumulated hash totals and payouts from the {{< external href="https://moneroocean.stream/?dark#/dashboard" text="MoneroOcean Dashboard" />}}.

See the {{< external href="https://moneroocean.stream/?dark#/help/faq" text="FAQ" />}} for more details.

---

<small class="muted" id="mining-footnote"><sup>†</sup> Estimate assumes 50%  {{< external href="https://coinhive.com/info/faq#rev-share" text="non-negotiable" />}} Coinhive mining fee compared with 0% for {{< external href="https://moneroocean.stream/?dark#/help/faq" text="MoneroOcean" />}} and excludes optional donation, hashrate variance, uptime, withdrawal fees and optimizations. <a href="#footnote-return">↩</a></small>
