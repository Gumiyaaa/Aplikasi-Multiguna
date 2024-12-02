# Aplikasi Multiguna

Aplikasi Multiguna adalah sebuah aplikasi serbaguna yang dirancang untuk memenuhi berbagai kebutuhan pengguna dalam satu platform. Aplikasi ini mengintegrasikan berbagai fitur seperti informasi cuaca, jam dunia, stopwatch, dan berbagai layanan lainnya, menjadikannya alat yang praktis untuk kebutuhan sehari-hari.

## Fitur Utama

### 1. **Informasi Cuaca**
- Menampilkan kondisi cuaca terkini berdasarkan lokasi pengguna.
- Informasi meliputi suhu, kelembapan, kecepatan angin, dan kondisi umum (cerah, hujan, dll).
- Data cuaca diambil secara real-time melalui API OpenWeatherMap.

### 2. **Jam Dunia**
- Memungkinkan pengguna melihat waktu saat ini di berbagai kota besar di seluruh dunia.
- Dilengkapi dengan tampilan yang menarik dan ikon intuitif untuk mempermudah penggunaan.

### 3. **Stopwatch**
- Fungsi penghitung waktu dengan opsi untuk memulai, menghentikan, dan mereset waktu.
- Desain antarmuka sederhana namun elegan untuk penggunaan yang nyaman.

### 4. **Fitur Tambahan**
- Dukungan untuk ekspansi ke fitur-fitur lain seperti pengingat, pencatatan, atau manajemen tugas di masa depan.

## Teknologi yang Digunakan

- **Flutter**: Framework utama untuk pengembangan aplikasi.
- **Dart**: Bahasa pemrograman untuk logika dan antarmuka pengguna.
- **API OpenWeatherMap**: Sumber data cuaca real-time.
- **Pustaka intl**: Untuk format waktu dan tanggal yang mudah dibaca.
- **HTTP Client**: Untuk pengambilan data dari layanan eksternal.

## Cara Kerja Aplikasi

1. **Pengambilan Data Cuaca**
   - Lokasi pengguna digunakan untuk mengambil data cuaca terkini dari API OpenWeatherMap.
   - Data diolah dan ditampilkan dengan format yang mudah dipahami.

2. **Jam Dunia**
   - Waktu dihitung menggunakan zona waktu lokal masing-masing kota.
   - Informasi ditampilkan secara dinamis dengan pembaruan waktu otomatis.

3. **Stopwatch**
   - Timer dihitung menggunakan fungsi `Stopwatch` di Dart.
   - Timer diperbarui setiap interval waktu untuk akurasi.
