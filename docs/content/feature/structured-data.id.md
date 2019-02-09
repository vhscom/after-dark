+++
title = "Structured Data"
description = "Memberikan mesin pencari yang kaya tentang struktur situs."
categories = ["search"]
tags = ["metadata", "semantics", "robots", "SEO"]
feature = ["related content"]
+++

After Dark menghasilkan metadata terstruktur menggunakan {{< external "https://schema.org" />}} spesifikasi untuk postingan blog, [Menu Bagian](../section-menu), [Hall of Mirrors](/module/hall-of-mirrors) galeri gambar dan mengadaptasi data secara otomatis menggunakan yang ditentukan penulis [Post Bylines](../post-bylines) seperti yang ditunjukkan disini:

Properti skema | Nilai frontmatter
--------------- | -----------------
author?         | `author`
datePublished   | `publishdate` atau `date`
articleSection  | `categories`

Pertimbangkan untuk menambahkan data terstruktur saat membuat [Custom Layouts](../custom-layouts) untuk meningkatkan semantik halaman dan SEO yang lebih baik.

Pelajari lebih lanjut tentang data terstruktur menggunakan sumber daya berikut:

- {{< external href="https://www.w3.org/TR/microdata/" text="HTML Microdata on W3C" />}}
- {{< external href="https://developer.mozilla.org/en-US/docs/Web/HTML/Microdata" text="Microdata on MDN" />}}
- {{< external href="https://moz.com/learn/seo/schema-structured-data" text="Schema Structured Data on Moz" />}}


Gunakan [Webmaster Tools](../webmaster-tools/) untuk memvalidasi data terstruktur. Ini dapat dilakukan dari mesin pengembangan menggunakan [ephemeral hosting](../air-gapping/#hosting-ephemeral-dengan-enkripsi-end-to-end).
