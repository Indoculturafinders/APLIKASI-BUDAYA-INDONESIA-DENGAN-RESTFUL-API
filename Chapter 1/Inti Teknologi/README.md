# Pengantar Teknologi Web

Ini adalah proyek dokumentasi yang bertujuan untuk memberikan pemahaman yang komprehensif tentang teknologi web. Dokumentasi ini mencakup beberapa elemen inti dari teknologi web yang mendukung pengembangan aplikasi web.

## Apa Itu Teknologi Web?

Teknologi web adalah kumpulan alat, protokol, dan bahasa pemrograman yang digunakan untuk membangun dan mengoperasikan aplikasi di lingkungan internet.

### Protokol HTTP

HTTP (Hypertext Transfer Protocol) adalah protokol utama yang digunakan untuk mentransfer data di World Wide Web. Ini memungkinkan komunikasi antara klien (biasanya web browser) dan server web.

#### Cara Kerja HTTP

HTTP bekerja dengan cara mengizinkan klien membuat permintaan kepada server web, dan server tersebut memberikan respons sebagai balasan. Setiap permintaan dianggap independen, tanpa ketergantungan pada permintaan sebelumnya.

#### HTTPS untuk Keamanan

HTTPS (Hypertext Transfer Protocol Secure) adalah versi aman dari HTTP yang menggunakan enkripsi SSL/TLS untuk menjaga keamanan data yang ditransfer antara klien dan server.

### HTML (Hypertext Markup Language)

HTML adalah bahasa markah yang digunakan untuk membuat struktur dasar halaman web. Ini membentuk kerangka konten pada suatu halaman. Contoh penerapan (index.html):
```html
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Contoh HTML CSS JS Sederhana</title>
    <link rel="stylesheet" href="style.css" />
  </head>
  <body>
    <div class="container">
      <div id="text">Hello, World!</div>
      <button onclick="changeText()">Ubah Teks</button>
    </div>
    <script src="script.js"></script>
  </body>
</html>
```

### CSS (Cascading Style Sheets)

CSS adalah bahasa yang digunakan untuk mengatur tata letak dan penampilan visual halaman web. Ini memungkinkan pemisahan antara struktur dan tampilan halaman. Contoh penerapan (style.css):
```css
.container {
  text-align: center;
  margin-top: 100px;
}

#text {
  font-size: 24px;
  margin-bottom: 20px;
}

button {
  padding: 10px 20px;
  font-size: 16px;
  cursor: pointer;
}
```

### JavaScript

JavaScript adalah bahasa pemrograman utama di sisi klien yang memungkinkan interaktivitas pada halaman web. Contoh penerapan (script.js):
```javascript
function changeText() {
  var text = document.getElementById("text");
  text.innerHTML = "Teks sudah berubah!";
}
```

## Kontak

Jika Anda memiliki pertanyaan atau umpan balik, jangan ragu untuk menghubungi kami di [sini](mailto:ilmanaqilaa2@gmail.com).

---

Dengan memahami dan menggunakan teknologi web ini, Anda dapat mengembangkan aplikasi web yang inovatif dan efisien.
