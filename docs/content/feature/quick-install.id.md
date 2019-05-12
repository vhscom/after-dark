+++
title = "Quick Install"
description = "Hanya satu perintah yang anda butuhkan untuk membuat website baru."
categories = ["core"]
tags = ["setup", "installation", "scripts"]
features = ["code highlighter", "snippets", "related content"]
notes = [
  "mengulas 'module-system' saat menambah atau menghapus add-on yang telah di instal",
  "juga meninjau pilihan modul yang sudah dipasang sebelumnya (lihat masalah di depan)"
]
[[copyright]]
  owner = "VHS"
  date = "2019"
  license = "agpl-3.0-or-later"
+++

After Dark termasuk skrip instalasi portabel untuk pengaturan cepat:

{{< hackcss-card header="themes/after-dark/bin/install" >}}
<style>.card-content .inner { overflow: scroll; max-height: 30em; }</style>
<details itemscope itemtype="https://schema.org/SoftwareSourceCode">
<summary>Perluas untuk melihat skrip</summary>
{{< highlight shell "linenos=inline" >}}
{{< include "themes/after-dark/bin/install" >}}
{{< /highlight >}}
<link itemprop="codeRepository" href="https://codeberg.org/vhs/after-dark">
<meta itemprop="codeSampleType" content="script">
<meta itemprop="programmingLanguage" content="sh">
<meta itemprop="runtimePlatform" content="busybox">
<link itemprop="targetProduct" href="https://vhs.codeberg.page/after-dark">
<meta itemprop="accessMode" content="textual">
</details>
{{< /hackcss-card >}}

Silahkan instal {{< external href="https://gohugo.io" text="Hugo" />}} `0.44` atau yang lebih besar sebelum menjalankan skrip.

<!--more-->

Skrip telah diuji pada Debian, BusyBox dan Darwin, dan seharusnya juga dapat bekerja di bawah Alpine, Ubuntu, Docker dan Windows melalui {{< external href="http://cmder.net" text="Cmder" />}} tanpa ketergantungan tambahan.

{{% hackcss-alert type="warning" %}}**Warning:** selalu periksa skrip yang diunduh dari internet sebelum menjalankannya secara lokal. Jika anda memilih untuk tidak menjalankan skrip [Unduh secara manual](/#download).{{% /hackcss-alert %}}

Jalankan skrip sesuka anda. Berikut adalah metode yang memungkinkan:

1. Unduh dan kirim ke `sh` secara langsung:

    {{< hackcss-alert >}}
    {{< highlight shell >}}wget -qO - https://codeberg.org/vhs/after-dark/raw/branch/trunk/bin/install | sh{{< /highlight >}}
    {{< /hackcss-alert >}}

    <i>(Cojones not included.)</i>

2. Unduh di file baru, `chmod` dan jalankan:

    {{< hackcss-alert >}}
    {{< highlight shell >}}curl -O https://cdn.jsdelivr.net/npm/after-dark@latest/bin/install && \
chmod +x install && ./install{{< /highlight >}}
    {{< /hackcss-alert >}}

    <i>(It's safe if it comes from a CDN, amirite?)</i>

3. Dari kanonik `git` klon:

    {{< hackcss-alert >}}
    {{< highlight shell >}}# sumber klon dan ubah ke direktori sumber git klon https://codeberg.org/vhs/after-dark.git && cd "$_"

# gunakan npm cli untuk mendapatkan hash rilis
echo "${$(npm run integrity)#*sha512-}"

# jalankan instal cepat setelah memvalidasi
./bin/install
{{< /highlight >}}
    {{< /hackcss-alert >}}

    <i>(<a href="/feature/release-hashes/">Release Hashes</a> may be used for code validation.)</i>

Skrip harus selesai dalam 5-10 detik sehingga menghasilkan sampel situs dan dokumen bantuan:

{{< figure alt="After Dark screenshots"
  src="/images/quick-install.png"
  lqipsrc="/images/quick-install-fs8.png"
  caption="After Dark Quick Install running to completion in Terminal on macOS Mojave."
>}}

# Konfigurasi multi situs

After Dark memungkingkan menjalankan manajemen multi situs dari satu instalasi. Untuk mengelola beberapa website gunakan `-c` dan `-d` bendera untuk menentukan konten dan tujuan direktori secara berurutan.

Misalnya, untuk mengahasilkan situs audio menggunakan instalasi After Dark saat ini, buat skrip yang dapat dieksekusi untuk menghasilkan situs tersebut:

{{< hackcss-card header="flying-toasters/bin/gen-audio-site" >}}
{{< highlight shell >}}#!/bin/sh
hugo -c sites/audio -d public/static.domain.example{{< /highlight >}}
{{< /hackcss-card >}}

Dimana `audio` berisi konten untuk situs itu:

```
├── layouts
├── sites
│   └── audio
│       ├── audiobooks
│       │   ├── gaining-currency.md
│       │   └── the-power-of-now.md
│       └── clips
│           └── war-of-the-worlds.md
├── static
```

Dan `public` berisi folder untuk setiap situs:

```
public
└── static.domain.example
    ├── categories
    │   └── index.xml
    ├── audiobooks
    │   └── index.html
    ├── clips
    │   └── index.html
    ├── css
    ├── index.html
    ├── index.xml
    ├── js
    ├── sitemap.xml
    └── tags
        └── index.xml
```

Dan buat skrip lain untuk menyajikan konten untuk diedit:

{{< hackcss-card header="flying-toasters/bin/serve-audio-site" >}}
{{< highlight shell >}}#!/bin/sh
hugo -c sites/audio{{< /highlight >}}
{{< /hackcss-card >}}

Setiap subdirektori `public` kemudian menjadi website yang independen dan dapat disebarkan serta salinan persisnya disimpan untuk konten tujuan yang dihasilkan.

{{% hackcss-alert type="info" %}}**Tip:** Untuk jenis fleksibiltas tambahan `hugo --help` dan modifikasi skrip anda menggunakan `--theme` dan `--config` flags.{{% /hackcss-alert %}}

Multi situs sangat cocok untuk mempertahankan tampilan dan rasa yang konsisten di berbagai domain asal sekaligus membatasi kebutuhan untuk menjalankannya [Upgrade Script](/feature/upgrade-script/) untuk setiap situs.
