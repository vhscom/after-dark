+++
title = "Toxic Swamp"
slug = "toxic-swamp"
description = "Monero/Aeon Web Miner add-on module for After Dark."
summary = "Monero/Aeon Web Miner."
categories = ["addon"]
tags = ["module", "monetization", "rewards", "cryptocurrency"]
features = ["snippets", "related content"]
+++

Monetize attention in one of more than 40 cryptocurrency mining pools and take home 200% more per hash when compared to Coinhive.[^1]

{{< hackcss-alert >}}
<img width="746" height="466" alt="Toxic Swamp screenshot" src="/images/screenshots/after-dark-v6.15.0-homepage-fs8.png">
{{< /hackcss-alert >}}

# Features

- Earn cryptocurrency while visitors browse your sites
- Reward effort during site development and publishing
- Transparent, unobtrusive multilingual user interface
- Does not use cookies or connect to any third-parties
- Obfuscates end-user IPs and other connection details
- Automatically starts when external power is detected
- Suspends operation during loss of power or attention
- Optimized for low-bandwidth high-latency connections

# Installation

Choose a module download source:

- {{< external "https://www.npmjs.com/package/toxic-swamp" />}} - npm
- {{< external "https://www.jsdelivr.com/package/npm/toxic-swamp" />}} - cdn
- {{< external "https://codeberg.org/vhs/toxic-swamp" />}} - git

Extract module contents into site themes directory:

```
├── static
└── themes
    ├── after-dark
    └── toxic-swamp
```

Verify [Release Hash](/feature/release-hashes) and GPG signature:

```sh
cd themes/toxic-swamp && \
npm install && npm run integrity && \
git tag --verify v1.0.0-beta.16
```

Specify module in site config:

{{< highlight toml "linenos=inline,linenostart=6" >}}
# Controls default theme and theme components
theme = [
  "toxic-swamp", # sequence before "after-dark"
  "after-dark"
]
{{< /highlight >}}

<a id="config-generator"></a>
Generate module config to begin earning rewards:

{{< hackcss-card header="Interactive Config Generator" >}}
  <style>.form { width: unset; }</style>
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
    {{< hackcss-alert type="warning" class="js-useonlinehelp" >}}
      Please use <a href="/feature/online-help">Online Help</a> to generate configuration with <a href="/feature/air-gapping/">Air Gapping</a>.
    {{< /hackcss-alert >}}
    {{< hackcss-alert type="warning" class="js-disconnect" >}}
      <style>.js-disconnect { display: none }</style>
      Please <a href="/feature/air-gapping">Disconnect</a> from the network before generating your configuration.
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
      <p>Optional. <a href="#create-your-own-proxy">Create Your Own Proxy</a> before using.</p>
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

Unless configuring `Advanced Settings` no other set-up is required.

# Earning Rewards

Using [The Fire Swamp](#the-fire-swamp) with a configured payout address, you may view your hash metrics and payout information from the {{< external href="https://moneroocean.stream/?dark#/dashboard" text="MoneroOcean Dashboard" />}}:

{{< figure alt="MoneroOcean Dashboard screenshots"
  src="/images/screenshots/monero-ocean-dashboard-fs8.png"
  caption="Monero Ocean Dashboard showing Toxic Swamp mining activity."
>}}

See the MoneroOcean {{< external href="https://moneroocean.stream/?dark#/help/faq" text="FAQ" />}} for more details.

# The Fire Swamp

After Dark provides upgrade incentives The Fire Swamp using {{< external href="https://moneroocean.stream/?dark" text="MoneroOcean" />}} to help you get started and as a fallback when custom proxies fail to connect.

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

# Create Your Own Proxy

Advanced users may wish to configure their own proxy servers.

{{% hackcss-alert type="warning" %}}**Warning:** When creating your own proxy consider adding an "Indemnification" clause in a prominent location on your website, app or SaaS.{{% /hackcss-alert %}}

advanced settings when running the [Config Generator](#config-generator) and stand up your proxy using the proxy server described in more detail here:

<details>
<summary>Expand to view details</summary>

Use the instructions in {{< external "https://codeberg.org/vhs/webminerpool" />}} to stand up your own proxy server and reference the following to understand connection activity:

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
      <td>I</td>
      <td>C</td>
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

</details>

Enable debugging to output detailed socket messages from the proxy to the browser console by adding the following to your site config:

```toml
[params.modules.toxic_swamp]
  debugging = true
```

# Internationalization

Included languages available for UI presentation:

- English
- Indonesian
- Russian

Use `languageCode` in site config to control display language:

```toml
languageCode = "en-US" # English (United States) or English by default
languageCode = "id-ID" # Indonesian (Indonesia) or Indonesian, if available
languageCode = "ru-RU" # Russian (Russia) or Russian, if available
```

{{< hackcss-alert type="info" >}}
<strong>Note:</strong> Language tag syntax is defined by the <abbr title="Internet Engineering Task Force">IETF</abbr>'s {{< external href="https://tools.ietf.org/html/bcp47" text="BCP 47" />}}.
{{< /hackcss-alert >}}

Customize translations without modifying source:

<details>
<summary>Expand to view details</summary>

Modify translations from `inline.jsonld.html` in your site `layouts` directory. If the file doesn't exist yet, copy it from module default:

```sh
mkdir -p layouts/partials/modules/toxic-swamp/ && \
cp themes/toxic-swamp/layouts/partials/modules/toxic-swamp/inline.jsonld.html $_
```

Whitelist available `translations` for module in site config using override:

```toml
[params.modules.toxic_swamp]
  translations = ["id", "ru"] # Override available English translations
```

Remove any customizations to return to module defaults.

</details>

# Indemnification

Though not specifically required, you may choose to place an indemnity clause in a prominent — or obvious — location within your website, app or service.

An example clause might look like the following:

<b><i>By using [Site] you acknowledge you are the sole owner of the computer or device used to connect to [Site] and hereby agree to indemnify, defend, and hold harmless [Site] in any matter arising from or in relation to the unauthorized use thereof.</i></b>

The clause intends to limit liability should someone attempt to use [Site] in a way which may be construed by another as illicit.

{{< blockquote
  text="Hanlon's Razor: Never attribute to malice that which can be adequately explained by stupidity."
  cite="Robert Heinlein, Logic of Empire (1941)"
/>}}

[^1]: Estimate assumes 50%  {{< external href="https://coinhive.com/info/faq#rev-share" text="non-negotiable" />}} Coinhive mining fee compared with 0% for {{< external href="https://moneroocean.stream/?dark#/help/faq" text="MoneroOcean" />}} and excludes upgrade incentives, hashrate variance, pool and proxy uptime, withdrawal fees and other optimizations.
