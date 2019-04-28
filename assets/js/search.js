fetchInject([
  "{{ "/js/vue.min.js" | relURL }}",
  "{{ "/js/lodash.custom.min.js" | relURL }}",
  "{{ "/js/fuse.min.js" | relURL }}",
  "{{ "/js/mark.min.js" | relURL }}"
]).then(() => {
  (function (window, document, undefined) {
    'use strict';

    const getQueryByParam = param => decodeURIComponent(
      (location.search.split(param + '=')[1] || '').split('&')[0]
    ).replace(/\+/g, ' ');

    const queryParam = 's';
    const hotkeys = '{{ .Params.form.hotkeys | default (slice "/" "s") }}';
    const selectors = {
      appContainer: '#search-app',
      resultContainer: '#search-results',
      searchInput: '#query'
    };

    const fuseOpts = {
      shouldSort: true,
      tokenize: true,
      matchAllTokens: true,
      includeScore: true,
      includeMatches: true,
      keys: [
        { name: "title", weight: 0.8 },
        { name: "contents", weight: 0.5 },
        { name: "tags", weight: 0.3 },
        { name: "categories", weight: 0.3 }
      ]
    };

    const getSearchInput = () => document.querySelector(selectors.searchInput);
    const focusSearchInput = () => getSearchInput().focus();
    const searchQuery = getSearchInput().value = getQueryByParam(queryParam);

    const fuse = new Fuse([], fuseOpts);
    window.fetch('/index.json').then(response => {
      response.text().then(searchData => {
        fuse.setCollection(JSON.parse(searchData));
        searchQuery && search(searchQuery);
      });
    });

    const getUrl = (query) => {
      const encodedQuery = encodeURIComponent(query);
      const url = "{{ .RelPermalink }}";
      return (encodedQuery)
        ? `${url}?${queryParam}=${encodedQuery}`
        : url;
    };

    let mark = new Mark(
      document.querySelector(
        selectors.resultContainer
      )
    );

    const app = new Vue({
      delimiters: ['{', '}'],
      el: selectors.appContainer,
      data: {
        fuse: null,
        results: [],
        query: getQueryByParam(queryParam),
        resultsForSearch: getQueryByParam(queryParam)
      },
      mounted () {
        this.fuse = fuse;
        window.onpopstate = (evt) => {
          this.query = evt.state.query;
        };
        document.onkeydown = function (evt) {
          if (hotkeys.includes(evt.key)) {
            evt.preventDefault();
            focusSearchInput();
            getSearchInput().select();
          };
        }
        focusSearchInput();
      },
      watch: {
        query () {
          this.executeSearch();
          window.history.replaceState(
            {query: this.query},
            null,
            getUrl(this.query)
          );
        }
      },
      beforeUpdate: function () {
        mark.unmark();
      },
      updated: function () {
        this.$nextTick(function () {
          mark = new Mark(
            document.querySelector(
              selectors.resultContainer
            )
          )
          mark.mark(this.query.trim());
        })
      },
      methods: {
        executeSearch: _.debounce(function () {
          const trimmedQuery = this.query.trim();
          this.resultsForSearch = trimmedQuery;
          this.results = (trimmedQuery)
            ? this.fuse.search(trimmedQuery)
            : [];
        }, 250)
      }
    });

    const search = query => {
      app.results = fuse.search(query);
    };

  })(window, document);
});
