+++
title = "Trim Color"
description = "Define the color used to display borders around your site."
categories = ["customizing"]
tags = ["color", "style", "branding"]
features = ["code highlighter", "snippets", "related content"]
+++

Trim color can sometimes affect how a browser or OS chooses to display the site. In {{< external href="https://brave.com/" text="Brave" />}} adjusting trim color affects the appearance of the location bar. By default trim color is set to background color of the current [Display Variant](../display-variants).

Define trim color in your [Custom Styles](../custom-styles) by declaring the `--trim-color` variable inside a `:root` selector at the top of the file:

{{< highlight css "linenos=inline" >}}
:root {
  --trim-color: firebrick;
}
{{< /highlight >}}

Reuse the variable to maintain consistency throughout your custom styles:

{{< highlight css "linenos=inline,linenostart=4" >}}
nav a.active {
  background-color: var(--trim-color);
}
{{< /highlight >}}

See {{< external href="https://devdocs.io/css/using_css_variables" text="Using CSS variables" />}} for help using CSS variables.
