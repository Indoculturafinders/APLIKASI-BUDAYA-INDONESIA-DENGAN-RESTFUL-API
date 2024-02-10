# Instalasi Laravel

Ini adalah panduan singkat untuk menginstal Laravel di sistem Anda.

## Persyaratan

Sebelum Anda mulai, pastikan sistem Anda memenuhi persyaratan berikut:

- PHP versi 7.4 atau lebih tinggi
- Composer
- Node.js dan npm (opsional untuk pengembangan frontend)

## Langkah 1: Instalasi Composer

1. Kunjungi [https://getcomposer.org/download/](https://getcomposer.org/download/) untuk mengunduh Composer.
2. Ikuti petunjuk instalasi yang sesuai dengan sistem operasi Anda.

## Langkah 2: Instalasi Laravel

1. Buka terminal atau command prompt.
2. Pindah ke direktori tempat Anda ingin menginstal Laravel.
3. Jalankan perintah berikut untuk menginstal Laravel menggunakan Composer:
    ```
    composer create-project --prefer-dist laravel/laravel nama-proyek
    ```
    Ganti `nama-proyek` dengan nama yang Anda inginkan untuk proyek Laravel Anda.

## Langkah 3: Konfigurasi

1. Pindah ke direktori proyek Laravel Anda.
2. Salin file `.env.example` menjadi `.env`.
3. Jalankan perintah berikut untuk menghasilkan kunci aplikasi:
    ```
    php artisan key:generate
    ```

## Langkah 4: Jalankan Server Lokal

1. Jalankan server lokal menggunakan perintah:
    ```
    php artisan serve
    ```
2. Buka browser dan akses `http://localhost:8000` untuk melihat aplikasi Laravel Anda.

## Langkah 5: Pengembangan Frontend (Opsional)

Jika Anda ingin mengembangkan frontend menggunakan Vue.js, React, atau alat frontend lainnya, Anda dapat menginstal alat frontend yang diperlukan dengan menjalankan perintah berikut:
    ```
    npm install
    ```
    Anda juga dapat menggunakan Mix untuk mengompilasi aset frontend Anda.

---

Dengan mengikuti panduan ini, Anda sekarang telah berhasil menginstal Laravel dan siap untuk mulai mengembangkan aplikasi web yang luar biasa dengan kerangka kerja ini.
