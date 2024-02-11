# Pengembangan Laravel

Pada bagian ini, akan dijelaskan beberapa aspek penting yang perlu diperhatikan dalam pengembangan aplikasi menggunakan framework Laravel. Termasuk di antaranya adalah proses migration, pembuatan controller, model, route, dan pengaturan basis data SQL. Selain itu, contoh file .env juga disertakan untuk memudahkan konfigurasi lingkungan aplikasi.

## Migration

Migration dalam Laravel digunakan untuk membuat dan mengelola struktur database aplikasi. Dengan menggunakan migration, kita dapat membuat tabel baru, menambahkan kolom ke tabel yang ada, mengubah tipe data kolom, dan lainnya. File migration umumnya ditempatkan di dalam direktori `database/migrations`.

## Controller

Controller dalam Laravel merupakan wadah untuk mengelola logika bisnis aplikasi. Setiap route pada aplikasi Laravel biasanya diarahkan ke sebuah controller, yang kemudian menangani permintaan dari pengguna dan memberikan respons yang sesuai. File controller biasanya ditempatkan di dalam direktori `app/Http/Controllers`.

## Model

Model dalam Laravel merepresentasikan struktur data dari tabel database. Setiap model biasanya berhubungan dengan sebuah tabel database, dan digunakan untuk melakukan operasi-operasi CRUD (Create, Read, Update, Delete) terhadap data. File model biasanya ditempatkan di dalam direktori `app`.

## Route

Route dalam Laravel mendefinisikan pola URL dan aksi (action) yang terkait dengan pola tersebut. Setiap route dapat diarahkan ke controller atau langsung ke sebuah fungsi di dalam file `routes/web.php` atau `routes/api.php`.

## Database SQL

Laravel mendukung berbagai jenis basis data SQL, termasuk MySQL, PostgreSQL, SQLite, dan lainnya. Konfigurasi koneksi database SQL dapat ditemukan di file `.env`, yang merupakan file konfigurasi lingkungan aplikasi Laravel.

## Contoh File .env

Berikut adalah contoh isi file `.env` yang berisi konfigurasi untuk koneksi database:
````env
DB_CONNECTION=mysql
DB_HOST=127.0.0.1
DB_PORT=3306
DB_DATABASE=nama_database
DB_USERNAME=nama_pengguna_database
DB_PASSWORD=kata_sandi_database
