# Change Log

All notable changes to this project will be documented in this file. See [standard-version](https://github.com/conventional-changelog/standard-version) for commit guidelines.

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
