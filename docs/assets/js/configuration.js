(function (window, document, undefined) {
  'use strict';
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
