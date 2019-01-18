+++
title = "Instant Views"
description = "Preview secara instant konten anda di Telegram."
categories = ["social"]
tags = ["author", "templating"]
feature = ["related content"]
+++

After Dark menyediakan panduan templat untuk mengaktifkan Telegram Instant Views untuk postingan. Gunakan itu untuk membuat {{< external href="https://instantview.telegram.org/my/" text="Instant View Template" />}} di situs telegram:

```yaml
# aktifkan untuk item di bagian postingan
?path: /post/.+

# mendefinisikan elemen-elemen yang diperlukan
title: //*[@itemprop="headline"]
body: //*[@itemprop="articleBody"]

# jika cover ada, tentukan gambar
?exists: //head/meta[@property="og:image"]/@content
cover: //head/meta[@property="og:image"]/@content
image_url: $cover/self::img/@src

# penulis dan data tanggal postingan diekstraksi secara otomatis
```

Preview hasilnya di situs Telegram :

![Telegram Instant View screenshot](/images/instant-view-fs8.png "Example Telegram Instant View for After Dark")

Selain itu, jika situs anda memiliki saluran telegram, anda dapat menentukannya dengan mengatur seperti yang berikut ini di konfigurasi situs anda:

```toml
[params.seo]
  telegram_channel = "channelname" # omit the leading `@`
```

Menentukan nama saluran memungkinkan pengguna telegram untuk bergabung dengan saluran anda dengan satu klik di dalam Instant view.

Lihat {{< external href="https://instantview.telegram.org/" text="Instant View on Telegram" />}} untuk informasi tambahan.
