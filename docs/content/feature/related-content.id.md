+++
title = "Related Content"
description = "Mempromosikan lebih banyak konten anda kepada pengunjung situs."
categories = ["navigation"]
tags = ["links", "retention", "engagement"]
feature = ["code highlighter", "snippets", "related content"]
+++

After Dark menyediakan konten terkait untuk membantu pengguna menemukan lebih banyak informasi yang relevan bagi mereka dan dapat meningkatkan tampilan halaman dan waktu yang dihabiskan untuk situs anda.

Ketika dua halaman atau lebih atau postingan yang berisi taksonomi`tags` yang sama, mereka akan ditautkan di bagian seperti yang ditunjukkan di bagian bawah halaman. Bagian ini muncul secara otomatis seperti dibawah ini [Post Bylines](../post-bylines) dengan maksimum 7 item default yang ditampilkan.

{{% hackcss-alert type="info" %}}**Tip:** Buatlah [Custom Layout](/feature/custom-layouts) untuk menampilkan konten terkait diluar postingan.{{% /hackcss-alert %}}

Sesuaikan maksimum dari {{< external href="https://gohugo.io/getting-started/configuration/" text="Site Configuration" />}} dengan menambah `related_content_limit`:

```toml
[params]
  related_content_limit = 5 # limit to 5 items maximum site-wide
```

Hapus pengaturan untuk kembali ke bentuk standar.

Lihat {{< external href="https://gohugo.io/content-management/related/" text="Related Content in Hugo" />}} untuk pilihan konfigurasi tambahan .
