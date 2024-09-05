1. Jelaskan apa perbandingan antara Application Monolith & Application Microservices.

Aplikasi Monolith merupakan model pengembangan perangkat lunak yang menggunakan satu basis kode yang sama untuk menjalankan beberapa fungsi dan memiiki sifat yang terbatas karena perubahan kecil akan berdampak pada area basis kode yang luas.
Aplikasi Microservice merupakan model pengembangan yang menyusun perangkat lunak menjadi komponen (layanan) independen yang kecil sehingga dapat memperbarui, memodifikasi, atau menskalakan setiap layanan sesuai kebutuhan.

Berikut beberapa contoh aspek perbandingan yang ada:

A. Arsitektur
```
Monolith: Aplikasi tunggal yang semua fungsinya terintegrasi ke dalam satu kode basis besar.

Microservice: Aplikasi yang terdiri dari serangkaian layanan kecil dan independen yang masing-masing bertanggung jawab atas satu bagian dari fungsionalitas aplikasi.
```

B. Pengembangan
```
Monolith: Lebih mudah dimulai karena tidak banyak memerlukan perencanaan awal. Namun aplikasi dapat menjadi kompleks dan menantang untuk diperbarui.

Microservice: Membutuhkan lebih banyak perencanaan dan desain sebelum dimulai. Dapat menemukan bug lebih cepat dan kemampuan kode juga meningkat seiring waktu.
```

C. Deployment
```
Monolith: Lebih mudah karena hanya menginstal seluruh basis kode dan dependensi aplikasi dalam satu lingkungan tunggal.

Microservice: Lebih kompleks karena setiap layanan mikro adalah paket perangkat lunak dengan deployment independen.
```

D. Pemeliharaan
```
Monolith: Seiring bertambahnya ukuran aplikasi, maka menjadi sulit untuk dipelihara karena kompleksitas yang semakin besar.

Microservice: Karena layanan dipisah, maka pemeliharaan lebih mudah untuk dilakukan.
```

E. Keamanan
```
Monolith: Keamanan diterapkan secara terpusat, tetapi setiap celah keamanan dapat beresiko bagi seluruh aplikasi.

Microservice: Keamanan diisolasi ke tiap layanan yang ada. Akan tetapi, lebih banyak titik celah potensial yang harus diamankan.
```


2. Deploy Aplikasi dumbflix-frontend (NodeJS).
3. Deploy Golang & Python dengan menampilkan nama masing-masing.
4. Implementasikan penggunaan PM2 agar aplikasi kalian dapat berjalan di background.

