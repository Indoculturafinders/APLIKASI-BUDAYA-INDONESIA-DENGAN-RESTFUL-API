# Penggunaan jsDelivr dengan GitHub

jsDelivr adalah layanan pengiriman konten (CDN) gratis dan terbuka yang memungkinkan Anda untuk memanfaatkan repositori GitHub Anda sebagai host untuk file JavaScript, CSS, gambar, dan aset web lainnya. Berikut adalah panduan singkat tentang cara menggunakan jsDelivr dengan GitHub.

## Langkah 1: Mempersiapkan Repositori GitHub

1. Buat atau gunakan repositori GitHub Anda yang sudah ada.
2. Pastikan repositori Anda berisi file JavaScript, CSS, atau aset web lainnya yang ingin Anda distribusikan melalui jsDelivr.

## Langkah 2: Menyimpan File ke Repositori

1. Unggah atau buat file yang ingin Anda distribusikan ke repositori GitHub Anda.
2. Pastikan file-file tersebut tersedia di repositori Anda dalam struktur direktori yang sesuai.

## Langkah 3: Mendistribusikan File melalui jsDelivr

1. Buka situs web jsDelivr di [https://www.jsdelivr.com/](https://www.jsdelivr.com/).
2. Di halaman beranda jsDelivr, temukan dan salin URL repositori GitHub Anda yang ingin Anda distribusikan melalui jsDelivr.
3. Gunakan URL tersebut dalam tag `<script>`, `<link>`, atau sesuai kebutuhan Anda di situs web atau aplikasi Anda. Contoh:
    ```html
    <!-- Untuk file JavaScript -->
    <script src="https://cdn.jsdelivr.net/gh/username/repository@version/path/to/file.js"></script>

    <!-- Untuk file CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/username/repository@version/path/to/file.css">
    ```
    Ganti `username` dengan nama pengguna GitHub Anda, `repository` dengan nama repositori Anda, `version` dengan versi tag atau nama cabang yang ingin Anda gunakan (misalnya, `master`), dan `path/to/file.js` atau `path/to/file.css` dengan jalur relatif ke file di repositori Anda.

## Langkah 4: Manfaatkan Caching dan Kecepatan jsDelivr

jsDelivr akan secara otomatis menangani penyimpanan cache dan distribusi file Anda ke seluruh server CDN mereka di seluruh dunia. Ini akan meningkatkan kinerja dan kecepatan pengiriman konten Anda kepada pengguna di seluruh dunia.

## Contoh Penggunaan

Misalnya, jika Anda memiliki file JavaScript `app.js` dalam repositori GitHub `username/repository` yang ingin Anda distribusikan melalui jsDelivr, Anda dapat menggunakan URL berikut di situs web Anda:

```html
<script src="https://cdn.jsdelivr.net/gh/username/repository@master/path/to/app.js"></script>
