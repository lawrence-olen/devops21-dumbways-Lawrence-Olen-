Tasks :

[ Docker ]

1. Buatlah suatu user baru dengan nama **team kalian**

2. Buatlah bash script se freestyle mungkin untuk melakukan installasi docker. 

3. Deploy aplikasi Web Server, Frontend, Backend, serta Database on top ``` docker compose ```
   Ketentuan buatlah 2 environment yaitu (staging dan production)
   A. Ketentuan di Staging
     1. Buat suatu docker compose yang berisi beberapa service kalian
        - Web Server
        - Frontend
        - Backend
        - Database
     2. Untuk penamaan image, sesuaikan dengan environment masing masing, ex: team1/dumbflx/frontend:staging
     3. Di dalam docker-compose file buat suatu custom network dengan nama **team kalian**, lalu pasang ke setiap service yang kalian miliki.
     4. Deploy database terlebih dahulu menggunakan mysql dan jangan lupa untuk pasang volume di bagian database.

   B. Ketentuan di Production
     1. Deploy database di server terpisah
     2. Server Backend terpisah dengan 2 container di dalamnya
     3. Server Frontend terpisah dengan 2 container di dalamnya
     4. Web Server juga terpisah untuk reverse proxy kalian nantinya.
     5. Untuk penamaan image, sesuaikan dengan environment masing masing, ex: team1/dumbflx/frontend:production

4. Building image aplikasi sebisa mungkin buat dockerized dengan image sekecil mungkin(gunakan multistage build). dan jangan lupa untuk sesuaikan configuration dari backend ke database maupun frontend ke backend sebelum di build menjadi docker images.

5. Untuk Web Server buatlah configurasi reverse-proxy menggunakan nginx on top docker.
   A. **SSL CLOUDFLARE OFF!!!**
   B. Gunakan docker volume untuk membuat reverse proxy
   C. SSL gunakan wildcard
   D. Untuk DNS bisa sesuaikan seperti contoh di bawah ini
      1. Staging
         - Frontend: team1.staging.studentdumbways.my.id
         - Backend: api.team1.staging.studentdumbways.my.id
      2. Production
         - Frontend: team1.studentdumbways.my.id
         - Backend: api.team1.studentdumbways.my.id

6. Push image ke docker registry kalian masing".

7. Aplikasi dapat berjalan dengan sesuai seperti melakukan login/register.


Working Steps:

1. Membuat user baru dengan nama "team1" untuk memfasilitasi manajemen akses dan pengelolaan keamanan server.
2. Sesuaikan file konfigurasi SSH (sshd_config) untuk memastikan pengaturan dan keamanan (dilakukan apabila memang diperlukan)
3. Setelah selesai, lakukan restart layanan SSH agar perubahan konfigurasi dapat berlaku tanpa harus restart seluruh server.
4. Buatlah script bash untuk mempermudah installasi docker secara otomatisasi.
5. Berikan izin eksekusi pada skrip instalasi Docker agar dapat dijalankan dengan perintah ``` chmod +x script.sh ```
6. Jalankan script instalasi Docker.
7. Lalu buatlah file docker-compose.yaml untuk menyusun dan mengelola konfigurasi kontainer Docker dengan lebih efisien.
8. Sesuaikan file docker-compose.yaml dengan konfigurasi yang diperlukan.
9. Lakukan git cloning repo frontend (fe) dan backend (be) yang sudah disediakan oleh mentor.
10. Navigasikan kedalam direktori yang diinginkan dan tambahkan file Dockerfile yang mendefinisikan lingkungan kontainer didalamnya.
11. Sesuaikan konfigurasi file Dockerfile pada masing-masing direktori fe dan beagar kontainer dapat dibangun dengan benar.
12. Persiapkan direktori khusus untuk menyimpan konfigurasi reverse proxy untuk pengarahan lalu lintas web.
13. Susunlah file konfigurasi untuk reverse proxy agar dapat mengarahkan permintaan dengan benar.
14. Tambahkan entri DNS di cloudflare untuk mengarahkan nama domain ke alamat IP Server.
15. Sesuaikan pengaturan cloudflare untuk mematikan SSL dan konfigurasi tingkat enkripsi.
16. Buatlah direktori ".secret" dan tambahkan file "cloudflare.ini" untuk menyimpan informasi kredensial cloudflare yang diperlukan oleh Certbot.
17. Instalasi Certbot memungkinkan manajemem sertifikat SSL menjadi otomatis.
18. Jalankan perintah Certbot untuk memperoleh sertifikat SSL yang diperlukan untuk domain.
19. navigasikan kedalam direktori fe dan be untuk melanjutkan konfigurasi dan deployment.
20. Gunakan perintah docker build untuk membangun kontainer Docker di masing-masing direktori, mengikuti instruksi yang ada di file Dockerfile.
21. Pastikan kontainer docker telah berhasil dibagun dengan memeriksa daftar gambar Docker yang tersedia dengan perintah ``` docker images ```
22. Navigasikan kedalam direktori yang berisi file docker-compose.yaml untuk melanjutkan pengaturan dan konfigurasi Docker Compose.
23. Gunakan perintah ``` docker compose up --build -d ``` untuk memulai kontainer Docker secara background sesuai konfigurasi yang sudah ditentukan.
24. Pastikan status kontainer Docker dapat diakses dan berjalan dengan naik menggunakan perintah ``` docker compose ps -a ```.
25. Bukalah aplikasi melalui web browser dan akses domain yang sudah dibuat, pastikan bahwa koneksi ke layanan frontend dan backend dapat berjalan dengan baik.
