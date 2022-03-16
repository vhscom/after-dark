# Changelog

All notable changes to this project will be documented in this file. See [standard-version](https://github.com/conventional-changelog/standard-version) for commit guidelines.

## 10.0.0 (2022-03-16)


### ⚠ BREAKING CHANGES

* **feature/featured-posts:** Hugo minimum required version now 0.51 (was 0.44)
* **license:** relicensing
* **feature/section-menu:** removes disqus entirely, previously a deprecated feature
* **shortcodes:** shortcodes removed must now be copied to the theme, if used
* **modules:** google analytics no longer supported
* hugo 0.43 and above required. css override file locations have changed
* **$archetypes:** Minimum Hugo version set 0.24, 0.16 - 0.23 must modify archetypes

to upgrade add `date` and `title` to custom archetypes. if using a version of hugo prior to 0.24 the custom templates should remove `title` and `date` and not use go templating logic in the archetype files
* **$archetypes:** Minimum Hugo version set 0.24, 0.16 - 0.23 must modify archetypes
* **$hugo:** Forks and users who've customized css need adjustment as shown in the commit message. There's not a whole lot to it, but it's breaking nonetheless.

Using this approach enables the CSS to be moved from the partials directory into the static
directory where it belonged the whole time. Perfect set-up for those who decide to use http2/h2
server push for loading styles more efficiently.

### Features

* ✨ provide base url in default layout ([c6bdca9](https://codeberg.org/vhs/after-dark/commit/c6bdca97867a7b74b0abe515bbeea3a93290c60d))
* **$archetypes:** turn archetypes into go templates ([31fa67d](https://codeberg.org/vhs/after-dark/commit/31fa67dc203e5451256a9b29e7569a75326b9d70))
* **$archetypes:** turn archetypes into go templates ([3abd132](https://codeberg.org/vhs/after-dark/commit/3abd1323945e6b1b7014b1d599558cba0b7bfea4))
* **$layout:** add base element to base layout ([51d5470](https://codeberg.org/vhs/after-dark/commit/51d5470c7c1099252e6d71181a6779761acfea84)), closes [#60](https://codeberg.org/vhs/after-dark/issues/60)
* **$layout:** Add support for external stylesheets ([3e17349](https://codeberg.org/vhs/after-dark/commit/3e173490fa5e1d98da85a2b0b954b1ed3b1be77f)), closes [#49](https://codeberg.org/vhs/after-dark/issues/49)
* **$layout:** add telegram iv support ([3b47239](https://codeberg.org/vhs/after-dark/commit/3b472398f2137206a7ad811d140501af38b66e4c)), closes [#113](https://codeberg.org/vhs/after-dark/issues/113)
* **$layouts:** add fuzzy search ([fdc16b7](https://codeberg.org/vhs/after-dark/commit/fdc16b754a4f179980f50fbc95206e17963b6a35)), closes [#83](https://codeberg.org/vhs/after-dark/issues/83)
* **$layouts:** add post images ([8645a70](https://codeberg.org/vhs/after-dark/commit/8645a7024bda78bf12c9b9a6cbc57ae2c1bcd314))
* **$layouts:** add twitter cards ([a8931e2](https://codeberg.org/vhs/after-dark/commit/a8931e283cb5274aaf239ebd14fd3fc009056cc7)), closes [#76](https://codeberg.org/vhs/after-dark/issues/76)
* **$layouts:** allow customization of referrer policy and add privacy-focused default ([49eab0a](https://codeberg.org/vhs/after-dark/commit/49eab0ac0fd5772d000ec1d9ba6d8b49056de62c)), closes [#96](https://codeberg.org/vhs/after-dark/issues/96)
* **$layouts:** hide related content reading time on small screen ([cce543a](https://codeberg.org/vhs/after-dark/commit/cce543a09be09f7378b7faa1f8446d456a5e9184))
* **$layouts:** use related content feature introduced in hugo@0.27 ([797f104](https://codeberg.org/vhs/after-dark/commit/797f1045a3bf2b8df7a8cfab7b35ac4d3e453ca1)), closes [#54](https://codeberg.org/vhs/after-dark/issues/54)
* **$partials:** add pubdate structured data to post byline ([00a630b](https://codeberg.org/vhs/after-dark/commit/00a630bdd1378cd88163f589c1bf77133dbc8e2a))
* **$shortcode:** add coub shortcode for gifs with sound ([3557645](https://codeberg.org/vhs/after-dark/commit/355764510fb8e7ef027ff837a21d31c3700f8af4)), closes [#63](https://codeberg.org/vhs/after-dark/issues/63)
* **$shortcodes:** add frame targeting to custom figure shortcode ([aa15c2a](https://codeberg.org/vhs/after-dark/commit/aa15c2abe0001ab775a22ffa37d9d7fe444f2417))
* **$shortcodes:** add youtube without cookies ([23c61c3](https://codeberg.org/vhs/after-dark/commit/23c61c383ca8a7a3914abba26136b6d7f08215e9)), closes [#62](https://codeberg.org/vhs/after-dark/issues/62)
* **$shortcodes:** enable target and method control for button/buttongroup ([9bf0323](https://codeberg.org/vhs/after-dark/commit/9bf032399dcf6f7cea3b72c93567ae76448ac74d)), closes [#56](https://codeberg.org/vhs/after-dark/issues/56)
* **$shortcodes:** make button shortcode clickable ([b2f36d0](https://codeberg.org/vhs/after-dark/commit/b2f36d0c68939e895ba3defdc5941f3ece61d989)), closes [#40](https://codeberg.org/vhs/after-dark/issues/40)
* **$shortcode:** style cite element inside block quotation ([313c59c](https://codeberg.org/vhs/after-dark/commit/313c59c063151f36a991c8177d85e37a29a92327))
* **$theme:** add support for bpg image format ([edfc936](https://codeberg.org/vhs/after-dark/commit/edfc93670a97a4806fef9076dda9df8ea36efc19)), closes [#45](https://codeberg.org/vhs/after-dark/issues/45)
* **bin:** add script to preview site online over https ([4b4a926](https://codeberg.org/vhs/after-dark/commit/4b4a9265c7c8f0de506fed00b0336fe0a27ce8db)), closes [#21](https://codeberg.org/vhs/after-dark/issues/21)
* **feat/extended-builds:** add dockerfile and docker-compose ([2b85129](https://codeberg.org/vhs/after-dark/commit/2b85129df49cd760b9f1dc019e36837e30b53252))
* **feature/code-analysis:** add source build of htmltest ([a6e6f87](https://codeberg.org/vhs/after-dark/commit/a6e6f87871963605a43f60bd18fdd85c0b8d0f62)), closes [#124](https://codeberg.org/vhs/after-dark/issues/124) [#165](https://codeberg.org/vhs/after-dark/issues/165)
* **feature/custom-homepage:** add custom homepage and docs in english ([bcf8363](https://codeberg.org/vhs/after-dark/commit/bcf83639e07da28b79d331f80b1078cc14b3ca85)), closes [#41](https://codeberg.org/vhs/after-dark/issues/41)
* **feature/featured-posts:** allow featured items in posts section ([69c8170](https://codeberg.org/vhs/after-dark/commit/69c817028342553a5b05cf4b2831e574106fdf2f)), closes [#170](https://codeberg.org/vhs/after-dark/issues/170) [#160](https://codeberg.org/vhs/after-dark/issues/160)
* **feature/fuzzy-search:** add app init loading indicator and noscript experience ([cda9655](https://codeberg.org/vhs/after-dark/commit/cda9655bf1f2d689335006b64b40ceb758a84785)), closes [#143](https://codeberg.org/vhs/after-dark/issues/143)
* **feature/fuzzy-search:** add aria landmark to search form ([b6352aa](https://codeberg.org/vhs/after-dark/commit/b6352aaaff7ffcfce0b4432c7333c18e397bb307))
* **feature/post-images:** add image captions and structured data ([e6ca752](https://codeberg.org/vhs/after-dark/commit/e6ca75256e79bf63e97c0876f5be64b9d6ec773c))
* **feature/section-menu:** add support for html link decoration ([2931222](https://codeberg.org/vhs/after-dark/commit/293122295d3accf49de466540e5a3d7da4bdee38))
* **feature/section-menu:** add support for multiple nav menus ([9470ad2](https://codeberg.org/vhs/after-dark/commit/9470ad2c3b350765c8f7b3b330a6f449f09d29c9))
* **feature/security:** add content security policy ([65026e9](https://codeberg.org/vhs/after-dark/commit/65026e9f17ba1e00786af4436b8eb34e0f6c05c5))
* **feature/table-of-contents:** add native smooth-scroll ([4a1a61a](https://codeberg.org/vhs/after-dark/commit/4a1a61afcabc1cc15304f0aaa9c4f8164560cab1)), closes [#43](https://codeberg.org/vhs/after-dark/issues/43)
* **fuzzy-search:** add ability to assign arbitrary hotkeys ([1de2ac0](https://codeberg.org/vhs/after-dark/commit/1de2ac08c655fb024211ac85a5af5f326af2772b)), closes [#74](https://codeberg.org/vhs/after-dark/issues/74)
* **help/homepage:** update security featurette ([eaff0ad](https://codeberg.org/vhs/after-dark/commit/eaff0add822b07a00e3c3bde5f67402468203c53))
* **help:** multipage help docs ([d538861](https://codeberg.org/vhs/after-dark/commit/d538861db724d2b14701553944a88028bf8df5ae)), closes [#61](https://codeberg.org/vhs/after-dark/issues/61)
* **help:** update and run help anytime using included script ([0d82b71](https://codeberg.org/vhs/after-dark/commit/0d82b7131aaeb8b59a3bd1dbb83e4d148632d944))
* **highlighting:** add syntax highlighting ([c9375e4](https://codeberg.org/vhs/after-dark/commit/c9375e4acf36ef769281c3c035e940a8447d9ce4))
* **install:** add installation challenge ([2781a76](https://codeberg.org/vhs/after-dark/commit/2781a76309a4fd0cb376059dcd1c62a8ebfbb65f))
* **install:** faux install validation using npm sha512 digest ([965bf39](https://codeberg.org/vhs/after-dark/commit/965bf39d942cf83c795cbefb8c1f8c6b995fa00c)), closes [#33](https://codeberg.org/vhs/after-dark/issues/33)
* **install:** provide welcome post with online help ([a28b52a](https://codeberg.org/vhs/after-dark/commit/a28b52adccdd06266060257a5386d08be9c3032e))
* **install:** simplify installation ([448934e](https://codeberg.org/vhs/after-dark/commit/448934e45bb83dbbfb8fd4e70e5b435d0945191e))
* **install:** streamline installation ([d5e0ec6](https://codeberg.org/vhs/after-dark/commit/d5e0ec68ea2a003cd51c1fd96e6c2ec06c9f2c48)), closes [#2](https://codeberg.org/vhs/after-dark/issues/2)
* **layout,install:** add automatic syntax highlighting ([b0f4b15](https://codeberg.org/vhs/after-dark/commit/b0f4b15a19675b79a9fa665cb4abc78184f27567))
* **layouts/*:** add cookie disclaimer ([0e81653](https://codeberg.org/vhs/after-dark/commit/0e81653f91c1fd487f8accf83fb198cb3155c728))
* **layouts/search:** and placeholder and allow basic customization ([d3c3bf2](https://codeberg.org/vhs/after-dark/commit/d3c3bf2841b8e5d5a4e691b0d0ffc7946ce6a3a6))
* **layouts/shortcodes:** add grid and cell flexbox shortcode & snippet ([9e24d3b](https://codeberg.org/vhs/after-dark/commit/9e24d3b99359b063fb433a8aa8aa689cc517dbd4)), closes [#67](https://codeberg.org/vhs/after-dark/issues/67)
* **layouts/shortcodes:** add select shortcode, docs and example use ([e13a227](https://codeberg.org/vhs/after-dark/commit/e13a22737a35caa8b4cef527bf99a66652235bfb))
* **layouts:** add meta keywords to base template ([cd96bfe](https://codeberg.org/vhs/after-dark/commit/cd96bfee4e2837103267cb11e4495362f4133b83)), closes [#20](https://codeberg.org/vhs/after-dark/issues/20)
* **layouts:** add support for hugo 0.20.2 ([59c329d](https://codeberg.org/vhs/after-dark/commit/59c329d8befb62b92b6888aa4569e939ece14f7d))
* **layouts:** provide form builder snippets ([63a615f](https://codeberg.org/vhs/after-dark/commit/63a615f17e4e45d0c0c4e9eb28f2d782ac8d1080))
* **license:** wtfpl -> agpl-3.0-or-later ([5a830b1](https://codeberg.org/vhs/after-dark/commit/5a830b154f1942c472259fe602680dbb7372f5e4)), closes [#148](https://codeberg.org/vhs/after-dark/issues/148)
* **LICENSE:** you just do what the fuck you want to ([a7e52ee](https://codeberg.org/vhs/after-dark/commit/a7e52eef4761aa1ce3fcd3698d154395f1e59da4))
* **module/toxic-swamp:** integrate module beta ([1aa0e83](https://codeberg.org/vhs/after-dark/commit/1aa0e83ef00ed04b50bfba89f70d6cc176d268c8))
* **modules:** add analytics module ([9729b30](https://codeberg.org/vhs/after-dark/commit/9729b30e176dc996ab4c25b46457497b4461b97b)), closes [#1](https://codeberg.org/vhs/after-dark/issues/1)
* **modules:** add fractal forest module for bpg image format support ([58d5513](https://codeberg.org/vhs/after-dark/commit/58d5513962982c679bc83c612ea141535600f5c3)), closes [#8](https://codeberg.org/vhs/after-dark/issues/8)
* **modules:** add hall of mirrors ([9cddae1](https://codeberg.org/vhs/after-dark/commit/9cddae13e20aa72824126d99d2d39b5b2f201653)), closes [#24](https://codeberg.org/vhs/after-dark/issues/24)
* **onboarding:** streamline installation ([228df54](https://codeberg.org/vhs/after-dark/commit/228df541982cd24348795da76cbcb5199e01eeb6))
* **personalization:** add customizable accent colors ([301685d](https://codeberg.org/vhs/after-dark/commit/301685d713a3dcd70f943edf2f29e0b83e8fa741))
* **powered-by:** add page generation date ([11053a3](https://codeberg.org/vhs/after-dark/commit/11053a360d649ea9ab57eda13a9315c1a3f4a58a))
* **scripts/upgrade:** prompt for update if metadata cannot be found ([3750fb9](https://codeberg.org/vhs/after-dark/commit/3750fb93c1ab5f10a499e757db7ad5d551802762))
* **scripts:** add theme upgrade script ([2be25b9](https://codeberg.org/vhs/after-dark/commit/2be25b9876187a7715cef12bd491bf313dc8a4a8)), closes [#59](https://codeberg.org/vhs/after-dark/issues/59)
* **scripts:** support custom content dirs in config file ([83805b8](https://codeberg.org/vhs/after-dark/commit/83805b80ab7311ed28fc29db853faecf55c2b48a)), closes [#59](https://codeberg.org/vhs/after-dark/issues/59)
* select theme variant directly from site config ([25617f1](https://codeberg.org/vhs/after-dark/commit/25617f1103aef771981ca478376ee1c1d7c2f2d2)), closes [#6](https://codeberg.org/vhs/after-dark/issues/6)
* **shortcode/video:** add video shortcode ([b8bd8c0](https://codeberg.org/vhs/after-dark/commit/b8bd8c03c62c1052ab2d642c5a4424d201a7b076)), closes [#20](https://codeberg.org/vhs/after-dark/issues/20) [#81](https://codeberg.org/vhs/after-dark/issues/81)
* **shortcode:** add trusted custom attr to external ([abe2456](https://codeberg.org/vhs/after-dark/commit/abe24564f5ae9041c0fa9bc82beaf2905eb32c96))
* **shortcodes/button:** add custom class support ([64175bb](https://codeberg.org/vhs/after-dark/commit/64175bb4de8e72ea566aa5d8339e6719fd226319))
* **shortcodes/external:** add shorthand usage for named anchors ([cf98211](https://codeberg.org/vhs/after-dark/commit/cf982119f3c020a073ede7fc3d2f405c08898a70))
* **shortcodes:** add blockquote shortcode ([2f5068c](https://codeberg.org/vhs/after-dark/commit/2f5068c8fc8c69eda38788b80a3b39062746b984))
* **shortcodes:** add figure shortcode ([ae1fc15](https://codeberg.org/vhs/after-dark/commit/ae1fc15cf9fcc53b7245dd08bb309e7413b52b01))
* **shortcodes:** add form attr to button ([d652021](https://codeberg.org/vhs/after-dark/commit/d6520217fa60b982ad87355a97310e492000626e))
* **shortcodes:** add hack progress bar component ([c12e5cb](https://codeberg.org/vhs/after-dark/commit/c12e5cb79cd6ea64cd3b313d880e1fe93b3a0ddf))
* **shortcodes:** add hackcss alert shortcode ([9bc3dd0](https://codeberg.org/vhs/after-dark/commit/9bc3dd02b5290b11733ddac9aae4d8cc2fda7eef))
* **shortcodes:** add hackcss alert shortcode ([1dd40b5](https://codeberg.org/vhs/after-dark/commit/1dd40b55780662d531646d6bcce0143694d039fa))
* **shortcodes:** add hackcss button group component ([2398c43](https://codeberg.org/vhs/after-dark/commit/2398c434e808746cb5b5a60f63c875c3098e3053))
* **shortcodes:** add hackcss button shortcode ([b42c2d6](https://codeberg.org/vhs/after-dark/commit/b42c2d610cc706543b3d02326048802b9a83d9ed))
* **shortcodes:** add hackcss card component ([2214efb](https://codeberg.org/vhs/after-dark/commit/2214efb263090ff7e7208d976a3c860eef940c96))
* **shortcodes:** add hackcss loading component ([dbf96fb](https://codeberg.org/vhs/after-dark/commit/dbf96fb38da57c0211ec1e3a9e72f170b4a69ea5))
* **shortcodes:** add hackcss progress component ([82ef124](https://codeberg.org/vhs/after-dark/commit/82ef12425005233babd80efdfa79fe9e67ae639b))
* **shortcodes:** add id attribute for forms ([d01cad1](https://codeberg.org/vhs/after-dark/commit/d01cad1560ff263d698280231bdf14313650a4cf))
* **shortcodes:** add navmenu ([526282a](https://codeberg.org/vhs/after-dark/commit/526282abc577c7e8116b0d0ad7976100565a979e)), closes [#78](https://codeberg.org/vhs/after-dark/issues/78)
* **shortcodes:** add navmenu navigational aid ([62ae735](https://codeberg.org/vhs/after-dark/commit/62ae7352689cd114a48580394cbd64c4868ab665))
* **shortcodes:** add title attr to external ([b9cbbed](https://codeberg.org/vhs/after-dark/commit/b9cbbed67cfa75483415ae7851c33873be6a30c3))
* **shortcodes:** add type attribute for external links ([57e60c6](https://codeberg.org/vhs/after-dark/commit/57e60c63568bcd4e19ee926ef9b2c80f115bb973))
* **shortcodes:** add value attr to button ([bdb3dc9](https://codeberg.org/vhs/after-dark/commit/bdb3dc992cd37078e22586191e5493778bfbbb30))
* **shortcodes:** allow anonymous blockquotes ([bad6bad](https://codeberg.org/vhs/after-dark/commit/bad6bad18d528b0bbadae86d93ced17c5248f4a9))
* **shortcodes:** allow button disablement ([3bc1c74](https://codeberg.org/vhs/after-dark/commit/3bc1c74abd58ba164989644eff7d7c394a3a3660)), closes [#65](https://codeberg.org/vhs/after-dark/issues/65)
* **shortcodes:** trim whitespace in id attributes ([1a24f1f](https://codeberg.org/vhs/after-dark/commit/1a24f1f826856b337a4c2898394ff39aa47990b4))
* **snippets:** abstract figure shortcode for use in layout ([9bb6492](https://codeberg.org/vhs/after-dark/commit/9bb64922579f2dce1a595fe7eea05a18dd79e15e))
* **snippets:** add external link snippet ([40bb8a7](https://codeberg.org/vhs/after-dark/commit/40bb8a70d664ab1da261d9ac38d0ea646c68e365)), closes [#48](https://codeberg.org/vhs/after-dark/issues/48)
* **snippets:** alert user on invalid autocomplete value ([a3b1e0c](https://codeberg.org/vhs/after-dark/commit/a3b1e0cd4157e18b82deedf06a8066cdae35b658)), closes [#46](https://codeberg.org/vhs/after-dark/issues/46)
* **typography:** justify text output and hyphenate ([95c131d](https://codeberg.org/vhs/after-dark/commit/95c131d468702f74cd57962c24ed9f24adea4948))


### Bug Fixes

* 🐛 address linkrot in docs ([5aeea5f](https://codeberg.org/vhs/after-dark/commit/5aeea5f0f0a880f10a1744a2b931dbba2d6ec92e))
* **$images:** improve bpg image support ([20756ff](https://codeberg.org/vhs/after-dark/commit/20756ff95b5b6cb83d2cf7e365aba1cd79fcef6b)), closes [#48](https://codeberg.org/vhs/after-dark/issues/48)
* **$layouts:** add support for protocol-relative base urls ([fdf7a1c](https://codeberg.org/vhs/after-dark/commit/fdf7a1cf9fc5d6ef6367c47c42a5fcf1ec6ce811)), closes [#37](https://codeberg.org/vhs/after-dark/issues/37)
* **$layouts:** disable ua input styling safari mobile ([0118c83](https://codeberg.org/vhs/after-dark/commit/0118c83edd84df08d5b170effa172b294ec0a8f4))
* **$layouts:** fix error calling partial in related content ([c7d7e5f](https://codeberg.org/vhs/after-dark/commit/c7d7e5fd0af416b156c8169e35502c7052646d81)), closes [#55](https://codeberg.org/vhs/after-dark/issues/55)
* **$layouts:** improve search input focus and usability ([a74e7da](https://codeberg.org/vhs/after-dark/commit/a74e7da3ccab3642003bf504edce9a6830116b8c)), closes [#91](https://codeberg.org/vhs/after-dark/issues/91)
* **$layouts:** move stylesheets back to partials, reorganize files ([0be7805](https://codeberg.org/vhs/after-dark/commit/0be78056f45fbac235853d52cfe1e933c751400b)), closes [#50](https://codeberg.org/vhs/after-dark/issues/50)
* **$layouts:** prevent auto-zoom on safari mobile ([3b7bf8c](https://codeberg.org/vhs/after-dark/commit/3b7bf8c122c25cef30b249169e367169d2428c05))
* **$layouts:** prevent js error on search form submit ([4717d0e](https://codeberg.org/vhs/after-dark/commit/4717d0e6cea6f58293a7b46a20e32a2293f9d023)), closes [#94](https://codeberg.org/vhs/after-dark/issues/94)
* **$layouts:** remove iframe borders by default ([d265a9f](https://codeberg.org/vhs/after-dark/commit/d265a9fb6808e81ddfc49e29337b6bc94d81ec98))
* **$layouts:** update powered-by to link to new theme site ([5fa4311](https://codeberg.org/vhs/after-dark/commit/5fa43118efde7600ad43a07c2e15736c69600c53))
* **$shortcodes:** fix issue with external link appearance ([b0973db](https://codeberg.org/vhs/after-dark/commit/b0973db8ca5304e7d4c616bf20ab09c6692243fb))
* **$style:** add more whitespace on list pages and darken muted text ([6d42cb8](https://codeberg.org/vhs/after-dark/commit/6d42cb8808423f240e242ea5076a5ffb233f9369))
* **$style:** fix a whitespace issue near the readmore link ([5421953](https://codeberg.org/vhs/after-dark/commit/5421953c98f2ae1d0daab5a5d361aaef4b395461)), closes [#70](https://codeberg.org/vhs/after-dark/issues/70)
* 404 page theme color url ref ([05a7a31](https://codeberg.org/vhs/after-dark/commit/05a7a31a10ca3dc8b0ed84f03b8179dae44b15e6))
* add add theme color to 404 page ([c48e617](https://codeberg.org/vhs/after-dark/commit/c48e6178e5243fa505f388f1ec545abb2fc6e77f))
* **archetypes/validate:** swap string method for sha trim behavior ([28edd6f](https://codeberg.org/vhs/after-dark/commit/28edd6f096f0736c5e20d16ac5f0325c1b623176)), closes [#90](https://codeberg.org/vhs/after-dark/issues/90)
* **archetypes:** close tag body on last external shortcode ([3f0da78](https://codeberg.org/vhs/after-dark/commit/3f0da7805a222d9bc194625eae8d19f1da52ab29))
* **archetypes:** default posts to display as published content ([fbe02cd](https://codeberg.org/vhs/after-dark/commit/fbe02cdac02b330cff4b755347e22c5f5e7e6b7c))
* **archetypes:** fix broken links in post archetype ([db05b37](https://codeberg.org/vhs/after-dark/commit/db05b37d6688d9e3a59eb394fbe590ee2e4d930b))
* **archetypes:** prevent internal links from opening in new window ([80e1361](https://codeberg.org/vhs/after-dark/commit/80e1361b9bb90b120eb333b9ca85b7aa4ae89577))
* **assets/css:** normalize base font-size, large screens ([cd1e70f](https://codeberg.org/vhs/after-dark/commit/cd1e70f896dd5d6a3087511ce47a53bf49110472))
* **assets/css:** normalize samp element font size with pre ([5873c70](https://codeberg.org/vhs/after-dark/commit/5873c7087d2d8984b40e22d4ad2d3dea01b097f0))
* **assets/css:** normalize size of help text on small viewports ([1de8a68](https://codeberg.org/vhs/after-dark/commit/1de8a6898a9ac003fa64c929d2db29a979bb6075))
* **assets/css:** normalize whitespace around toc when post images present ([f0a51d1](https://codeberg.org/vhs/after-dark/commit/f0a51d167a765ea44098bf4930b22c3354ab17ad))
* **assets/css:** prevent ie10+ scrollbar from causing layout to jump ([c5fb89b](https://codeberg.org/vhs/after-dark/commit/c5fb89bb92a95439cf81d5b4b8341b34027fff82)), closes [#144](https://codeberg.org/vhs/after-dark/issues/144)
* **assets/css:** unset ua default figure element margin ([4ea8ef9](https://codeberg.org/vhs/after-dark/commit/4ea8ef94cf3fbaa0ae0479b3a3ee1b55f48f401a))
* **assets/theme:** normalize blockquote line-height with rest of document ([7c3fcb6](https://codeberg.org/vhs/after-dark/commit/7c3fcb60e08db4767f2e6529e9368769d90ba057))
* **assets:** stop treating all permalinks as external ([0f024f9](https://codeberg.org/vhs/after-dark/commit/0f024f99fc293d11ffd32b080aff54441d6fb96d))
* **bin/install:** resolve shellcheck warns for improved portability ([3fce58a](https://codeberg.org/vhs/after-dark/commit/3fce58a67ced80a6c3d461fa532736a8803214a1)), closes [#154](https://codeberg.org/vhs/after-dark/issues/154)
* **bin/upgrade:** properly detect current theme version, if present ([5b8e067](https://codeberg.org/vhs/after-dark/commit/5b8e0679b1fecc9b8ae477de1b9ff5bedeb488da))
* **bin:** remove preview script ([70b74d0](https://codeberg.org/vhs/after-dark/commit/70b74d0caaf5d5af1b17a392f247076f823111c3)), closes [#38](https://codeberg.org/vhs/after-dark/issues/38)
* **bundle:** add images to npm ignore file ([2cd05d2](https://codeberg.org/vhs/after-dark/commit/2cd05d2a89cc04c45693ed66d24d8bc47dc2b4d9))
* **bundle:** remove images folder from npm release ([94a6a93](https://codeberg.org/vhs/after-dark/commit/94a6a930add9ade36b06f3d67e2edeadfaeff1e8))
* collapse whitespace inside goldmark code blocks, alerts and cards ([c7c4bf9](https://codeberg.org/vhs/after-dark/commit/c7c4bf98afb7d2a48d57c769ec1f75cfe1360c79))
* **components:** correct help block class attr behavior ([3d33625](https://codeberg.org/vhs/after-dark/commit/3d33625068097d3ad4af9f84d0011b3f0e21a2a3))
* **feature/featured-posts:** default featured pages to empty slice when not defined ([98d5789](https://codeberg.org/vhs/after-dark/commit/98d57896fe3f0e28f2047d9539e284b8348c59f0)), closes [#173](https://codeberg.org/vhs/after-dark/issues/173)
* **feature/post-images:** fix yandex validation error ([6803905](https://codeberg.org/vhs/after-dark/commit/6803905a982223a6f697650cc84e9de1249ba3a7))
* **feature/post-images:** prevent content from jumping as image loads ([56b3b6f](https://codeberg.org/vhs/after-dark/commit/56b3b6f2259e197ed21db573bc7881d28843b7da)), closes [#162](https://codeberg.org/vhs/after-dark/issues/162)
* **feature/post-images:** zap extra whitespaces ([3f23858](https://codeberg.org/vhs/after-dark/commit/3f2385897b983fa4b2594b4b5d047c0f4d25163a))
* **feature/web-feeds:** output last build date in rfc822 with 4-digit year ([517908e](https://codeberg.org/vhs/after-dark/commit/517908e6187db7521f1f949b599ffdb6a2432b22))
* **fuzzy-search:** handle search layout hotkey assignments properly ([c255554](https://codeberg.org/vhs/after-dark/commit/c2555542cd69f7d752185207b71459c45cb842c3))
* **help/home:** add missing query string param to search link ([b487e81](https://codeberg.org/vhs/after-dark/commit/b487e8160d4cc8b80d6043a0c411930b60ec8730))
* **help/home:** add performance info & undocumented features ([796a210](https://codeberg.org/vhs/after-dark/commit/796a210ce60dea1353e2173e0e47d500f5a3d599))
* **help:** change 404 page to error page and improve script perf ([9ad077c](https://codeberg.org/vhs/after-dark/commit/9ad077cfc81588df9db3b8050f25165099371961)), closes [#43](https://codeberg.org/vhs/after-dark/issues/43)
* **help:** rename 404 to error page ([c329cc1](https://codeberg.org/vhs/after-dark/commit/c329cc12548325372dd409a56c58b352c04d921e))
* **hugo:** require 0.44 at minimum ([c29772e](https://codeberg.org/vhs/after-dark/commit/c29772e355b79eb0887721fd218e5bd7b5e9cd17))
* **install:** add flags for theme setup script ([4e3e97f](https://codeberg.org/vhs/after-dark/commit/4e3e97fd23677831cd799757b25a1347b128fdb5))
* **install:** improve install experience ([c0390cd](https://codeberg.org/vhs/after-dark/commit/c0390cd3da681d34320e1e24f446c85b98dcc2fe))
* **install:** install packages from npm ([a1d4068](https://codeberg.org/vhs/after-dark/commit/a1d40680a195c37e6c49495b1013dbaced7fea85))
* **install:** kill hugo server always ([cb652e1](https://codeberg.org/vhs/after-dark/commit/cb652e18e9e89a71d3c3e8252640630a92ff6b73))
* **install:** move it back to bin ([370cd39](https://codeberg.org/vhs/after-dark/commit/370cd39b0207038e0a4b8277bd123a86eb7a50e6))
* **install:** move kill command to eof ([96e113a](https://codeberg.org/vhs/after-dark/commit/96e113ad5c48426af79b303be4b28bdecb89b20b))
* **install:** move to scripts folder ([869b6e3](https://codeberg.org/vhs/after-dark/commit/869b6e3456f7edcadbe12c59506803498c893af0))
* **install:** remove git cruft & supply actual module name ([9dcb464](https://codeberg.org/vhs/after-dark/commit/9dcb46478640cf68353ef5e2455e268d9b593333))
* **install:** remove unexpected line in theme config ([08b3720](https://codeberg.org/vhs/after-dark/commit/08b372084ea49ee8596c3338d6e07e6266a2c81c))
* **install:** remove useful snippets content ([6731dfc](https://codeberg.org/vhs/after-dark/commit/6731dfc8d5e0df1612582c12f98f214f03d3b02c))
* **install:** restore android support ([96322fd](https://codeberg.org/vhs/after-dark/commit/96322fd999dfe3dd5bbac0a8ffce94ffb7cd0873)), closes [#25](https://codeberg.org/vhs/after-dark/issues/25)
* **install:** standardize install script ([0c50009](https://codeberg.org/vhs/after-dark/commit/0c5000979d24ffce0681a9aabf226935562da67e)), closes [#19](https://codeberg.org/vhs/after-dark/issues/19)
* **install:** stop copying all archetypes to site ([e877af0](https://codeberg.org/vhs/after-dark/commit/e877af043d3e59080ba8e24635968e914b61b20e)), closes [#45](https://codeberg.org/vhs/after-dark/issues/45)
* **install:** support both gnu and bsd grep ([8e3f43f](https://codeberg.org/vhs/after-dark/commit/8e3f43fd3711c164c8df41d89892c074234c961b))
* **install:** update default open graph image ([8ded4a3](https://codeberg.org/vhs/after-dark/commit/8ded4a3923d39d4f21d0e0ec400a3b5c603b1a39))
* **install:** update example base url ([8a24e79](https://codeberg.org/vhs/after-dark/commit/8a24e796a0e248a572042c2f735d6bb4e1e72f8b))
* **install:** use latest version from npm dist tags ([74b036f](https://codeberg.org/vhs/after-dark/commit/74b036f3ec4af6432fac87a384a6bf4b28df0682))
* **install:** wait 1 second before serving help for docs to expire ([b82624f](https://codeberg.org/vhs/after-dark/commit/b82624f42faff9a81c3c6194595275c1dd09bfd9))
* **layout/default:** workaround hugo bug on eval len(nil) go tmpl ([08470e6](https://codeberg.org/vhs/after-dark/commit/08470e637ba93e1a53112ea163b25e6483a42509)), closes [#135](https://codeberg.org/vhs/after-dark/issues/135)
* **layouts/_default:** show posts on homepage as expected ([66ccca6](https://codeberg.org/vhs/after-dark/commit/66ccca68fe30392816de17721c9e29434cca51ed)), closes [#174](https://codeberg.org/vhs/after-dark/issues/174)
* **layouts/partials:** add main menu display condition ([fda5514](https://codeberg.org/vhs/after-dark/commit/fda55140b9983c36920a11e95562652e58a9af01)), closes [#78](https://codeberg.org/vhs/after-dark/issues/78)
* **layouts/partials:** move navmenu snippet into theme ([67887a9](https://codeberg.org/vhs/after-dark/commit/67887a9d2828e99bc82e0fa015fdd146d74e3f80)), closes [#78](https://codeberg.org/vhs/after-dark/issues/78)
* **layouts/search:** unblock blocking scripts and add command terminators ([2670c2a](https://codeberg.org/vhs/after-dark/commit/2670c2abc434ad6ca1df53d4f275af03ac6dbced)), closes [#14](https://codeberg.org/vhs/after-dark/issues/14)
* **layouts:** move inline-level content in navs inside <p> ([c6a44bc](https://codeberg.org/vhs/after-dark/commit/c6a44bc48f016fa5d6a7350d45203f40d3a43db1))
* **layouts:** output meta description when not explicitly set ([86f8e66](https://codeberg.org/vhs/after-dark/commit/86f8e66ec3350ad3e9f54e5d1ad95a48276a7990)), closes [#21](https://codeberg.org/vhs/after-dark/issues/21)
* **layouts:** output urls relative to baseurl ([b0fccd8](https://codeberg.org/vhs/after-dark/commit/b0fccd8b13bed2ecf87efd8aae7cc82f56115a6a)), closes [#4](https://codeberg.org/vhs/after-dark/issues/4)
* **layouts:** remove navmenu from help layout ([8a47cb8](https://codeberg.org/vhs/after-dark/commit/8a47cb87b6fc194de7014fab624e61abe02c2a8d))
* **layouts:** restore smooth scrolling to toc links ([725e1ca](https://codeberg.org/vhs/after-dark/commit/725e1ca4166d0f62d0b2fc2362a6eb319bd7975a))
* **layouts:** show sarcastic message when no pages exist ([bfebfc0](https://codeberg.org/vhs/after-dark/commit/bfebfc0b52aec87f7acd1d197203b72ef9e1cbd9))
* **layouts:** stop outputting trim color if none present ([51faee2](https://codeberg.org/vhs/after-dark/commit/51faee2022fe8737291b57d29c922a8d2155657e))
* **layouts:** use relative urls in post byline taxonomy links ([8ffa3ac](https://codeberg.org/vhs/after-dark/commit/8ffa3ac1212667f1e219a03d21e420b880eb1ad2))
* **links:** style external links in all browsers ([231dd56](https://codeberg.org/vhs/after-dark/commit/231dd56859469018eb54b20e2d2939bfe19caf2d)), closes [#22](https://codeberg.org/vhs/after-dark/issues/22)
* **markdown:** restore footnote return links in hugo 0.60.0+ ([42349b4](https://codeberg.org/vhs/after-dark/commit/42349b453501cc5246aa909fc2fba98bf7e9203c))
* **onboarding:** add explicit site port setting in install script ([a0d9e18](https://codeberg.org/vhs/after-dark/commit/a0d9e18c0b73ce09dff16196b0f944b3ac472f68))
* **onboarding:** serve site not help when starting site from installer ([d5faca3](https://codeberg.org/vhs/after-dark/commit/d5faca3d4a95092100206701e0731267bb6f3b6b))
* **partials/powered-by:** point to expected directory of refactored file ([1160f51](https://codeberg.org/vhs/after-dark/commit/1160f51cdf890ad690c507152ff997b7d613e23a))
* **partials:** fix markup validation error ([66c5b24](https://codeberg.org/vhs/after-dark/commit/66c5b24881c00b4554e5fe4ba790a708701fa4d3))
* **partials:** make button onclick handler work as expected ([e36f174](https://codeberg.org/vhs/after-dark/commit/e36f17402ef14f4e93160db55030cb6797bb80c7))
* **personalization:** rename accent color to trim color ([040c1d0](https://codeberg.org/vhs/after-dark/commit/040c1d03019d4d47b6658a63031b1ea339fcc33c))
* print out the full table of contents ([6e1493e](https://codeberg.org/vhs/after-dark/commit/6e1493e328071f558da47ac5eee73a658bf17457))
* **scripts:** add || to server shutdown ([84ddef7](https://codeberg.org/vhs/after-dark/commit/84ddef72cdaf49f0ab29252808d688a3bff1a52f))
* **scripts:** address error generating docs after upgrade ([f097c61](https://codeberg.org/vhs/after-dark/commit/f097c61b25a200c4550470fc6e93d6255099db32))
* **scripts:** always regnerate help docs ([2d362dd](https://codeberg.org/vhs/after-dark/commit/2d362dd9fb4b9bacc67be36d7cb86e4e5a4f9cb6))
* **scripts:** automatically stop running help servers on upgrade ([a392710](https://codeberg.org/vhs/after-dark/commit/a392710ef418b68c83bc4bfcde2b1287d82df995))
* **scripts:** remove help before generating on upgrade ([da1c13f](https://codeberg.org/vhs/after-dark/commit/da1c13f2c86d43ba4ca03079838c12e4f74bd113))
* **scripts:** resolve help doc path lookups when no custom content dir ([a374329](https://codeberg.org/vhs/after-dark/commit/a3743295ba9d496e958a33e17b338aa32f38f0b9))
* **scripts:** resolve syntax bugs in script ([6573684](https://codeberg.org/vhs/after-dark/commit/6573684c197c734ea570ae7f903529883402b0a5))
* **scripts:** resolve tar cd issue ([9f4ca67](https://codeberg.org/vhs/after-dark/commit/9f4ca677cbe518bd340a676ebb0ec85d356c81ee))
* **scripts:** update install to place theme metadata in theme data folder ([fab41e0](https://codeberg.org/vhs/after-dark/commit/fab41e0f66039b758dc62c87f82ff118b916264e)), closes [#59](https://codeberg.org/vhs/after-dark/issues/59)
* **shortcode/blockquote:** prevent raw html output when body used with citelink attr ([dc4d4a3](https://codeberg.org/vhs/after-dark/commit/dc4d4a36e2823eae38ab038776c73c83bbb3b872))
* **shortcode/hackcss-alert:** restore legacy behavior for shortcode ([7f2d094](https://codeberg.org/vhs/after-dark/commit/7f2d094ee726cd8f76865524e4d3a5bf4ffae077))
* **shortcode/navmenu:** improve microdata semantics & add test tool to docs ([cf0261f](https://codeberg.org/vhs/after-dark/commit/cf0261f9876578f37a8a8c80fd6688e5b28f597d)), closes [#100](https://codeberg.org/vhs/after-dark/issues/100)
* **shortcodes/button:** allow name attribute & pass id as expected ([f7d9008](https://codeberg.org/vhs/after-dark/commit/f7d900806db5c543b6c933eee4aaff0c489a6078))
* **shortcodes:** remove insignificant spaces after external links ([f03215a](https://codeberg.org/vhs/after-dark/commit/f03215a8ce8ebc886c5268e63db77b876c1d0799))
* **shortcodes:** remove privacytube and coub shortcodes ([19cc52a](https://codeberg.org/vhs/after-dark/commit/19cc52a8c99e39c3fbb68ae914c31fc097e5decc)), closes [#35](https://codeberg.org/vhs/after-dark/issues/35)
* **shortcodes:** remove standard link treatment from figures ([55a3876](https://codeberg.org/vhs/after-dark/commit/55a3876e0e661abcbea3bc67cc2197b3b2e1bbd6))
* **snippets:** add name attribute to form ([ce3afb2](https://codeberg.org/vhs/after-dark/commit/ce3afb215cc6494649ecec60751d1f8c0bb08b3f))
* **snippets:** reverse logic for external link styling ([460896c](https://codeberg.org/vhs/after-dark/commit/460896c7089e8fc7bb551cd40a02c0497ee42b7d))
* **styles:** leftpad orderd lists ([cca87b3](https://codeberg.org/vhs/after-dark/commit/cca87b3da3c66ee2ca552539f75beb2d57b590ee))
* **theme:** enable white theme variant ([5e5429e](https://codeberg.org/vhs/after-dark/commit/5e5429e42faeccb0994a11af1bfd4805641a5665))
* **typography:** only justify and hyphenate article bodies ([b9d4d01](https://codeberg.org/vhs/after-dark/commit/b9d4d01cd83277abf917a68db2e0c343786480f5))
* **typography:** remove text justification and hyphenation ([729bc5a](https://codeberg.org/vhs/after-dark/commit/729bc5a9c52c5a92338a8ffcbe912ba8d3bcda40))
* **typography:** stop justifying and hyphenating text on small viewports ([000d2df](https://codeberg.org/vhs/after-dark/commit/000d2dfc0367379660eb2895e650d8d5f67f3cd5))


### build

* **$hugo:** inline css using readFile template function ([84701e1](https://codeberg.org/vhs/after-dark/commit/84701e1022559f39545a83e0b0c26d11a6ab7763)), closes [#44](https://codeberg.org/vhs/after-dark/issues/44)

### [9.2.3](https://codeberg.org/vhs/after-dark/compare/v9.2.2...v9.2.3) (2021-01-04)

### [9.2.2](https://codeberg.org/vhs/after-dark/compare/v9.2.1...v9.2.2) (2020-02-19)


### Bug Fixes

* **layouts/_default:** show posts on homepage as expected ([60d7c0d](https://codeberg.org/vhs/after-dark/commit/60d7c0d)), closes [#174](https://codeberg.org/vhs/after-dark/issues/174)
* **shortcode/blockquote:** prevent raw html output when body used with citelink attr ([903dd69](https://codeberg.org/vhs/after-dark/commit/903dd69))



### [9.2.1](https://codeberg.org/vhs/after-dark/compare/v9.2.0...v9.2.1) (2019-12-15)


### Bug Fixes

* collapse whitespace inside goldmark code blocks, alerts and cards ([5c9347d](https://codeberg.org/vhs/after-dark/commit/5c9347d))
* print out the full table of contents ([c176a8c](https://codeberg.org/vhs/after-dark/commit/c176a8c))



## [9.2.0](https://codeberg.org/vhs/after-dark/compare/v9.1.0...v9.2.0) (2019-12-13)


### Bug Fixes

* **markdown:** restore footnote return links in hugo 0.60.0+ ([01aef48](https://codeberg.org/vhs/after-dark/commit/01aef48))


### Build System

* **docker:** update for hugo release 0.61.0 ([0a1dc50](https://codeberg.org/vhs/after-dark/commit/0a1dc50))
* **feature/extended-builds:** upgrade extended build to hugo@0.60.0, go@1.13.4 and alpine@3.10 ([b229f2b](https://codeberg.org/vhs/after-dark/commit/b229f2b))


### Features

* **feat/extended-builds:** add dockerfile and docker-compose ([52f1830](https://codeberg.org/vhs/after-dark/commit/52f1830))



## [9.1.0](https://codeberg.org/vhs/after-dark/compare/v9.0.0...v9.1.0) (2019-08-21)


### Bug Fixes

* **feature/featured-posts:** default featured pages to empty slice when not defined ([785b403](https://codeberg.org/vhs/after-dark/commit/785b403)), closes [#173](https://codeberg.org/vhs/after-dark/issues/173)


### Build System

* **docker/hugo:** bump to 0.57.0 ([e090ab2](https://codeberg.org/vhs/after-dark/commit/e090ab2))


### Features

* **feature/code-analysis:** add source build of htmltest ([1cd1d6c](https://codeberg.org/vhs/after-dark/commit/1cd1d6c)), closes [#124](https://codeberg.org/vhs/after-dark/issues/124) [#165](https://codeberg.org/vhs/after-dark/issues/165)



## [9.0.0](https://codeberg.org/vhs/after-dark/compare/v8.3.3...v9.0.0) (2019-08-12)


### Features

* **feature/featured-posts:** allow featured items in posts section ([49f5c56](https://codeberg.org/vhs/after-dark/commit/49f5c56)), closes [#170](https://codeberg.org/vhs/after-dark/issues/170) [#160](https://codeberg.org/vhs/after-dark/issues/160)


### BREAKING CHANGES

* **feature/featured-posts:** Hugo minimum required version now 0.51 (was 0.44)



### [8.3.4](https://codeberg.org/vhs/after-dark/compare/v8.3.3...v8.3.4) (2019-08-05)

Finish documentation TODOs.

### [8.3.3](https://codeberg.org/vhs/after-dark/compare/v8.3.2...v8.3.3) (2019-07-31)


### Build System

* **docker/hugo:** support extended builds of hugo 0.56.0 ([3ee8bea](https://codeberg.org/vhs/after-dark/commit/3ee8bea)), closes [#161](https://codeberg.org/vhs/after-dark/issues/161)



### [8.3.2](https://codeberg.org/vhs/after-dark/compare/v8.3.1...v8.3.2) (2019-07-22)


### Bug Fixes

* **feature/post-images:** prevent content from jumping as image loads ([452ce64](https://codeberg.org/vhs/after-dark/commit/452ce64)), closes [#162](https://codeberg.org/vhs/after-dark/issues/162)


### Build System

* **npm:** audit and fix dev dependency vulnerabilities ([782506e](https://codeberg.org/vhs/after-dark/commit/782506e))
* **npm:** greenkeep commit helper and changelog generator ([0c571ef](https://codeberg.org/vhs/after-dark/commit/0c571ef))



### [8.3.1](https://codeberg.org/vhs/after-dark/compare/v8.3.0...v8.3.1) (2019-07-21)


### Bug Fixes

* **bin/upgrade:** properly detect current theme version, if present ([59cebcb](https://codeberg.org/vhs/after-dark/commit/59cebcb))



## [8.3.0](https://codeberg.org/vhs/after-dark/compare/v8.2.0...v8.3.0) (2019-07-21)


### Features

* **shortcode/video:** add video shortcode ([ace4c7c](https://codeberg.org/vhs/after-dark/commit/ace4c7c)), closes [#20](https://codeberg.org/vhs/after-dark/issues/20) [#81](https://codeberg.org/vhs/after-dark/issues/81)



## [8.2.0](https://codeberg.org/vhs/after-dark/compare/v8.1.0...v8.2.0) (2019-07-18)


### Bug Fixes

* **assets/css:** prevent ie10+ scrollbar from causing layout to jump ([105356f](https://codeberg.org/vhs/after-dark/commit/105356f)), closes [#144](https://codeberg.org/vhs/after-dark/issues/144)
* **bin/install:** resolve shellcheck warns for improved portability ([67a080f](https://codeberg.org/vhs/after-dark/commit/67a080f)), closes [#154](https://codeberg.org/vhs/after-dark/issues/154)


### Features

* **feature/fuzzy-search:** add app init loading indicator and noscript experience ([da82ae2](https://codeberg.org/vhs/after-dark/commit/da82ae2)), closes [#143](https://codeberg.org/vhs/after-dark/issues/143)



## [8.1.0](https://codeberg.org/vhs/after-dark/compare/v8.0.2...v8.1.0) (2019-07-12)


### Features

* **feature/custom-homepage:** add custom homepage and docs in english ([87d2076](https://codeberg.org/vhs/after-dark/commit/87d2076)), closes [#41](https://codeberg.org/vhs/after-dark/issues/41)
* **snippets:** abstract figure shortcode for use in layout ([8ca09f4](https://codeberg.org/vhs/after-dark/commit/8ca09f4))



### [8.0.2](https://codeberg.org/vhs/after-dark/compare/v8.0.1...v8.0.2) (2019-07-02)



### [8.0.1](https://codeberg.org/vhs/after-dark/compare/v8.0.0...v8.0.1) (2019-07-01)


### Build System

* **npm/lockfile:** improve sec of dev deps with 1 audit fixed ([d956c71](https://codeberg.org/vhs/after-dark/commit/d956c71))



## 8.0.0 (2019-05-17)

Moves After Dark to AGPLv3+.

### Bug Fixes

* **$images:** improve bpg image support ([e8a2e29](https://codeberg.org/vhs/after-dark/commit/e8a2e29)), closes [#48](https://codeberg.org/vhs/after-dark/issues/48)
* **$layouts:** add support for protocol-relative base urls ([bd4db87](https://codeberg.org/vhs/after-dark/commit/bd4db87)), closes [#37](https://codeberg.org/vhs/after-dark/issues/37)
* **$layouts:** disable ua input styling safari mobile ([bffb325](https://codeberg.org/vhs/after-dark/commit/bffb325))
* **$layouts:** fix error calling partial in related content ([ab4a1df](https://codeberg.org/vhs/after-dark/commit/ab4a1df)), closes [#55](https://codeberg.org/vhs/after-dark/issues/55)
* **$layouts:** improve search input focus and usability ([5e2500f](https://codeberg.org/vhs/after-dark/commit/5e2500f)), closes [#91](https://codeberg.org/vhs/after-dark/issues/91)
* **$layouts:** move stylesheets back to partials, reorganize files ([c5871f1](https://codeberg.org/vhs/after-dark/commit/c5871f1)), closes [#50](https://codeberg.org/vhs/after-dark/issues/50)
* **$layouts:** prevent auto-zoom on safari mobile ([60d5b37](https://codeberg.org/vhs/after-dark/commit/60d5b37))
* **$layouts:** prevent js error on search form submit ([96b483c](https://codeberg.org/vhs/after-dark/commit/96b483c)), closes [#94](https://codeberg.org/vhs/after-dark/issues/94)
* **$layouts:** remove iframe borders by default ([aeeafa2](https://codeberg.org/vhs/after-dark/commit/aeeafa2))
* **$layouts:** update powered-by to link to new theme site ([500ccb9](https://codeberg.org/vhs/after-dark/commit/500ccb9))
* **$shortcodes:** fix issue with external link appearance ([f7cd49c](https://codeberg.org/vhs/after-dark/commit/f7cd49c))
* **$style:** add more whitespace on list pages and darken muted text ([8ba617c](https://codeberg.org/vhs/after-dark/commit/8ba617c))
* **$style:** fix a whitespace issue near the readmore link ([82155e9](https://codeberg.org/vhs/after-dark/commit/82155e9)), closes [#70](https://codeberg.org/vhs/after-dark/issues/70)
* **archetypes:** close tag body on last external shortcode ([fd6dd8d](https://codeberg.org/vhs/after-dark/commit/fd6dd8d))
* **archetypes:** default posts to display as published content ([47071fe](https://codeberg.org/vhs/after-dark/commit/47071fe))
* **archetypes:** fix broken links in post archetype ([0d65b6a](https://codeberg.org/vhs/after-dark/commit/0d65b6a))
* **archetypes:** prevent internal links from opening in new window ([c488a12](https://codeberg.org/vhs/after-dark/commit/c488a12))
* **archetypes/validate:** swap string method for sha trim behavior ([feb0150](https://codeberg.org/vhs/after-dark/commit/feb0150)), closes [#90](https://codeberg.org/vhs/after-dark/issues/90)
* **assets:** stop treating all permalinks as external ([7e1d3cc](https://codeberg.org/vhs/after-dark/commit/7e1d3cc))
* **assets/css:** normalize base font-size, large screens ([912ec97](https://codeberg.org/vhs/after-dark/commit/912ec97))
* **assets/css:** normalize samp element font size with pre ([966c767](https://codeberg.org/vhs/after-dark/commit/966c767))
* **assets/css:** normalize size of help text on small viewports ([55ba9e2](https://codeberg.org/vhs/after-dark/commit/55ba9e2))
* **assets/css:** normalize whitespace around toc when post images present ([4acbace](https://codeberg.org/vhs/after-dark/commit/4acbace))
* **assets/css:** unset ua default figure element margin ([7925a94](https://codeberg.org/vhs/after-dark/commit/7925a94))
* **assets/theme:** normalize blockquote line-height with rest of document ([5220b94](https://codeberg.org/vhs/after-dark/commit/5220b94))
* **bin:** remove preview script ([4f7af96](https://codeberg.org/vhs/after-dark/commit/4f7af96)), closes [#38](https://codeberg.org/vhs/after-dark/issues/38)
* **bundle:** add images to npm ignore file ([b7cbe87](https://codeberg.org/vhs/after-dark/commit/b7cbe87))
* **bundle:** remove images folder from npm release ([df9ce55](https://codeberg.org/vhs/after-dark/commit/df9ce55))
* **components:** correct help block class attr behavior ([586a290](https://codeberg.org/vhs/after-dark/commit/586a290))
* **feature/post-images:** fix yandex validation error ([f758c2e](https://codeberg.org/vhs/after-dark/commit/f758c2e))
* **feature/post-images:** zap extra whitespaces ([66c27ec](https://codeberg.org/vhs/after-dark/commit/66c27ec))
* **feature/web-feeds:** output last build date in rfc822 with 4-digit year ([4c86b4a](https://codeberg.org/vhs/after-dark/commit/4c86b4a))
* **fuzzy-search:** handle search layout hotkey assignments properly ([630d3a9](https://codeberg.org/vhs/after-dark/commit/630d3a9))
* **help:** change 404 page to error page and improve script perf ([9749575](https://codeberg.org/vhs/after-dark/commit/9749575)), closes [#43](https://codeberg.org/vhs/after-dark/issues/43)
* **help:** rename 404 to error page ([e158065](https://codeberg.org/vhs/after-dark/commit/e158065))
* **help/home:** add missing query string param to search link ([7c5f35d](https://codeberg.org/vhs/after-dark/commit/7c5f35d))
* **help/home:** add performance info & undocumented features ([a8e18c5](https://codeberg.org/vhs/after-dark/commit/a8e18c5))
* **hugo:** require 0.44 at minimum ([6e2f11e](https://codeberg.org/vhs/after-dark/commit/6e2f11e))
* **install:** add flags for theme setup script ([1282c7c](https://codeberg.org/vhs/after-dark/commit/1282c7c))
* **install:** improve install experience ([52d6236](https://codeberg.org/vhs/after-dark/commit/52d6236))
* **install:** install packages from npm ([1c2df4f](https://codeberg.org/vhs/after-dark/commit/1c2df4f))
* **install:** kill hugo server always ([de3c8a5](https://codeberg.org/vhs/after-dark/commit/de3c8a5))
* **install:** move it back to bin ([ba92ce6](https://codeberg.org/vhs/after-dark/commit/ba92ce6))
* **install:** move kill command to eof ([7075c82](https://codeberg.org/vhs/after-dark/commit/7075c82))
* **install:** move to scripts folder ([30a8b04](https://codeberg.org/vhs/after-dark/commit/30a8b04))
* **install:** remove git cruft & supply actual module name ([7dd0e9e](https://codeberg.org/vhs/after-dark/commit/7dd0e9e))
* **install:** remove unexpected line in theme config ([7e424bd](https://codeberg.org/vhs/after-dark/commit/7e424bd))
* **install:** remove useful snippets content ([0278216](https://codeberg.org/vhs/after-dark/commit/0278216))
* **install:** restore android support ([3218ce2](https://codeberg.org/vhs/after-dark/commit/3218ce2)), closes [#25](https://codeberg.org/vhs/after-dark/issues/25)
* **install:** standardize install script ([9daad48](https://codeberg.org/vhs/after-dark/commit/9daad48)), closes [#19](https://codeberg.org/vhs/after-dark/issues/19)
* **install:** stop copying all archetypes to site ([b7df91a](https://codeberg.org/vhs/after-dark/commit/b7df91a)), closes [#45](https://codeberg.org/vhs/after-dark/issues/45)
* **install:** support both gnu and bsd grep ([0cc315a](https://codeberg.org/vhs/after-dark/commit/0cc315a))
* **install:** update default open graph image ([f476561](https://codeberg.org/vhs/after-dark/commit/f476561))
* **install:** update example base url ([f24a9f9](https://codeberg.org/vhs/after-dark/commit/f24a9f9))
* **install:** use latest version from npm dist tags ([91a3fb1](https://codeberg.org/vhs/after-dark/commit/91a3fb1))
* **install:** wait 1 second before serving help for docs to expire ([9ca3862](https://codeberg.org/vhs/after-dark/commit/9ca3862))
* **layout/default:** workaround hugo bug on eval len(nil) go tmpl ([d8bdcfc](https://codeberg.org/vhs/after-dark/commit/d8bdcfc)), closes [#135](https://codeberg.org/vhs/after-dark/issues/135)
* **layouts:** move inline-level content in navs inside <p> ([42c9004](https://codeberg.org/vhs/after-dark/commit/42c9004))
* **layouts:** output meta description when not explicitly set ([f347138](https://codeberg.org/vhs/after-dark/commit/f347138)), closes [#21](https://codeberg.org/vhs/after-dark/issues/21)
* **layouts:** output urls relative to baseurl ([0205bd1](https://codeberg.org/vhs/after-dark/commit/0205bd1)), closes [#4](https://codeberg.org/vhs/after-dark/issues/4)
* **layouts:** remove navmenu from help layout ([470b452](https://codeberg.org/vhs/after-dark/commit/470b452))
* **layouts:** restore smooth scrolling to toc links ([8db7451](https://codeberg.org/vhs/after-dark/commit/8db7451))
* **layouts:** show sarcastic message when no pages exist ([990f0b6](https://codeberg.org/vhs/after-dark/commit/990f0b6))
* **layouts:** stop outputting trim color if none present ([73e824a](https://codeberg.org/vhs/after-dark/commit/73e824a))
* **layouts:** use relative urls in post byline taxonomy links ([a170089](https://codeberg.org/vhs/after-dark/commit/a170089))
* **layouts/partials:** add main menu display condition ([93ed6cd](https://codeberg.org/vhs/after-dark/commit/93ed6cd)), closes [#78](https://codeberg.org/vhs/after-dark/issues/78)
* **layouts/partials:** move navmenu snippet into theme ([1c0e945](https://codeberg.org/vhs/after-dark/commit/1c0e945)), closes [#78](https://codeberg.org/vhs/after-dark/issues/78)
* **layouts/search:** unblock blocking scripts and add command terminators ([455b6fe](https://codeberg.org/vhs/after-dark/commit/455b6fe)), closes [#14](https://codeberg.org/vhs/after-dark/issues/14)
* **links:** style external links in all browsers ([3e2aa61](https://codeberg.org/vhs/after-dark/commit/3e2aa61)), closes [#22](https://codeberg.org/vhs/after-dark/issues/22)
* **onboarding:** add explicit site port setting in install script ([b851b0b](https://codeberg.org/vhs/after-dark/commit/b851b0b))
* **onboarding:** serve site not help when starting site from installer ([3447556](https://codeberg.org/vhs/after-dark/commit/3447556))
* **partials:** fix markup validation error ([43a9ed0](https://codeberg.org/vhs/after-dark/commit/43a9ed0))
* **partials:** make button onclick handler work as expected ([74ef00a](https://codeberg.org/vhs/after-dark/commit/74ef00a))
* **partials/powered-by:** point to expected directory of refactored file ([d61f131](https://codeberg.org/vhs/after-dark/commit/d61f131))
* **personalization:** rename accent color to trim color ([953c73e](https://codeberg.org/vhs/after-dark/commit/953c73e))
* **scripts:** add || to server shutdown ([f7f2849](https://codeberg.org/vhs/after-dark/commit/f7f2849))
* **scripts:** address error generating docs after upgrade ([f84cd40](https://codeberg.org/vhs/after-dark/commit/f84cd40))
* **scripts:** always regnerate help docs ([082f1be](https://codeberg.org/vhs/after-dark/commit/082f1be))
* **scripts:** automatically stop running help servers on upgrade ([87feadc](https://codeberg.org/vhs/after-dark/commit/87feadc))
* **scripts:** remove help before generating on upgrade ([0049586](https://codeberg.org/vhs/after-dark/commit/0049586))
* **scripts:** resolve help doc path lookups when no custom content dir ([6792cd7](https://codeberg.org/vhs/after-dark/commit/6792cd7))
* **scripts:** resolve syntax bugs in script ([0b349ed](https://codeberg.org/vhs/after-dark/commit/0b349ed))
* **scripts:** resolve tar cd issue ([a573640](https://codeberg.org/vhs/after-dark/commit/a573640))
* **scripts:** update install to place theme metadata in theme data folder ([5e89f6d](https://codeberg.org/vhs/after-dark/commit/5e89f6d)), closes [#59](https://codeberg.org/vhs/after-dark/issues/59)
* **shortcode/hackcss-alert:** restore legacy behavior for shortcode ([975f2b7](https://codeberg.org/vhs/after-dark/commit/975f2b7))
* **shortcode/navmenu:** improve microdata semantics & add test tool to docs ([31992f5](https://codeberg.org/vhs/after-dark/commit/31992f5)), closes [#100](https://codeberg.org/vhs/after-dark/issues/100)
* **shortcodes:** remove insignificant spaces after external links ([1f06f5c](https://codeberg.org/vhs/after-dark/commit/1f06f5c))
* **shortcodes:** remove privacytube and coub shortcodes ([f5ddb1a](https://codeberg.org/vhs/after-dark/commit/f5ddb1a)), closes [#35](https://codeberg.org/vhs/after-dark/issues/35)
* **shortcodes:** remove standard link treatment from figures ([a619320](https://codeberg.org/vhs/after-dark/commit/a619320))
* **shortcodes/button:** allow name attribute & pass id as expected ([c58645a](https://codeberg.org/vhs/after-dark/commit/c58645a))
* **snippets:** add name attribute to form ([78f3482](https://codeberg.org/vhs/after-dark/commit/78f3482))
* **snippets:** reverse logic for external link styling ([2889192](https://codeberg.org/vhs/after-dark/commit/2889192))
* **styles:** leftpad orderd lists ([a944ead](https://codeberg.org/vhs/after-dark/commit/a944ead))
* **theme:** enable white theme variant ([2addeaa](https://codeberg.org/vhs/after-dark/commit/2addeaa))
* **typography:** only justify and hyphenate article bodies ([52f046a](https://codeberg.org/vhs/after-dark/commit/52f046a))
* **typography:** remove text justification and hyphenation ([2bfa8f7](https://codeberg.org/vhs/after-dark/commit/2bfa8f7))
* **typography:** stop justifying and hyphenating text on small viewports ([929ae7e](https://codeberg.org/vhs/after-dark/commit/929ae7e))
* 404 page theme color url ref ([2303007](https://codeberg.org/vhs/after-dark/commit/2303007))
* add add theme color to 404 page ([1379cfc](https://codeberg.org/vhs/after-dark/commit/1379cfc))


### Build System

* **npm:** pull unused dev dep ([14bab76](https://codeberg.org/vhs/after-dark/commit/14bab76))
* **npm:** upgrade lockfile to v1 ([25ce8fa](https://codeberg.org/vhs/after-dark/commit/25ce8fa))
* **npm:** upgrade standard-version to latest ([2ecf9de](https://codeberg.org/vhs/after-dark/commit/2ecf9de))
* add sha512 digest to git tags and gpg sign them ([e16ab0b](https://codeberg.org/vhs/after-dark/commit/e16ab0b))
* append sha512 to release tag and self-sign ([f054416](https://codeberg.org/vhs/after-dark/commit/f054416)), closes [#33](https://codeberg.org/vhs/after-dark/issues/33)
* enclose release tag sha512 in delimeters ([38127fc](https://codeberg.org/vhs/after-dark/commit/38127fc)), closes [#33](https://codeberg.org/vhs/after-dark/issues/33)
* **$hugo:** inline css using readFile template function ([37834f9](https://codeberg.org/vhs/after-dark/commit/37834f9)), closes [#44](https://codeberg.org/vhs/after-dark/issues/44)
* **$npm:** patch moderate security vulnerability in dev dep ([6c763c3](https://codeberg.org/vhs/after-dark/commit/6c763c3))
* **$npm:** switch from yarn to npm lockfile ([185ad8f](https://codeberg.org/vhs/after-dark/commit/185ad8f))
* **$yarn:** add yarn and update dev dependencies and scripts ([d115256](https://codeberg.org/vhs/after-dark/commit/d115256))
* **bin:** improve support for linux ([f2c3d0b](https://codeberg.org/vhs/after-dark/commit/f2c3d0b))
* **install:** bail early ([55798c3](https://codeberg.org/vhs/after-dark/commit/55798c3))
* **install:** update install process ([86c69ef](https://codeberg.org/vhs/after-dark/commit/86c69ef))
* **scripts:** remove unused variables from install script ([a1e095a](https://codeberg.org/vhs/after-dark/commit/a1e095a))


### Features

* **$archetypes:** turn archetypes into go templates ([1ef09c6](https://codeberg.org/vhs/after-dark/commit/1ef09c6))
* **$archetypes:** turn archetypes into go templates ([56d86d3](https://codeberg.org/vhs/after-dark/commit/56d86d3))
* **$layout:** add base element to base layout ([ddff5a9](https://codeberg.org/vhs/after-dark/commit/ddff5a9)), closes [#60](https://codeberg.org/vhs/after-dark/issues/60)
* **$layout:** Add support for external stylesheets ([917cf91](https://codeberg.org/vhs/after-dark/commit/917cf91)), closes [#49](https://codeberg.org/vhs/after-dark/issues/49)
* **$layout:** add telegram iv support ([d6bf3b6](https://codeberg.org/vhs/after-dark/commit/d6bf3b6)), closes [#113](https://codeberg.org/vhs/after-dark/issues/113)
* **$layouts:** add fuzzy search ([f9a787e](https://codeberg.org/vhs/after-dark/commit/f9a787e)), closes [#83](https://codeberg.org/vhs/after-dark/issues/83)
* **$layouts:** add post images ([b151db3](https://codeberg.org/vhs/after-dark/commit/b151db3))
* **$layouts:** add twitter cards ([a1412a9](https://codeberg.org/vhs/after-dark/commit/a1412a9)), closes [#76](https://codeberg.org/vhs/after-dark/issues/76)
* **$layouts:** allow customization of referrer policy and add privacy-focused default ([7bde6b6](https://codeberg.org/vhs/after-dark/commit/7bde6b6)), closes [#96](https://codeberg.org/vhs/after-dark/issues/96)
* **$layouts:** hide related content reading time on small screen ([7cfa4eb](https://codeberg.org/vhs/after-dark/commit/7cfa4eb))
* **$layouts:** use related content feature introduced in hugo@0.27 ([b408db9](https://codeberg.org/vhs/after-dark/commit/b408db9)), closes [#54](https://codeberg.org/vhs/after-dark/issues/54)
* **$partials:** add pubdate structured data to post byline ([42f34ae](https://codeberg.org/vhs/after-dark/commit/42f34ae))
* **$shortcode:** add coub shortcode for gifs with sound ([df9dae8](https://codeberg.org/vhs/after-dark/commit/df9dae8)), closes [#63](https://codeberg.org/vhs/after-dark/issues/63)
* **$shortcode:** style cite element inside block quotation ([158c0f4](https://codeberg.org/vhs/after-dark/commit/158c0f4))
* **$shortcodes:** add frame targeting to custom figure shortcode ([b802dab](https://codeberg.org/vhs/after-dark/commit/b802dab))
* **$shortcodes:** add youtube without cookies ([f6f837e](https://codeberg.org/vhs/after-dark/commit/f6f837e)), closes [#62](https://codeberg.org/vhs/after-dark/issues/62)
* **$shortcodes:** enable target and method control for button/buttongroup ([c3d1599](https://codeberg.org/vhs/after-dark/commit/c3d1599)), closes [#56](https://codeberg.org/vhs/after-dark/issues/56)
* **$shortcodes:** make button shortcode clickable ([fa24f4a](https://codeberg.org/vhs/after-dark/commit/fa24f4a)), closes [#40](https://codeberg.org/vhs/after-dark/issues/40)
* **$theme:** add support for bpg image format ([3976ec0](https://codeberg.org/vhs/after-dark/commit/3976ec0)), closes [#45](https://codeberg.org/vhs/after-dark/issues/45)
* **bin:** add script to preview site online over https ([730df77](https://codeberg.org/vhs/after-dark/commit/730df77)), closes [#21](https://codeberg.org/vhs/after-dark/issues/21)
* **feature/fuzzy-search:** add aria landmark to search form ([5b26f51](https://codeberg.org/vhs/after-dark/commit/5b26f51))
* **feature/post-images:** add image captions and structured data ([9a5c283](https://codeberg.org/vhs/after-dark/commit/9a5c283))
* **feature/section-menu:** add support for html link decoration ([f02c68f](https://codeberg.org/vhs/after-dark/commit/f02c68f))
* **feature/section-menu:** add support for multiple nav menus ([0c468a5](https://codeberg.org/vhs/after-dark/commit/0c468a5))
* **feature/security:** add content security policy ([7e438ad](https://codeberg.org/vhs/after-dark/commit/7e438ad))
* **feature/table-of-contents:** add native smooth-scroll ([f1606b6](https://codeberg.org/vhs/after-dark/commit/f1606b6)), closes [#43](https://codeberg.org/vhs/after-dark/issues/43)
* **fuzzy-search:** add ability to assign arbitrary hotkeys ([f429c4a](https://codeberg.org/vhs/after-dark/commit/f429c4a)), closes [#74](https://codeberg.org/vhs/after-dark/issues/74)
* **help:** multipage help docs ([ef25e00](https://codeberg.org/vhs/after-dark/commit/ef25e00)), closes [#61](https://codeberg.org/vhs/after-dark/issues/61)
* **help:** update and run help anytime using included script ([fc93864](https://codeberg.org/vhs/after-dark/commit/fc93864))
* **help/homepage:** update security featurette ([c567bd4](https://codeberg.org/vhs/after-dark/commit/c567bd4))
* **highlighting:** add syntax highlighting ([a038ee0](https://codeberg.org/vhs/after-dark/commit/a038ee0))
* **install:** add installation challenge ([9d438fe](https://codeberg.org/vhs/after-dark/commit/9d438fe))
* **install:** faux install validation using npm sha512 digest ([e7625da](https://codeberg.org/vhs/after-dark/commit/e7625da)), closes [#33](https://codeberg.org/vhs/after-dark/issues/33)
* **install:** provide welcome post with online help ([79838ed](https://codeberg.org/vhs/after-dark/commit/79838ed))
* **install:** simplify installation ([da3f66e](https://codeberg.org/vhs/after-dark/commit/da3f66e))
* **install:** streamline installation ([15f61f5](https://codeberg.org/vhs/after-dark/commit/15f61f5)), closes [#2](https://codeberg.org/vhs/after-dark/issues/2)
* **layout,install:** add automatic syntax highlighting ([70d2bfc](https://codeberg.org/vhs/after-dark/commit/70d2bfc))
* **layouts:** add meta keywords to base template ([d5f146f](https://codeberg.org/vhs/after-dark/commit/d5f146f)), closes [#20](https://codeberg.org/vhs/after-dark/issues/20)
* **layouts:** add support for hugo 0.20.2 ([ac42370](https://codeberg.org/vhs/after-dark/commit/ac42370))
* **layouts:** provide form builder snippets ([ada893d](https://codeberg.org/vhs/after-dark/commit/ada893d))
* **layouts/*:** add cookie disclaimer ([446f6f8](https://codeberg.org/vhs/after-dark/commit/446f6f8))
* **layouts/search:** and placeholder and allow basic customization ([7a669ef](https://codeberg.org/vhs/after-dark/commit/7a669ef))
* **layouts/shortcodes:** add grid and cell flexbox shortcode & snippet ([77df2c4](https://codeberg.org/vhs/after-dark/commit/77df2c4)), closes [#67](https://codeberg.org/vhs/after-dark/issues/67)
* **layouts/shortcodes:** add select shortcode, docs and example use ([85eefe5](https://codeberg.org/vhs/after-dark/commit/85eefe5))
* **license:** wtfpl -> agpl-3.0-or-later ([1a7a2a9](https://codeberg.org/vhs/after-dark/commit/1a7a2a9)), closes [#148](https://codeberg.org/vhs/after-dark/issues/148)
* **LICENSE:** you just do what the fuck you want to ([d75ea18](https://codeberg.org/vhs/after-dark/commit/d75ea18))
* **module/toxic-swamp:** integrate module beta ([743ebfc](https://codeberg.org/vhs/after-dark/commit/743ebfc))
* **modules:** add analytics module ([1c5c6bb](https://codeberg.org/vhs/after-dark/commit/1c5c6bb)), closes [#1](https://codeberg.org/vhs/after-dark/issues/1)
* **modules:** add fractal forest module for bpg image format support ([76b9cfd](https://codeberg.org/vhs/after-dark/commit/76b9cfd)), closes [#8](https://codeberg.org/vhs/after-dark/issues/8)
* **modules:** add hall of mirrors ([592b2b2](https://codeberg.org/vhs/after-dark/commit/592b2b2)), closes [#24](https://codeberg.org/vhs/after-dark/issues/24)
* **onboarding:** streamline installation ([34ce45a](https://codeberg.org/vhs/after-dark/commit/34ce45a))
* **personalization:** add customizable accent colors ([be90f47](https://codeberg.org/vhs/after-dark/commit/be90f47))
* select theme variant directly from site config ([81a4663](https://codeberg.org/vhs/after-dark/commit/81a4663)), closes [#6](https://codeberg.org/vhs/after-dark/issues/6)
* **powered-by:** add page generation date ([430a468](https://codeberg.org/vhs/after-dark/commit/430a468))
* **scripts:** add theme upgrade script ([c9a5c3a](https://codeberg.org/vhs/after-dark/commit/c9a5c3a)), closes [#59](https://codeberg.org/vhs/after-dark/issues/59)
* **scripts:** support custom content dirs in config file ([e72e914](https://codeberg.org/vhs/after-dark/commit/e72e914)), closes [#59](https://codeberg.org/vhs/after-dark/issues/59)
* **scripts/upgrade:** prompt for update if metadata cannot be found ([db3216d](https://codeberg.org/vhs/after-dark/commit/db3216d))
* **shortcode:** add trusted custom attr to external ([9b0d5f5](https://codeberg.org/vhs/after-dark/commit/9b0d5f5))
* **shortcodes:** add blockquote shortcode ([d57e535](https://codeberg.org/vhs/after-dark/commit/d57e535))
* **shortcodes:** add figure shortcode ([2c06d76](https://codeberg.org/vhs/after-dark/commit/2c06d76))
* **shortcodes:** add form attr to button ([86d4fee](https://codeberg.org/vhs/after-dark/commit/86d4fee))
* **shortcodes:** add hack progress bar component ([1933b45](https://codeberg.org/vhs/after-dark/commit/1933b45))
* **shortcodes:** add hackcss alert shortcode ([09720f8](https://codeberg.org/vhs/after-dark/commit/09720f8))
* **shortcodes:** add hackcss alert shortcode ([6f20f2d](https://codeberg.org/vhs/after-dark/commit/6f20f2d))
* **shortcodes:** add hackcss button group component ([af226e4](https://codeberg.org/vhs/after-dark/commit/af226e4))
* **shortcodes:** add hackcss button shortcode ([65fd4e3](https://codeberg.org/vhs/after-dark/commit/65fd4e3))
* **shortcodes:** add hackcss card component ([0787170](https://codeberg.org/vhs/after-dark/commit/0787170))
* **shortcodes:** add hackcss loading component ([e0165ed](https://codeberg.org/vhs/after-dark/commit/e0165ed))
* **shortcodes:** add hackcss progress component ([b475a47](https://codeberg.org/vhs/after-dark/commit/b475a47))
* **shortcodes:** add id attribute for forms ([a76dff1](https://codeberg.org/vhs/after-dark/commit/a76dff1))
* **shortcodes:** add navmenu ([87bd381](https://codeberg.org/vhs/after-dark/commit/87bd381)), closes [#78](https://codeberg.org/vhs/after-dark/issues/78)
* **shortcodes:** add navmenu navigational aid ([a333be4](https://codeberg.org/vhs/after-dark/commit/a333be4))
* **shortcodes:** add title attr to external ([9386ef4](https://codeberg.org/vhs/after-dark/commit/9386ef4))
* **shortcodes:** add type attribute for external links ([5c99a96](https://codeberg.org/vhs/after-dark/commit/5c99a96))
* **shortcodes:** add value attr to button ([6d63de4](https://codeberg.org/vhs/after-dark/commit/6d63de4))
* **shortcodes:** allow anonymous blockquotes ([256d15c](https://codeberg.org/vhs/after-dark/commit/256d15c))
* **shortcodes:** allow button disablement ([7bbf79b](https://codeberg.org/vhs/after-dark/commit/7bbf79b)), closes [#65](https://codeberg.org/vhs/after-dark/issues/65)
* **shortcodes:** trim whitespace in id attributes ([a5c5704](https://codeberg.org/vhs/after-dark/commit/a5c5704))
* **shortcodes/button:** add custom class support ([60fb9d2](https://codeberg.org/vhs/after-dark/commit/60fb9d2))
* **shortcodes/external:** add shorthand usage for named anchors ([0aa0585](https://codeberg.org/vhs/after-dark/commit/0aa0585))
* **snippets:** add external link snippet ([848cd33](https://codeberg.org/vhs/after-dark/commit/848cd33)), closes [#48](https://codeberg.org/vhs/after-dark/issues/48)
* **snippets:** alert user on invalid autocomplete value ([cabf33b](https://codeberg.org/vhs/after-dark/commit/cabf33b)), closes [#46](https://codeberg.org/vhs/after-dark/issues/46)
* **typography:** justify text output and hyphenate ([738aaaa](https://codeberg.org/vhs/after-dark/commit/738aaaa))


### BREAKING CHANGES

* **license:** relicensing
* **feature/section-menu:** removes disqus entirely, previously a deprecated feature
* **shortcodes:** shortcodes removed must now be copied to the theme, if used
* **modules:** google analytics no longer supported
* hugo 0.43 and above required. css override file locations have changed
* **$archetypes:** Minimum Hugo version set 0.24, 0.16 - 0.23 must modify archetypes

to upgrade add `date` and `title` to custom archetypes. if using a version of hugo prior to 0.24 the custom templates should remove `title` and `date` and not use go templating logic in the archetype files
* **$archetypes:** Minimum Hugo version set 0.24, 0.16 - 0.23 must modify archetypes
* **$hugo:** Forks and users who've customized css need adjustment as shown in the commit message. There's not a whole lot to it, but it's breaking nonetheless.

Using this approach enables the CSS to be moved from the partials directory into the static
directory where it belonged the whole time. Perfect set-up for those who decide to use http2/h2
server push for loading styles more efficiently.



<a name="7.4.1"></a>
## [7.4.1](https://codeberg.org/vhs/after-dark/compare/v7.4.0...v7.4.1) (2019-04-28)


### Bug Fixes

* **fuzzy-search:** handle search layout hotkey assignments properly ([b2c549e](https://codeberg.org/vhs/after-dark/commits/b2c549e))



<a name="7.4.0"></a>
# [7.4.0](https://codeberg.org/vhs/after-dark/compare/v7.2.3...v7.4.0) (2019-04-28)


### Features

* **fuzzy-search:** add ability to assign arbitrary hotkeys ([48a15c4](https://codeberg.org/vhs/after-dark/commits/48a15c4)), closes [#74](https://codeberg.org/vhs/after-dark/issues/74)
* **shortcode:** add trusted custom attr to external ([0c81ba7](https://codeberg.org/vhs/after-dark/commits/0c81ba7))

**Note:** Shortcode update included again in this release with signed commmit

<a name="7.3.0"></a>
# [7.3.0](https://codeberg.org/vhs/after-dark/compare/v7.2.3...v7.3.0) (2019-04-27)


### Features

* **shortcode:** add trusted custom attr to external ([ba1d35e](https://codeberg.org/vhs/after-dark/commits/ba1d35e))



<a name="7.2.4"></a>
## [7.2.4](https://codeberg.org/vhs/after-dark/compare/v7.2.3...v7.2.4) (2019-04-16)

### Bug Fixes

Fix issue to allow docs site to load

<a name="7.2.3"></a>
## [7.2.3](https://codeberg.org/vhs/after-dark/compare/v7.2.2...v7.2.3) (2019-04-12)

### But Fixes

Fix remaining Hugo warnings masked before last release

<a name="7.2.2"></a>
## [7.2.2](https://codeberg.org/vhs/after-dark/compare/v7.2.1...v7.2.2) (2019-04-12)


### Bug Fixes

* **feature/web-feeds:** output last build date in rfc822 with 4-digit year ([c735feb](https://codeberg.org/vhs/after-dark/commits/c735feb))
* **shortcode/hackcss-alert:** restore legacy behavior for shortcode ([b127eeb](https://codeberg.org/vhs/after-dark/commits/b127eeb))



<a name="7.2.1"></a>
## [7.2.1](https://codeberg.org/vhs/after-dark/compare/v7.2.0...v7.2.1) (2019-02-22)


### Bug Fixes

* **layout/default:** workaround hugo bug on eval len(nil) go tmpl ([258c747](https://codeberg.org/vhs/after-dark/commits/258c747)), closes [#135](https://codeberg.org/vhs/after-dark/issues/135)



<a name="7.2.0"></a>
# [7.2.0](https://codeberg.org/vhs/after-dark/compare/v7.0.1...v7.2.0) (2019-02-20)


### Features

* **help/homepage:** update security featurette ([dcd0199](https://codeberg.org/vhs/after-dark/commits/dcd0199))
* **layouts:** add rss with full content ([fe99466](https://codeberg.org/vhs/after-dark/commits/fe99466))


<a name="7.1.0"></a>
# [7.1.0](https://codeberg.org/vhs/after-dark/compare/v7.0.3...v7.1.0) (2019-02-18)


### Features

* **feature/security:** add content security policy ([de24354](https://codeberg.org/vhs/after-dark/commits/de24354)

### Bug Fixes

<a name="7.0.3"></a>
## [7.0.3](https://codeberg.org/vhs/after-dark/compare/v7.0.2...v7.0.3) (2019-02-12)

* **layout/default:** delegate module config to modules ([79f2a13](https://codeberg.org/vhs/after-dark/commit/79f2a13))


### Bug Fixes

<a name="7.0.2"></a>
## [7.0.2](https://codeberg.org/vhs/after-dark/compare/v7.0.1...v7.0.2) (2019-02-12)

* **feature/security:** restore gpg signing of commits and tags


<a name="7.0.1"></a>
## [7.0.1](https://codeberg.org/vhs/after-dark/compare/v7.0.0...v7.0.1) (2019-02-10)


### Bug Fixes

* **partials/powered-by:** point to expected directory of refactored file ([f32207f](https://codeberg.org/vhs/after-dark/commits/f32207f))



<a name="7.0.0"></a>
# [7.0.0](https://codeberg.org/vhs/after-dark/compare/v6.16.1...v7.0.0) (2019-02-08)


### Bug Fixes

* **assets/css:** normalize base font-size, large screens ([862da61](https://codeberg.org/vhs/after-dark/commits/862da61))


### Features

* **feature/section-menu:** add support for multiple nav menus ([427f9d2](https://codeberg.org/vhs/after-dark/commits/427f9d2))
* **feature/table-of-contents:** add native smooth-scroll ([94b13a1](https://codeberg.org/vhs/after-dark/commits/94b13a1)), closes [#43](https://codeberg.org/vhs/after-dark/issues/43)


### BREAKING CHANGES

* **feature/section-menu:** removes disqus entirely, previously a deprecated feature



<a name="6.16.1"></a>
## [6.16.1](https://codeberg.org/vhs/after-dark/compare/v6.16.0...v6.16.1) (2019-01-24)


### Bug Fixes

* **feature/post-images:** fix yandex validation error ([93cc90f](https://codeberg.org/vhs/after-dark/commits/93cc90f))
* **feature/post-images:** zap extra whitespaces ([32767d9](https://codeberg.org/vhs/after-dark/commits/32767d9))



<a name="6.16.0"></a>
# [6.16.0](https://codeberg.org/vhs/after-dark/compare/v6.15.1...v6.16.0) (2019-01-23)


### Bug Fixes

* **assets/css:** normalize samp element font size with pre ([c42ccba](https://codeberg.org/vhs/after-dark/commits/c42ccba))
* **assets/css:** normalize whitespace around toc when post images present ([c3f37a5](https://codeberg.org/vhs/after-dark/commits/c3f37a5))


### Features

* **feature/fuzzy-search:** add aria landmark to search form ([7a9b75a](https://codeberg.org/vhs/after-dark/commits/7a9b75a))
* **feature/post-images:** add image captions and structured data ([41f41e7](https://codeberg.org/vhs/after-dark/commits/41f41e7))
* **feature/section-menu:** add support for html link decoration ([7634b42](https://codeberg.org/vhs/after-dark/commits/7634b42))
* **shortcodes/external:** add shorthand usage for named anchors ([243d15a](https://codeberg.org/vhs/after-dark/commits/243d15a))



<a name="6.15.1"></a>
## [6.15.1](https://codeberg.org/vhs/after-dark/compare/v6.15.0...v6.15.1) (2018-12-28)



<a name="6.15.0"></a>
# [6.15.0](https://codeberg.org/vhs/after-dark/compare/v6.14.0...v6.15.0) (2018-12-11)


### Bug Fixes

* **assets/theme:** normalize blockquote line-height with rest of document ([20ec883](https://codeberg.org/vhs/after-dark/commits/20ec883))


### Features

* **layouts/shortcodes:** add grid and cell flexbox shortcode & snippet ([5bc322b](https://codeberg.org/vhs/after-dark/commits/5bc322b)), closes [#67](https://codeberg.org/vhs/after-dark/issues/67)
* **layouts/shortcodes:** add select shortcode, docs and example use ([71fff83](https://codeberg.org/vhs/after-dark/commits/71fff83))



<a name="6.14.0"></a>
# [6.14.0](https://codeberg.org/vhs/after-dark/compare/v6.13.5...v6.14.0) (2018-11-21)


### Features

* **layouts/*:** add cookie disclaimer ([e8d9f68](https://codeberg.org/vhs/after-dark/commits/e8d9f68))



<a name="6.13.5"></a>
## [6.13.5](https://codeberg.org/vhs/after-dark/compare/v6.13.4...v6.13.5) (2018-11-19)

* **package:** updated tagline and software purpose

<a name="6.13.4"></a>
## [6.13.4](https://codeberg.org/vhs/after-dark/compare/v6.13.3...v6.13.4) (2018-11-05)


### Bug Fixes

* **assets/css:** normalize size of help text on small viewports ([bc0e33f](https://codeberg.org/vhs/after-dark/commits/bc0e33f))


### Reverts

* **help/home:** disable button wrapped in anchor tag ([88e4b17](https://codeberg.org/vhs/after-dark/commits/88e4b17))



<a name="6.13.3"></a>
## [6.13.3](https://codeberg.org/vhs/after-dark/compare/v6.13.2...v6.13.3) (2018-10-18)


### Bug Fixes

* **archetypes/validate:** swap string method for sha trim behavior ([70e2c47](https://codeberg.org/vhs/after-dark/commits/70e2c47)), closes [#90](https://codeberg.org/vhs/after-dark/issues/90)
* **assets/css:** unset ua default figure element margin ([46326bf](https://codeberg.org/vhs/after-dark/commits/46326bf))



<a name="6.13.2"></a>
## [6.13.2](https://codeberg.org/vhs/after-dark/compare/v6.13.1...v6.13.2) (2018-10-15)


### Bug Fixes

* **shortcode/navmenu:** improve microdata semantics & add test tool to docs ([4913934](https://codeberg.org/vhs/after-dark/commits/4913934)), closes [#100](https://codeberg.org/vhs/after-dark/issues/100)



<a name="6.13.1"></a>
## [6.13.1](https://codeberg.org/vhs/after-dark/compare/v6.13.0...v6.13.1) (2018-10-12)



<a name="6.13.0"></a>
# [6.13.0](https://codeberg.org/vhs/after-dark/compare/v6.12.7...v6.13.0) (2018-10-05)


### Bug Fixes

* **layouts/partials:** add main menu display condition ([a8fb1cb](https://codeberg.org/vhs/after-dark/commits/a8fb1cb)), closes [#78](https://codeberg.org/vhs/after-dark/issues/78)
* **shortcodes/button:** allow name attribute & pass id as expected ([7aca084](https://codeberg.org/vhs/after-dark/commits/7aca084))


### Features

* **module/toxic-swamp:** integrate module beta ([8f0bc30](https://codeberg.org/vhs/after-dark/commits/8f0bc30))
* **shortcodes/button:** add custom class support ([eb8f2db](https://codeberg.org/vhs/after-dark/commits/eb8f2db))



<a name="6.12.7"></a>
## [6.12.7](https://codeberg.org/vhs/after-dark/compare/v6.12.6...v6.12.7) (2018-09-26)



<a name="6.12.6"></a>
## [6.12.6](https://codeberg.org/vhs/after-dark/compare/v6.12.5...v6.12.6) (2018-09-25)



<a name="6.12.5"></a>
## [6.12.5](https://codeberg.org/vhs/after-dark/compare/v6.12.4...v6.12.5) (2018-09-24)



<a name="6.12.4"></a>
## [6.12.4](https://codeberg.org/vhs/after-dark/compare/v6.12.3...v6.12.4) (2018-09-23)


### Bug Fixes

* **help/home:** add missing query string param to search link ([5b842f4](https://codeberg.org/vhs/after-dark/commits/5b842f4))



<a name="6.12.3"></a>
## [6.12.3](https://codeberg.org/vhs/after-dark/compare/v6.12.2...v6.12.3) (2018-09-22)



<a name="6.12.2"></a>
## [6.12.2](https://codeberg.org/vhs/after-dark/compare/v6.12.1...v6.12.2) (2018-09-22)



<a name="6.12.1"></a>
## [6.12.1](https://codeberg.org/vhs/after-dark/compare/v6.12.0...v6.12.1) (2018-09-22)



<a name="6.12.0"></a>
# [6.12.0](https://codeberg.org/vhs/after-dark/compare/v6.11.2...v6.12.0) (2018-09-22)


### Features

* **scripts/upgrade:** prompt for update if metadata cannot be found ([b3a62ff](https://codeberg.org/vhs/after-dark/commits/b3a62ff))



<a name="6.11.2"></a>
## [6.11.2](https://codeberg.org/vhs/after-dark/compare/v6.11.1...v6.11.2) (2018-09-22)


### Bug Fixes

* **scripts:** add || to server shutdown ([f834a0d](https://codeberg.org/vhs/after-dark/commits/f834a0d))



<a name="6.11.1"></a>
## [6.11.1](https://codeberg.org/vhs/after-dark/compare/v6.11.0...v6.11.1) (2018-09-22)


### Bug Fixes

* **onboarding:** add explicit site port setting in install script ([64fefb2](https://codeberg.org/vhs/after-dark/commits/64fefb2))
* **onboarding:** serve site not help when starting site from installer ([384895b](https://codeberg.org/vhs/after-dark/commits/384895b))



<a name="6.11.0"></a>
# [6.11.0](https://codeberg.org/vhs/after-dark/compare/v6.10.1...v6.11.0) (2018-09-21)


### Features

* **onboarding:** streamline installation ([8a1cfee](https://codeberg.org/vhs/after-dark/commits/8a1cfee))



<a name="6.10.1"></a>
## [6.10.1](https://codeberg.org/vhs/after-dark/compare/v6.10.0...v6.10.1) (2018-09-19)


### Bug Fixes

* **help/home:** add performance info & undocumented features ([14c1faa](https://codeberg.org/vhs/after-dark/commits/14c1faa))



<a name="6.10.0"></a>
# [6.10.0](https://codeberg.org/vhs/after-dark/compare/v6.9.7...v6.10.0) (2018-09-14)


### Features

* **shortcodes:** add navmenu ([3e53c48](https://codeberg.org/vhs/after-dark/commits/3e53c48)), closes [#78](https://codeberg.org/vhs/after-dark/issues/78)



<a name="6.9.7"></a>
## [6.9.7](https://codeberg.org/vhs/after-dark/compare/v6.9.6...v6.9.7) (2018-09-14)


### Bug Fixes

* **layouts/partials:** move navmenu snippet into theme ([e432e5c](https://codeberg.org/vhs/after-dark/commits/e432e5c)), closes [#78](https://codeberg.org/vhs/after-dark/issues/78)



<a name="6.9.6"></a>
## [6.9.6](https://codeberg.org/vhs/after-dark/compare/v6.9.5...v6.9.6) (2018-09-12)


### Bug Fixes

* **archetypes:** fix broken links in post archetype ([9a46e86](https://codeberg.org/vhs/after-dark/commits/9a46e86))



<a name="6.9.5"></a>
## [6.9.5](https://codeberg.org/vhs/after-dark/compare/v6.9.4...v6.9.5) (2018-09-12)


### Bug Fixes

* **archetypes:** prevent internal links from opening in new window ([a5237a8](https://codeberg.org/vhs/after-dark/commits/a5237a8))



<a name="6.9.4"></a>
## [6.9.4](https://codeberg.org/vhs/after-dark/compare/v6.9.3...v6.9.4) (2018-09-12)


### Bug Fixes

* **archetypes:** close tag body on last external shortcode ([aa97ed3](https://codeberg.org/vhs/after-dark/commits/aa97ed3))



<a name="6.9.3"></a>
## [6.9.3](https://codeberg.org/vhs/after-dark/compare/v6.9.2...v6.9.3) (2018-09-12)


### Bug Fixes

* **scripts:** automatically stop running help servers on upgrade ([b6b9a56](https://codeberg.org/vhs/after-dark/commits/b6b9a56))



<a name="6.9.2"></a>
## [6.9.2](https://codeberg.org/vhs/after-dark/compare/v6.9.1...v6.9.2) (2018-09-12)


### Bug Fixes

* **archetypes:** default posts to display as published content ([b4fd2bf](https://codeberg.org/vhs/after-dark/commits/b4fd2bf))



<a name="6.9.1"></a>
## [6.9.1](https://codeberg.org/vhs/after-dark/compare/v6.9.0...v6.9.1) (2018-09-12)



<a name="6.9.0"></a>
# [6.9.0](https://codeberg.org/vhs/after-dark/compare/v6.8.0...v6.9.0) (2018-09-12)


### Features

* **help:** multipage help docs ([0446f50](https://codeberg.org/vhs/after-dark/commits/0446f50)), closes [#61](https://codeberg.org/vhs/after-dark/issues/61)



<a name="6.8.0"></a>
# [6.8.0](https://codeberg.org/vhs/after-dark/compare/v6.7.9...v6.8.0) (2018-09-08)


### Bug Fixes

* **components:** correct help block class attr behavior ([8336029](https://codeberg.org/vhs/after-dark/commits/8336029))
* **help:** rename 404 to error page ([2191740](https://codeberg.org/vhs/after-dark/commits/2191740))
* **layouts:** remove navmenu from help layout ([4934a0c](https://codeberg.org/vhs/after-dark/commits/4934a0c))
* **partials:** make button onclick handler work as expected ([9998957](https://codeberg.org/vhs/after-dark/commits/9998957))
* **shortcodes:** remove insignificant spaces after external links ([1190b94](https://codeberg.org/vhs/after-dark/commits/1190b94))
* **shortcodes:** remove standard link treatment from figures ([abade6f](https://codeberg.org/vhs/after-dark/commits/abade6f))
* **styles:** leftpad orderd lists ([579404e](https://codeberg.org/vhs/after-dark/commits/579404e))


### Features

* **layouts/search:** and placeholder and allow basic customization ([e4df3a5](https://codeberg.org/vhs/after-dark/commits/e4df3a5))
* **shortcodes:** add form attr to button ([f04ea28](https://codeberg.org/vhs/after-dark/commits/f04ea28))
* **shortcodes:** add id attribute for forms ([10f1024](https://codeberg.org/vhs/after-dark/commits/10f1024))
* **shortcodes:** add navmenu navigational aid ([aa46ed3](https://codeberg.org/vhs/after-dark/commits/aa46ed3))
* **shortcodes:** add title attr to external ([ce451e4](https://codeberg.org/vhs/after-dark/commits/ce451e4))
* **shortcodes:** add type attribute for external links ([d80b1f3](https://codeberg.org/vhs/after-dark/commits/d80b1f3))
* **shortcodes:** add value attr to button ([fbf744e](https://codeberg.org/vhs/after-dark/commits/fbf744e))
* **shortcodes:** allow anonymous blockquotes ([3ad1f04](https://codeberg.org/vhs/after-dark/commits/3ad1f04))
* **shortcodes:** allow button disablement ([f145780](https://codeberg.org/vhs/after-dark/commits/f145780)), closes [#65](https://codeberg.org/vhs/after-dark/issues/65)
* **shortcodes:** trim whitespace in id attributes ([523b2a1](https://codeberg.org/vhs/after-dark/commits/523b2a1))


### Performance Improvements

* **search:** increase specificity of v-cloak declaration ([35eed67](https://codeberg.org/vhs/after-dark/commits/35eed67))



<a name="6.7.9"></a>
## [6.7.9](https://codeberg.org/vhs/after-dark/compare/v6.7.8...v6.7.9) (2018-09-07)

### Bug Fixes

* **styles:** prevent jumping scrollbar in windows ([9d2beec](https://codeberg.org/vhs/after-dark/commit/9d2beec93c72b6145507f850689eae3a64cf22f0)), closes #72 (thanks @tkalpakidis)

<a name="6.7.8"></a>
## [6.7.8](https://codeberg.org/vhs/after-dark/compare/v6.7.7...v6.7.8) (2018-08-30)



<a name="6.7.7"></a>
## [6.7.7](https://codeberg.org/vhs/after-dark/compare/v6.7.6...v6.7.7) (2018-08-27)


### Bug Fixes

* **help:** change 404 page to error page and improve script perf ([f95aaa3](https://codeberg.org/vhs/after-dark/commits/f95aaa3)), closes [#43](https://codeberg.org/vhs/after-dark/issues/43)



<a name="6.7.6"></a>
## [6.7.6](https://codeberg.org/vhs/after-dark/compare/v6.7.5...v6.7.6) (2018-08-27)


### Bug Fixes

* **scripts:** always regnerate help docs ([90b0f21](https://codeberg.org/vhs/after-dark/commits/90b0f21))



<a name="6.7.5"></a>
## [6.7.5](https://codeberg.org/vhs/after-dark/compare/v6.7.4...v6.7.5) (2018-08-27)


### Bug Fixes

* **scripts:** resolve help doc path lookups when no custom content dir ([300add1](https://codeberg.org/vhs/after-dark/commits/300add1))



<a name="6.7.4"></a>
## [6.7.4](https://codeberg.org/vhs/after-dark/compare/v6.7.3...v6.7.4) (2018-08-27)


### Bug Fixes

* **scripts:** remove help before generating on upgrade ([56b7543](https://codeberg.org/vhs/after-dark/commits/56b7543))



<a name="6.7.3"></a>
## [6.7.3](https://codeberg.org/vhs/after-dark/compare/v6.7.2...v6.7.3) (2018-08-27)


### Bug Fixes

* **scripts:** address error generating docs after upgrade ([3119918](https://codeberg.org/vhs/after-dark/commits/3119918))



<a name="6.7.2"></a>
## [6.7.2](https://codeberg.org/vhs/after-dark/compare/v6.7.1...v6.7.2) (2018-08-27)


### Bug Fixes

* **scripts:** resolve tar cd issue ([5fa2591](https://codeberg.org/vhs/after-dark/commits/5fa2591))



<a name="6.7.1"></a>
## [6.7.1](https://codeberg.org/vhs/after-dark/compare/v6.7.0...v6.7.1) (2018-08-27)


### Bug Fixes

* **scripts:** resolve syntax bugs in script ([f7bfb04](https://codeberg.org/vhs/after-dark/commits/f7bfb04))



<a name="6.7.0"></a>
# [6.7.0](https://codeberg.org/vhs/after-dark/compare/v6.6.4...v6.7.0) (2018-08-27)


### Bug Fixes

* **scripts:** update install to place theme metadata in theme data folder ([66168a1](https://codeberg.org/vhs/after-dark/commits/66168a1)), closes [#59](https://codeberg.org/vhs/after-dark/issues/59)


### Features

* **scripts:** add theme upgrade script ([6415250](https://codeberg.org/vhs/after-dark/commits/6415250)), closes [#59](https://codeberg.org/vhs/after-dark/issues/59)
* **scripts:** support custom content dirs in config file ([adf90bc](https://codeberg.org/vhs/after-dark/commits/adf90bc)), closes [#59](https://codeberg.org/vhs/after-dark/issues/59)



<a name="6.6.4"></a>
## [6.6.4](https://codeberg.org/vhs/after-dark/compare/v6.6.3...v6.6.4) (2018-08-27)

### Security

* **build:** enclose release tag sha512 in delimeters
([543d32d](https://codeberg.org/vhs/after-dark/commit/543d32d))

<a name="6.6.3"></a>
## [6.6.3](https://codeberg.org/vhs/after-dark/compare/v6.6.1...v6.6.3) (2018-08-27)

### Security

* **build:** append sha512 to release tag and self-sign
([112f616](https://codeberg.org/vhs/after-dark/commits/112f616))

<a name="6.6.2"></a>
## [6.6.2](https://codeberg.org/vhs/after-dark/compare/v6.6.1...v6.6.2) (2018-08-26)

### Security

* **build:** add sha512 digest to git tags and gpg sign them
([35457ab](https://codeberg.org/vhs/after-dark/commits/35457ab))

<a name="6.6.1"></a>
## [6.6.1](https://codeberg.org/vhs/after-dark/compare/v6.6.0...v6.6.1) (2018-08-26)


### Bug Fixes

* **snippets:** reverse logic for external link styling ([0fcf238](https://codeberg.org/vhs/after-dark/commits/0fcf238))



<a name="6.6.0"></a>
# [6.6.0](https://codeberg.org/vhs/after-dark/compare/v6.5.2...v6.6.0) (2018-08-25)


### Features

* **help:** update and run help anytime using included script ([206bfdc](https://codeberg.org/vhs/after-dark/commits/206bfdc))
* **snippets:** add external link snippet ([7c885f3](https://codeberg.org/vhs/after-dark/commits/7c885f3)), closes [#48](https://codeberg.org/vhs/after-dark/issues/48)



<a name="6.5.2"></a>
## [6.5.2](https://codeberg.org/vhs/after-dark/compare/v6.5.1...v6.5.2) (2018-08-24)


### Bug Fixes

* **install:** wait 1 second before serving help for docs to expire ([8e9e312](https://codeberg.org/vhs/after-dark/commits/8e9e312))



<a name="6.5.1"></a>
## [6.5.1](https://codeberg.org/vhs/after-dark/compare/v6.5.0...v6.5.1) (2018-08-24)


### Bug Fixes

* **install:** remove unexpected line in theme config ([a5eb197](https://codeberg.org/vhs/after-dark/commits/a5eb197))



<a name="6.5.0"></a>
# [6.5.0](https://codeberg.org/vhs/after-dark/compare/v6.4.1...v6.5.0) (2018-08-24)


### Bug Fixes

* **install:** stop copying all archetypes to site ([210412b](https://codeberg.org/vhs/after-dark/commits/210412b)), closes [#45](https://codeberg.org/vhs/after-dark/issues/45)


### Features

* **install:** faux install validation using npm sha512 digest ([5a8dec0](https://codeberg.org/vhs/after-dark/commits/5a8dec0)), closes [#33](https://codeberg.org/vhs/after-dark/issues/33)
* **snippets:** alert user on invalid autocomplete value ([1105e20](https://codeberg.org/vhs/after-dark/commits/1105e20)), closes [#46](https://codeberg.org/vhs/after-dark/issues/46)



<a name="6.4.1"></a>
## [6.4.1](https://codeberg.org/vhs/after-dark/compare/v6.4.0...v6.4.1) (2018-08-22)



<a name="6.4.0"></a>
# [6.4.0](https://codeberg.org/vhs/after-dark/compare/v6.3.0...v6.4.0) (2018-08-20)


### Bug Fixes

* **install:** remove useful snippets content ([c224977](https://codeberg.org/vhs/after-dark/commits/c224977))


### Features

* **install:** provide welcome post with online help ([c8f729a](https://codeberg.org/vhs/after-dark/commits/c8f729a))



<a name="6.3.0"></a>
# [6.3.0](https://codeberg.org/vhs/after-dark/compare/v6.2.0...v6.3.0) (2018-08-19)


### Bug Fixes

* **snippets:** add name attribute to form ([078ee4d](https://codeberg.org/vhs/after-dark/commits/078ee4d))


### Features

* **install:** add installation challenge ([9b6106c](https://codeberg.org/vhs/after-dark/commits/9b6106c))



<a name="6.2.0"></a>
# [6.2.0](https://codeberg.org/vhs/after-dark/compare/v6.1.1...v6.2.0) (2018-08-18)


### Bug Fixes

* **bin:** remove preview script ([5ac1c12](https://codeberg.org/vhs/after-dark/commits/5ac1c12)), closes [#38](https://codeberg.org/vhs/after-dark/issues/38)
* **layouts:** stop outputting trim color if none present ([fe58bed](https://codeberg.org/vhs/after-dark/commits/fe58bed))


### Features

* **layouts:** provide form builder snippets ([c49d086](https://codeberg.org/vhs/after-dark/commits/c49d086))



<a name="6.1.1"></a>
## [6.1.1](https://codeberg.org/vhs/after-dark/compare/v6.1.0...v6.1.1) (2018-08-14)


### Bug Fixes

* **personalization:** rename accent color to trim color ([88cd373](https://codeberg.org/vhs/after-dark/commits/88cd373))



<a name="6.1.0"></a>
# [6.1.0](https://codeberg.org/vhs/after-dark/compare/v6.0.1...v6.1.0) (2018-08-13)


### Bug Fixes

* **layouts:** move inline-level content in navs inside <p> ([1b0187d](https://codeberg.org/vhs/after-dark/commits/1b0187d))


### Features

* **personalization:** add customizable accent colors ([bf251a6](https://codeberg.org/vhs/after-dark/commits/bf251a6))



<a name="6.0.1"></a>
## [6.0.1](https://codeberg.org/vhs/after-dark/compare/v6.0.0...v6.0.1) (2018-08-12)


### Bug Fixes

* **layouts/search:** unblock blocking scripts and add command terminators ([7802937](https://codeberg.org/vhs/after-dark/commits/7802937)), closes [#14](https://codeberg.org/vhs/after-dark/issues/14)



<a name="6.0.0"></a>
# [6.0.0](https://codeberg.org/vhs/after-dark/compare/v5.5.1...v6.0.0) (2018-08-12)


### Bug Fixes

* **shortcodes:** remove privacytube and coub shortcodes ([ada8286](https://codeberg.org/vhs/after-dark/commits/ada8286)), closes [#35](https://codeberg.org/vhs/after-dark/issues/35)


### BREAKING CHANGES

* **shortcodes:** shortcodes removed must now be copied to the theme, if used



<a name="5.5.1"></a>
## [5.5.1](https://codeberg.org/vhs/after-dark/compare/v5.5.0...v5.5.1) (2018-08-11)


### Bug Fixes

* **install:** restore android support ([d3b2ab0](https://codeberg.org/vhs/after-dark/commits/d3b2ab0)), closes [#25](https://codeberg.org/vhs/after-dark/issues/25)



<a name="5.5.0"></a>
# [5.5.0](https://codeberg.org/vhs/after-dark/compare/v5.4.0...v5.5.0) (2018-08-10)


### Bug Fixes

* **assets:** stop treating all permalinks as external ([d5e8e33](https://codeberg.org/vhs/after-dark/commits/d5e8e33))


### Features

* **layout,install:** add automatic syntax highlighting ([3eed5dd](https://codeberg.org/vhs/after-dark/commits/3eed5dd))



<a name="5.4.0"></a>
# [5.4.0](https://codeberg.org/vhs/after-dark/compare/v5.3.1...v5.4.0) (2018-08-04)


### Features

* **modules:** add hall of mirrors ([882c32d](https://codeberg.org/vhs/after-dark/commits/882c32d)), closes [#24](https://codeberg.org/vhs/after-dark/issues/24)



<a name="5.3.1"></a>
## [5.3.1](https://codeberg.org/vhs/after-dark/compare/v5.3.0...v5.3.1) (2018-08-01)


### Bug Fixes

* **layouts:** show sarcastic message when no pages exist ([e5ce3b9](https://codeberg.org/vhs/after-dark/commits/e5ce3b9))



<a name="5.3.0"></a>
# [5.3.0](https://codeberg.org/vhs/after-dark/compare/v5.2.6...v5.3.0) (2018-08-01)


### Bug Fixes

* **install:** kill hugo server always ([abadfbf](https://codeberg.org/vhs/after-dark/commits/abadfbf))
* **install:** move kill command to eof ([a87a381](https://codeberg.org/vhs/after-dark/commits/a87a381))


### Features

* **bin:** add script to preview site online over https ([51baf0c](https://codeberg.org/vhs/after-dark/commits/51baf0c)), closes [#21](https://codeberg.org/vhs/after-dark/issues/21)



<a name="5.2.6"></a>
## [5.2.6](https://codeberg.org/vhs/after-dark/compare/v5.2.5...v5.2.6) (2018-07-31)


### Bug Fixes

* **install:** support both gnu and bsd grep ([35defb7](https://codeberg.org/vhs/after-dark/commits/35defb7))



<a name="5.2.5"></a>
## [5.2.5](https://codeberg.org/vhs/after-dark/compare/v5.2.3...v5.2.5) (2018-07-31)


### Bug Fixes

* **install:** install packages from npm ([65c4e99](https://codeberg.org/vhs/after-dark/commits/65c4e99))
* **install:** standardize install script ([aca07cc](https://codeberg.org/vhs/after-dark/commits/aca07cc)), closes [#19](https://codeberg.org/vhs/after-dark/issues/19)
* **install:** update example base url ([da73a2f](https://codeberg.org/vhs/after-dark/commits/da73a2f))
* **install:** use latest version from npm dist tags ([7afe7b9](https://codeberg.org/vhs/after-dark/commits/7afe7b9))



<a name="5.2.4"></a>
## [5.2.4](https://codeberg.org/vhs/after-dark/compare/v5.2.3...v5.2.4) (2018-07-31)


### Bug Fixes

* **install:** install packages from npm ([65c4e99](https://codeberg.org/vhs/after-dark/commits/65c4e99))
* **install:** standardize install script ([aca07cc](https://codeberg.org/vhs/after-dark/commits/aca07cc)), closes [#19](https://codeberg.org/vhs/after-dark/issues/19)



<a name="5.2.3"></a>
## [5.2.3](https://codeberg.org/vhs/after-dark/compare/v5.2.2...v5.2.3) (2018-07-29)

### Bug Fixes

* **theme:** just kidding. remove white theme variant ([d73693c](https://codeberg.org/vhs/after-dark/commits/d73693c))

<a name="5.2.2"></a>
## [5.2.2](https://codeberg.org/vhs/after-dark/compare/v5.2.1...v5.2.2) (2018-07-29)


### Bug Fixes

* **theme:** enable white theme variant ([3f8f000](https://codeberg.org/vhs/after-dark/commits/3f8f000))



<a name="5.2.1"></a>
## [5.2.1](https://codeberg.org/vhs/after-dark/compare/v5.2.0...v5.2.1) (2018-07-26)


### Bug Fixes

* **install:** remove git cruft & supply actual module name ([a0097a0](https://codeberg.org/vhs/after-dark/commits/a0097a0))



<a name="5.2.0"></a>
# [5.2.0](https://codeberg.org/vhs/after-dark/compare/v5.1.0...v5.2.0) (2018-07-26)


### Features

* **install:** streamline installation ([abf92fe](https://codeberg.org/vhs/after-dark/commits/abf92fe)), closes [#2](https://codeberg.org/vhs/after-dark/issues/2)



<a name="5.1.0"></a>
# [5.1.0](https://codeberg.org/vhs/after-dark/compare/v5.0.0...v5.1.0) (2018-07-24)


### Features

* **modules:** add fractal forest module for bpg image format support ([8aa35b2](https://codeberg.org/vhs/after-dark/commits/8aa35b2)), closes [#8](https://codeberg.org/vhs/after-dark/issues/8)



<a name="5.0.0"></a>
# [5.0.0](https://codeberg.org/vhs/after-dark/compare/v4.1.0...v5.0.0) (2018-07-21)


### Features

* **modules:** add analytics module ([9334f15](https://codeberg.org/vhs/after-dark/commits/9334f15)), closes [#1](https://codeberg.org/vhs/after-dark/issues/1)


### BREAKING CHANGES

* **modules:** google analytics no longer supported



<a name="4.1.0"></a>
# [4.1.0](https://codeberg.org/vhs/after-dark/compare/v4.0.2...v4.1.0) (2018-07-19)


### Features

* select theme variant directly from site config ([aa82f5d](https://codeberg.org/vhs/after-dark/commit/aa82f5d)), closes [#6](https://codeberg.org/vhs/after-dark/issues/6)


### BREAKING CHANGES

* hugo 0.43 and above required. css override file locations have changed



<a name="4.0.2"></a>
## 4.0.2 (2018-07-18)


### Bug Fixes

* **install:** update default open graph image ([aaaf64e](https://codeberg.org/vhs/after-dark/commit/aaaf64e))
* **layouts:** output urls relative to baseurl ([2d278dd](https://codeberg.org/vhs/after-dark/commit/2d278dd)), closes [#4](https://codeberg.org/vhs/after-dark/issues/4)
* **layouts:** restore smooth scrolling to toc links ([89a9c8d](https://codeberg.org/vhs/after-dark/commit/89a9c8d))



<a name="4.0.1"></a>
## [4.0.1](https://codeberg.org/vhs/after-dark/compare/v4.0.0...v4.0.1) (2018-07-18)


### Bug Fixes

* **hugo:** require 0.44 at minimum ([78a09c8](https://codeberg.org/vhs/after-dark/commits/78a09c8))



<a name="4.0.0"></a>
# [4.0.0](https://codeberg.org/vhs/after-dark/compare/v3.10.1...v4.0.0) (2018-07-09)



<a name="3.10.1"></a>
## [3.10.1](https://codeberg.org/vhs/after-dark/compare/v3.10.0...v3.10.1) (2018-07-09)



<a name="3.10.0"></a>
# [3.10.0](https://codeberg.org/vhs/after-dark/compare/v3.9.1...v3.10.0) (2018-06-18)


### Bug Fixes

* **$layouts:** resolve search layout header display ([9eee69c](https://codeberg.org/vhs/after-dark/commit/9eee69c)), closes [#104](https://codeberg.org/vhs/after-dark/issues/104)


### Features

* **$layout:** add telegram iv support ([4d520f9](https://codeberg.org/vhs/after-dark/commit/4d520f9)), closes [#113](https://codeberg.org/vhs/after-dark/issues/113)



<a name="3.9.2"></a>
## [3.9.2](https://codeberg.org/vhs/after-dark/compare/v3.9.1...v3.9.2) (2018-06-09)


### Bug Fixes

* **$layouts:** resolve search layout header display ([9eee69c](https://codeberg.org/vhs/after-dark/commit/9eee69c)), closes [#104](https://codeberg.org/vhs/after-dark/issues/104)



<a name="3.9.1"></a>
## [3.9.1](https://codeberg.org/vhs/after-dark/compare/v3.9.0...v3.9.1) (2018-05-13)


### Bug Fixes

* **$layouts:** hide search app when noscript ([c3bcff0](https://codeberg.org/vhs/after-dark/commit/c3bcff0))



<a name="3.9.0"></a>
# [3.9.0](https://codeberg.org/vhs/after-dark/compare/v3.8.4...v3.9.0) (2018-05-03)


### Features

* **$layouts:** allow customization of referrer policy and add privacy-focused default ([5759a30](https://codeberg.org/vhs/after-dark/commit/5759a30)), closes [#96](https://codeberg.org/vhs/after-dark/issues/96)



<a name="3.8.4"></a>
## [3.8.4](https://codeberg.org/vhs/after-dark/compare/v3.8.3...v3.8.4) (2018-05-01)


### Bug Fixes

* **$layouts:** prevent js error on search form submit ([0dce741](https://codeberg.org/vhs/after-dark/commit/0dce741)), closes [#94](https://codeberg.org/vhs/after-dark/issues/94)



<a name="3.8.3"></a>
## [3.8.3](https://codeberg.org/vhs/after-dark/compare/v3.8.2...v3.8.3) (2018-04-16)


### Bug Fixes

* **$layouts:** improve search input focus and usability ([e94f6df](https://codeberg.org/vhs/after-dark/commit/e94f6df)), closes [#91](https://codeberg.org/vhs/after-dark/issues/91)



<a name="3.8.2"></a>
## [3.8.2](https://codeberg.org/vhs/after-dark/compare/v3.8.1...v3.8.2) (2018-04-16)


### Bug Fixes

* **$layouts:** disable ua input styling safari mobile ([f7c81f4](https://codeberg.org/vhs/after-dark/commit/f7c81f4))
* **$layouts:** prevent auto-zoom on safari mobile ([81c3f39](https://codeberg.org/vhs/after-dark/commit/81c3f39))



<a name="3.8.1"></a>
## [3.8.1](https://codeberg.org/vhs/after-dark/compare/v3.8.0...v3.8.1) (2018-04-15)


### Bug Fixes

* **$layouts:** remove duplicate descriptor from post image srcset ([0295370](https://codeberg.org/vhs/after-dark/commit/0295370))



<a name="3.8.0"></a>
# [3.8.0](https://codeberg.org/vhs/after-dark/compare/v3.7.0...v3.8.0) (2018-04-15)


### Features

* **$layouts:** add fuzzy search ([93d2a29](https://codeberg.org/vhs/after-dark/commit/93d2a29)), closes [#83](https://codeberg.org/vhs/after-dark/issues/83)



<a name="3.7.0"></a>
# [3.7.0](https://codeberg.org/vhs/after-dark/compare/v3.6.0...v3.7.0) (2018-03-25)


### Features

* **$layouts:** add post images ([06457bc](https://codeberg.org/vhs/after-dark/commit/06457bc))



<a name="3.6.0"></a>
# [3.6.0](https://codeberg.org/vhs/after-dark/compare/v3.5.1...v3.6.0) (2018-03-22)


### Bug Fixes

* **$style:** add more whitespace on list pages and darken muted text ([646e98b](https://codeberg.org/vhs/after-dark/commit/646e98b))


### Features

* **$layouts:** add twitter cards ([6562e80](https://codeberg.org/vhs/after-dark/commit/6562e80)), closes [#76](https://codeberg.org/vhs/after-dark/issues/76)



<a name="3.5.1"></a>
## [3.5.1](https://codeberg.org/vhs/after-dark/compare/v3.5.0...v3.5.1) (2018-01-17)


### Bug Fixes

* **$style:** fix a whitespace issue near the readmore link ([dee3530](https://codeberg.org/vhs/after-dark/commit/dee3530)), closes [#70](https://codeberg.org/vhs/after-dark/issues/70)



<a name="3.5.0"></a>
# [3.5.0](https://codeberg.org/vhs/after-dark/compare/v3.4.0...v3.5.0) (2017-11-08)


### Features

* **$shortcodes:** add youtube without cookies ([613e545](https://codeberg.org/vhs/after-dark/commit/613e545)), closes [#62](https://codeberg.org/vhs/after-dark/issues/62)



<a name="3.4.0"></a>
# [3.4.0](https://codeberg.org/vhs/after-dark/compare/v3.3.0...v3.4.0) (2017-10-27)


### Features

* **$shortcode:** add coub shortcode for gifs with sound ([0267d5b](https://codeberg.org/vhs/after-dark/commit/0267d5b)), closes [#63](https://codeberg.org/vhs/after-dark/issues/63)



<a name="3.3.0"></a>
# [3.3.0](https://codeberg.org/vhs/after-dark/compare/v3.2.0...v3.3.0) (2017-10-13)


### Features

* **$layouts:** hide related content reading time on small screen ([480d57a](https://codeberg.org/vhs/after-dark/commit/480d57a))
* **$partials:** add pubdate structured data to post byline ([a3bcb0c](https://codeberg.org/vhs/after-dark/commit/a3bcb0c))



<a name="3.2.0"></a>
# [3.2.0](https://codeberg.org/vhs/after-dark/compare/v3.1.1...v3.2.0) (2017-10-06)


### Bug Fixes

* **$shortcodes:** fix issue with external link appearance ([afcc8e6](https://codeberg.org/vhs/after-dark/commit/afcc8e6))


### Features

* **$layout:** add base element to base layout ([bf25c67](https://codeberg.org/vhs/after-dark/commit/bf25c67)), closes [#60](https://codeberg.org/vhs/after-dark/issues/60)
* **$shortcode:** style cite element inside block quotation ([65a4278](https://codeberg.org/vhs/after-dark/commit/65a4278))
* **$shortcodes:** add frame targeting to custom figure shortcode ([a66b076](https://codeberg.org/vhs/after-dark/commit/a66b076))
* **$shortcodes:** enable target and method control for button/buttongroup ([f705d19](https://codeberg.org/vhs/after-dark/commit/f705d19)), closes [#56](https://codeberg.org/vhs/after-dark/issues/56)
* **$shortcodes:** make button shortcode clickable ([1bc643f](https://codeberg.org/vhs/after-dark/commit/1bc643f)), closes [#40](https://codeberg.org/vhs/after-dark/issues/40)


### Reverts

* **$layout:** add base element to base layout ([769e2d9](https://codeberg.org/vhs/after-dark/commit/769e2d9))



<a name="3.1.1"></a>
## [3.1.1](https://codeberg.org/vhs/after-dark/compare/v3.1.0...v3.1.1) (2017-09-13)


### Bug Fixes

* **$layouts:** fix error calling partial in related content ([8a6253d](https://codeberg.org/vhs/after-dark/commit/8a6253d)), closes [#55](https://codeberg.org/vhs/after-dark/issues/55)



<a name="3.1.0"></a>
# [3.1.0](https://codeberg.org/vhs/after-dark/compare/v3.0.0...v3.1.0) (2017-09-13)


### Features

* **$layouts:** use related content feature introduced in hugo@0.27 ([f0474f4](https://codeberg.org/vhs/after-dark/commit/f0474f4)), closes [#54](https://codeberg.org/vhs/after-dark/issues/54)



<a name="3.0.0"></a>
# [3.0.0](https://codeberg.org/vhs/after-dark/compare/v2.1.1...v3.0.0) (2017-09-13)


### Features

* **$archetypes:** turn archetypes into go templates ([5ed2d9f](https://codeberg.org/vhs/after-dark/commit/5ed2d9f))

### BREAKING CHANGES

* **$archetypes:** Minimum Hugo version set 0.24, 0.16 - 0.23 must modify archetypes

to upgrade add `date` and `title` to custom archetypes. if using a version of hugo prior to 0.24 the custom templates should remove `title` and `date` and not use go templating logic in the archetype files



<a name="2.1.1"></a>
## [2.1.1](https://codeberg.org/vhs/after-dark/compare/v2.1.0...v2.1.1) (2017-09-11)


### Bug Fixes

* **$layouts:** move stylesheets back to partials, reorganize files ([b93b4a7](https://codeberg.org/vhs/after-dark/commit/b93b4a7)), closes [#50](https://codeberg.org/vhs/after-dark/issues/50)



<a name="2.1.0"></a>
# [2.1.0](https://codeberg.org/vhs/after-dark/compare/v2.0.0...v2.1.0) (2017-09-09)


### Bug Fixes

* **$images:** improve bpg image support ([7681dde](https://codeberg.org/vhs/after-dark/commit/7681dde)), closes [#48](https://codeberg.org/vhs/after-dark/issues/48)


### Features

* **$layout:** Add support for external stylesheets ([9abe627](https://codeberg.org/vhs/after-dark/commit/9abe627)), closes [#49](https://codeberg.org/vhs/after-dark/issues/49)



<a name="2.0.0"></a>
# [2.0.0](https://codeberg.org/vhs/after-dark/compare/v1.8.4...v2.0.0) (2017-09-08)


### Features

* **$theme:** add support for bpg image format ([49204d0](https://codeberg.org/vhs/after-dark/commit/49204d0))

### BREAKING CHANGES

* **$build:** inline css using readFile template function ([3787d10](https://codeberg.org/vhs/after-dark/commit/3787d10))

to upgrade skip this release and move directly to 2.1.1 or a later release

<a name="1.8.4"></a>
## [1.8.4](https://codeberg.org/vhs/after-dark/compare/v1.8.3...v1.8.4) (2017-06-27)


### Bug Fixes

* **$layouts:** add support for protocol-relative base urls ([755f446](https://codeberg.org/vhs/after-dark/commit/755f446)), closes [#37](https://codeberg.org/vhs/after-dark/issues/37)



<a name="1.8.3"></a>
## [1.8.3](https://codeberg.org/vhs/after-dark/compare/v1.8.2...v1.8.3) (2017-06-22)


### Bug Fixes

* **$layouts:** remove iframe borders by default ([3b4f7c1](https://codeberg.org/vhs/after-dark/commit/3b4f7c1))



<a name="1.8.2"></a>
## [1.8.2](https://codeberg.org/vhs/after-dark/compare/v1.8.1...v1.8.2) (2017-06-09)


### Reverts

* **layouts:** update powered-by to link to new theme site ([2237ead](https://codeberg.org/vhs/after-dark/commit/2237ead))



<a name="1.8.1"></a>
## [1.8.1](https://codeberg.org/vhs/after-dark/compare/v1.8.0...v1.8.1) (2017-06-07)


### Bug Fixes

* **$layouts:** update powered-by to link to new theme site ([c031934](https://codeberg.org/vhs/after-dark/commit/c031934))



<a name="1.8.0"></a>
# [1.8.0](https://codeberg.org/vhs/after-dark/compare/v1.7.6...v1.8.0) (2017-06-06)


### Features

* **LICENSE:** you just do what the fuck you want to ([c2eb957](https://codeberg.org/vhs/after-dark/commit/c2eb957))



<a name="1.7.6"></a>
## [1.7.6](https://codeberg.org/vhs/after-dark/compare/v1.7.2...v1.7.6) (2017-06-06)

#### Licensing

Upgraded to The Unlicense, skipping for patch releases.

<a name="1.7.2"></a>
## [1.7.2](https://codeberg.org/vhs/after-dark/compare/v1.7.1...v1.7.2) (2017-05-14)


### Bug Fixes

* **install:** move it back to bin ([13441f5](https://codeberg.org/vhs/after-dark/commit/13441f5))



<a name="1.7.1"></a>
## [1.7.1](https://codeberg.org/vhs/after-dark/compare/v1.7.0...v1.7.1) (2017-05-13)


### Bug Fixes

* **install:** move to scripts folder ([204e516](https://codeberg.org/vhs/after-dark/commit/204e516))



<a name="1.7.0"></a>
# [1.7.0](https://codeberg.org/vhs/after-dark/compare/v1.6.1...v1.7.0) (2017-05-08)


### Bug Fixes

* **install:** improve install experience ([4a30955](https://codeberg.org/vhs/after-dark/commit/4a30955))


### Features

* **shortcodes:** add hack progress bar component ([dda60f2](https://codeberg.org/vhs/after-dark/commit/dda60f2))
* **shortcodes:** add hackcss alert shortcode ([6ed1c58](https://codeberg.org/vhs/after-dark/commit/6ed1c58))
* **shortcodes:** add hackcss alert shortcode ([eebe7a9](https://codeberg.org/vhs/after-dark/commit/eebe7a9))
* **shortcodes:** add hackcss button group component ([1f90e2d](https://codeberg.org/vhs/after-dark/commit/1f90e2d))
* **shortcodes:** add hackcss button shortcode ([829cb7d](https://codeberg.org/vhs/after-dark/commit/829cb7d))
* **shortcodes:** add hackcss card component ([4526c60](https://codeberg.org/vhs/after-dark/commit/4526c60))
* **shortcodes:** add hackcss loading component ([6f667e8](https://codeberg.org/vhs/after-dark/commit/6f667e8))
* **shortcodes:** add hackcss progress component ([4e99c75](https://codeberg.org/vhs/after-dark/commit/4e99c75))



<a name="1.6.1"></a>
## [1.6.1](https://codeberg.org/vhs/after-dark/compare/v1.6.0...v1.6.1) (2017-05-05)


### Bug Fixes

* **typography:** remove text justification and hyphenation ([8fdbe2f](https://codeberg.org/vhs/after-dark/commit/8fdbe2f))



<a name="1.6.0"></a>
# [1.6.0](https://codeberg.org/vhs/after-dark/compare/v1.5.2...v1.6.0) (2017-05-03)


### Bug Fixes

* **install:** add flags for theme setup script ([01ad1ee](https://codeberg.org/vhs/after-dark/commit/01ad1ee))
* **layouts:** use relative urls in post byline taxonomy links ([419752d](https://codeberg.org/vhs/after-dark/commit/419752d))


### Features

* **install:** simplify installation ([765dcb8](https://codeberg.org/vhs/after-dark/commit/765dcb8))



<a name="1.5.2"></a>
## [1.5.2](https://codeberg.org/vhs/after-dark/compare/v1.5.1...v1.5.2) (2017-04-30)


### Bug Fixes

* **typography:** only justify and hyphenate article bodies ([ed83bee](https://codeberg.org/vhs/after-dark/commit/ed83bee))



<a name="1.5.1"></a>
## [1.5.1](https://codeberg.org/vhs/after-dark/compare/v1.5.0...v1.5.1) (2017-04-20)


### Bug Fixes

* **typography:** stop justifying and hyphenating text on small viewports ([77c6033](https://codeberg.org/vhs/after-dark/commit/77c6033))



<a name="1.5.0"></a>
# [1.5.0](https://codeberg.org/vhs/after-dark/compare/v1.4.0...v1.5.0) (2017-04-16)


### Bug Fixes

* **links:** style external links in all browsers ([ccef559](https://codeberg.org/vhs/after-dark/commit/ccef559)), closes [#22](https://codeberg.org/vhs/after-dark/issues/22)
* **partials:** fix markup validation error ([c82fc66](https://codeberg.org/vhs/after-dark/commit/c82fc66))


### Features

* **layouts:** add support for hugo 0.20.2 ([eba70c9](https://codeberg.org/vhs/after-dark/commit/eba70c9)), closes [#28](https://codeberg.org/vhs/after-dark/issues/28)
* **typography:** justify text output and hyphenate ([4775618](https://codeberg.org/vhs/after-dark/commit/4775618))


### Performance Improvements

* **favicon:** add svg favicon ([b3b0008](https://codeberg.org/vhs/after-dark/commit/b3b0008))
* **install:** remove design resources ([6eb145d](https://codeberg.org/vhs/after-dark/commit/6eb145d))


### Reverts

* **docs(README:** remove erroneous markdown file): ([925ed3e](https://codeberg.org/vhs/after-dark/commit/925ed3e))



<a name="1.4.0"></a>
# [1.4.0](https://codeberg.org/vhs/after-dark/compare/v1.3.2...v1.4.0) (2017-04-10)


### Features

* **layouts:** add meta keywords to base template ([4b1f0f1](https://codeberg.org/vhs/after-dark/commit/4b1f0f1)), closes [#20](https://codeberg.org/vhs/after-dark/issues/20)



<a name="1.3.2"></a>
## [1.3.2](https://codeberg.org/vhs/after-dark/compare/v1.3.1...v1.3.2) (2017-04-09)


### Bug Fixes

* **layouts:** output meta description when not explicitly set ([9f11bd6](https://codeberg.org/vhs/after-dark/commit/9f11bd6)), closes [#21](https://codeberg.org/vhs/after-dark/issues/21)



<a name="1.3.1"></a>
## [1.3.1](https://codeberg.org/vhs/after-dark/compare/v1.3.0...v1.3.1) (2017-04-08)


### Bug Fixes

* **bundle:** add images to npm ignore file ([1694334](https://codeberg.org/vhs/after-dark/commit/1694334))



<a name="1.3.0"></a>
# [1.3.0](https://codeberg.org/vhs/after-dark/compare/v1.2.0...v1.3.0) (2017-04-08)


### Bug Fixes

* **bundle:** remove images folder from npm release ([b277a20](https://codeberg.org/vhs/after-dark/commit/b277a20))


### Features

* **powered-by:** add page generation date ([c0c421a](https://codeberg.org/vhs/after-dark/commit/c0c421a))


### Reverts

* **powered-by:** remove page generation date ([478ba0b](https://codeberg.org/vhs/after-dark/commit/478ba0b))



<a name="1.2.0"></a>
# [1.2.0](https://codeberg.org/vhs/after-dark/compare/v1.1.0...v1.2.0) (2017-03-30)


### Features

* **highlighting:** add syntax highlighting ([455062f](https://codeberg.org/vhs/after-dark/commit/455062f))
* **shortcodes:** add figure shortcode ([8a0317f](https://codeberg.org/vhs/after-dark/commit/8a0317f))



<a name="1.1.0"></a>
# [1.1.0](https://codeberg.org/vhs/after-dark/compare/v1.0.0...v1.1.0) (2017-03-30)


### Features

* **shortcodes:** add blockquote shortcode ([ea293e3](https://codeberg.org/vhs/after-dark/commit/ea293e3))



<a name="1.0.0"></a>
# 1.0.0 (2017-03-30)


### Bug Fixes

* 404 page theme color url ref ([79d2377](https://codeberg.org/vhs/after-dark/commit/79d2377))
* add add theme color to 404 page ([4f5ec87](https://codeberg.org/vhs/after-dark/commit/4f5ec87))
