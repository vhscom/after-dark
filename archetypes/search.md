+++
title = "Search" # title of the page
layout = "search" # sets the layout to use
noindex = true # tell robots not to index
[form]
  helpblock = "Press <kbd>/</kbd> or <kbd>s</kbd> to modify your search."
  hotkeys = ["/", "s"]
[form.input]
  placeholder = "uzzy searvh"
  disabled = false
[security.csp.directives]
  scriptSrc = [
    "'sha512-/RBCDeYFF/rhDFH6gLtx6zZUXN92hCNlE/FRjG9d4KrijurUGd/79Poe07qs7CBadFV6SqXlC0bWZ+Gn2OLkDA=='",
    "'unsafe-eval'"
  ]
+++
