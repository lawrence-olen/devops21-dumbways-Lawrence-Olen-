Tasks:
1. Install nginx
2. Buatlah reverse proxy dan gunakan domain dengan nama kalian ex:
   - Frontend: randal.studentdumbways.my.id
      - ssl cloudflare boleh Active atau ingin menggunakan SSL scrtbot juga dipersilahkan

   - Backend: api.randal.studentdumbways.my.id
      - untuk installation Certbot ada banyak cara (salah 1 nya seperti pada saat di kelas) atau kalau menemukan cara lain untuk melakukan installasi certbot atau tools yang lain yang digunakan untuk melakukan generate ssl feel free to use.
      - Generate SSL untuk reverse proxy kalian.
      - Sedikit challenge coba cari bagaimana cara pengimplementasian Wildcard SSL

3. Yok bisa yok di Explore :)

Working Steps:
1. Install nginx
   - Disini pertama-tama kita diharuskan untuk install nginx sebagai web server untuk melayani aplikasi frontend.

2. Buatlah reverse proxy dan gunakan domain dengan nama kita. Example Frontend (randal.studentdumbways.mys.id) dan backend (api.randal.studentdumbways.my.id).
   A. Frontend
   - Membuat konfigurasi reverse proxy terlebih dahulu pada server gateway. Jangan lupa untuk melakukan reload/restart pada sistem menggunakan ``` sudo systemctl restart/reload nginx ```
   - Lalu kita coba menggunakan ssl cloudflare dengan menambahkan nama domain dan ip server pada cloudflare.
   - Setelah itu kita coba melakukan testing domain pada web browser kita.

   - Atau kita juga bisa menggunakan ssl certbot dengan langkah-langkah yang dapat kita lihat di website 'https://certbot.eff.org/'.
   - Lalu masukan perintah ``` sudo certbot ``` untuk melakukan konfigurasi ssl certbot pada domain website yang akan kita buat.
   - Coba kita cek pada konfigurasi proxy kita apakah ada perubahan atau tidak.
   - Jika sudah ada, maka kita coba cek jalankan di web browser dan melihat apakah sudah ada ssl certbot (protokol keamanan internet) pada domain web kita.

   B. Bakcend
   - 
