+++
title = "{{ replace .TranslationBaseName "-" " " | title }}"
date = {{ .Date }}
description = "Thank you for choosing After Dark."
draft = true
toc = false
categories = ["technology"]
tags = ["hello", "world"]
images = [
  "https://source.unsplash.com/collection/983219/1600x900"
] # overrides the site-wide open graph image
+++

<div style="display:none">
  {{< hackcss-form name="validate" action="/post/coming-soon/" >}}
    {{< hackcss-formgroup name="validation" >}}
      {{< hackcss-helpblock >}}
        <strong>Please verify your installation to continue…</strong>
      {{< /hackcss-helpblock >}}
      {{< hackcss-label for="pgp" >}}
        64-bit <abbr title="Pretty Good Privacy">PGP</abbr> key:
      {{< /hackcss-label >}}
      {{< hackcss-textinput
          autofocus="true"
          type="text" id="pgp" name="pgp" pattern="^(?:[A-Za-z0-9+/]{4}\s){3}(?:[A-Za-z0-9+/]{4})$" >}}
      {{< hackcss-helpblock text="Challenge code: BB73 67EE 9A70 A631" />}}
    {{< /hackcss-formgroup >}}
  {{< /hackcss-form >}}
</div>

<script>
  (function (window, document, undefined) {
    "use strict";
    const key = 'BB73 67EE 9A70 A631';
    const wrapper = document.querySelector('[style="display:none"]')
    const confirm = () => {
      const form = document.forms.validate;
      form.pgp.value = key;
      form.pgp.type = 'password';
      form.validation.classList.add('form-success');
      form.validation.disabled = true;
      form.querySelectorAll('.help-block').forEach(
        helpblock => helpblock.remove()
      );
    };
    const validate = search => {
      search.includes(key.replace(/\s/g,'+')) ? confirm() : challenge();
    };
    const challenge = () => {
      const body = document.body;
      const forms = document.forms;
      if (body.firstChild === forms.validate) return;
      document.location.pathname !== '/' && (function () {
        forms.validate.validation.classList.add('form-error');
        document.title = "Please try again…";
        forms.validate.validation.querySelectorAll('.help-block').forEach(
          helpblock => {
            helpblock.innerHTML = helpblock.innerHTML.replace(
              key, `<mark>${key}</mark>`
            );
          }
        );
      })();
      const fragment = document.createDocumentFragment();
      fragment.appendChild(forms.validate);
      while (body.firstChild) body.removeChild(body.firstChild);
      body.appendChild(fragment);
      forms.validate.addEventListener('submit', evt => {
        validate(location.search);
      });
    };
    const initialize = () => {
      wrapper.style.display = 'block';
      (document.location.search.replace('?pgp=','').length)
        ? validate(location.search)
        : challenge();
    };
    document.onreadystatechange = () => {
      document.readyState === 'interactive' && initialize();
    };
  })(window, document);
</script>

<!--more-->

Before you continue please take a moment to configure your archetypes. Archetypes are located in the `archetypes` directory of your site. To learn more about archetypes visit the [Archetypes](https://gohugo.io/content-management/archetypes/) page on the Hugo website.

After Dark ships with a custom module system and provides a number of prebuilt modules. Shown here, an animation made possible by the `Fractal Forest` module:

<img width="494" height="371" src="/bpg/cinemagraph-6.bpg" alt="BPG file format example">

The Fractal Forest module gives After Dark the special ability to render images encoded using Fabrice Bellard's [BPG Image format](https://bellard.org/bpg/) and comes preinstalled for sites set-up using the installation script located in the `bin` directory.

To learn more about After Dark modules and how to configure your site please see the [`README`](https://codeberg.org/vhs/after-dark#after-dark) once you've configured your `archetypes`.
