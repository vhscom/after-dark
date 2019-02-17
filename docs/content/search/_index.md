+++
title = "Search" # title of the page
layout = "search" # sets the layout to use
noindex = true # tell robots not to index
[form]
  helpblock = "Press <kbd>s</kbd> to focus input anytime."
[form.input]
  placeholder = "Enter search query…"
  disabled = false
[security.csp.directives]
  scriptSrc = [
    "'sha512-Bxby9zhln4Zc2thGA1E9CdT4qcCY52SxO/SBxAH6qQK6LK6/1gGq1xJ3Uz0SXTsPSL6quze7bYQUHr94xJS7jQ=='",
    "'unsafe-eval'"
  ]
+++
