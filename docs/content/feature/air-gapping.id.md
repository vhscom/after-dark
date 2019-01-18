+++
title = "Air Gapping"
description = "Membangun dan menjalankan seluruh situs anda tanpa akses internet."
categories = ["security"]
tags = ["privacy", "networking"]
feature = ["related content"]
+++

Kecuali menjalankan [Instal Cepat](../quick-install) After Dark tidak memerlukan koneksi internet untuk berfungsi. Manfaatkan fitur ini dengan berbagai cara yang kreatif:

- Meninjau [Bantuan Online](../online-help) dokumen selama penerbangan dengan Virgin Galactic.
- Menyimpan jurnal pribadi saat melakukan couchsurfing melalui Asia Tenggara.
- Dengan aman menghasilkan konfigurasi untuk [Penambang Web](/module/toxic-swamp#config-generator) modul tambahan.
- Jalankan situs anda di belakang NAT atau firewall yang memblokir semua permintaan keluar.
- Mengembangkan konten anda menggunakan {{< external href="https://termux.com" text="Termux" />}} pada Android dengan mode pesawat.
- Laporkan berita dari Timor Barat tanpa memberitahu pihak berwenang.
- Membuat sebuah [Galeri Gambar](/module/hall-of-mirrors) saat trekking ke Gunung Nimbus melalui ferrata.

Secara default After Dark tidak membuat permintaan keluar **kecuali** saat melihat dokumentasi tertentu [Bantuan Online](../online-help) untuk menutupi fungsionalitas terkait.

## Hosting Ephemeral dengan enkripsi end-to-end

Menggunakan {{< external href="https://serveo.net" text="Serveo" />}} secara singkat anda dapat membuka situs anda ke internet, tanpa perlu mendaftar.

Sajikan dan buka situs anda dengan perintah berikut:

```sh
$ hugo serve --disableLiveReload & ssh -R 80:localhost:1313 serveo.net
```

Setelah dimulai tekan `g` untuk inspeksi lalu lintas, atau berhenti untuk offline dan gunakan `fg` untuk kembali ke `hugo`. Instal {{< external href="https://matt.ucc.asn.au/dropbear/dropbear.html" text="dropbear" />}} or {{< external href="https://www.openssh.com" text="openssh" />}} jika anda membutuhkan `ssh`.
