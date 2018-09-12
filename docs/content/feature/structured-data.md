+++
title = "Structured Data"
description = "Give search engines rich info about site structure."
categories = ["search"]
tags = ["metadata", "semantics", "robots", "SEO"]
features = ["related content"]
+++

After Dark generates structured metadata using {{< external "http://schema.org" />}} specifications for blog posts, [Section Menu](../section-menu), [Hall of Mirrors](/module/hall-of-mirrors) image galleries and adapts data automatically using author-defined [Post Bylines](../post-bylines) as shown here:

Schema Property | Frontmatter Value
--------------- | -----------------
author?         | `author`
datePublished   | `publishdate` or `date`
articleSection  | `[categories]`
wordCount       | `wordcount`

Consider adding your own structured data when creating [Custom Layouts](../custom-layouts) for improved page semantics and better SEO.

Learn more about {{< external href="https://moz.com/learn/seo/schema-structured-data" text="Schema Structured Data on Moz" />}}.
