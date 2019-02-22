+++
title = "Ephemeral Hosting"
description = "Hosting ephemeral dengan enkripsi end-to-end."
categories = ["security"]
tags = ["privacy", "networking"]
features = ["related content", "alert"]
todo = ["i18n"]
+++

Menggunakan {{< external href="https://serveo.net" text="Serveo" />}} secara singkat anda dapat membuka situs anda ke internet, tanpa perlu mendaftar. Use this alongside [Air Gapping]({{< relref "air-gapping" >}}) to quietly poke a hole through your NAT or firewall to move information more discretely.

{{% hackcss-alert type="warning" %}}**Warning:** No form of communication over the Internet is 100% secure. If you don't trust Serveo or SSH hire a {{< external "https://opaque.link/post/dropgang/" "Dropgang" />}} or use the good 'ol sneakernet.{{% /hackcss-alert %}}

Sajikan dan buka situs anda dengan perintah berikut:

```sh
$ hugo serve --disableLiveReload & ssh -R 80:localhost:1313 serveo.net
```

Setelah dimulai tekan `g` untuk inspeksi lalu lintas, atau berhenti untuk offline dan gunakan `fg` untuk kembali ke `hugo`. Instal {{< external href="https://matt.ucc.asn.au/dropbear/dropbear.html" text="dropbear" />}} or {{< external href="https://www.openssh.com" text="openssh" />}} jika anda membutuhkan `ssh`.
