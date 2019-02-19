(function (window, document, undefined) {
  'use strict';
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
