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
     ![step1](https://github.com/user-attachments/assets/d5c8124f-173b-4eea-adff-597f1204921f)

2. Buatlah reverse proxy dan gunakan domain dengan nama kita. Example Frontend (randal.studentdumbways.mys.id) dan backend (api.randal.studentdumbways.my.id).
   
   A. Frontend
   - Membuat konfigurasi reverse proxy terlebih dahulu pada server gateway. Jangan lupa untuk melakukan reload/restart pada sistem menggunakan ``` sudo systemctl restart/reload nginx ```.
     ![step2](https://github.com/user-attachments/assets/660a6e99-3a61-4f1f-94a5-f4e824fb9385)
     ![step3](https://github.com/user-attachments/assets/7e826981-3cd1-4cf5-9833-429fc696d781)
     ![step4](https://github.com/user-attachments/assets/b0081999-a6ac-4658-8f38-5f832dd7215a)

   - Lalu kita coba menggunakan ssl cloudflare dengan menambahkan nama domain dan ip server pada cloudflare.
     ![step5](https://github.com/user-attachments/assets/fe863aa7-99f0-418e-9b0a-ec69bb53235f)

   - Setelah itu kita coba melakukan testing domain pada web browser kita.
     ![step6](https://github.com/user-attachments/assets/28a1b7c2-cd8a-4053-b91a-9c8ef574c26b)

   - Atau kita juga bisa menggunakan ssl certbot dengan langkah-langkah yang dapat kita lihat di website 'https://certbot.eff.org/'.
   - Lalu masukan perintah ``` sudo certbot ``` untuk melakukan konfigurasi ssl certbot pada domain website yang akan kita buat.
     ![step8](https://github.com/user-attachments/assets/7e703dde-7e32-40fe-a6a3-8b5209d143c2)

   - Coba kita cek pada konfigurasi proxy kita apakah ada perubahan atau tidak.
     ![step9](https://github.com/user-attachments/assets/b1acb599-7331-4f90-bd38-fac2596ae27d)

   - Jika sudah ada, maka kita coba cek jalankan di web browser dan melihat apakah sudah ada ssl certbot (protokol keamanan internet) pada domain web kita.
     ![step10](https://github.com/user-attachments/assets/7b3736ce-22c1-4ba5-880c-988192b46234)

   B. Backend
   - Membuat konfigurasi reverse proxy kembali pada sisi backend.
   - Membuat suatu direktori yang berisi Email dan API_KEY dari akun Certbot kita dan buatlah permission agar file tersebut lebih aman.
   - Lakukan installasi certbot apabila belum ada, jika sudah maka lakukan langkah-langkah seperti diatas.
   - Cek kembali apakah ssl certbot sudah terpasang pada web browser dengan mengakses domain yang sudah dibuat.

   C. Pengujian
   - Pertama kita mengubah terlebih dahulu konfigurasi pada file src/config/api.js pada frontend.
   - Lalu jalankan projek menggunakan package pm2.
   - Cek pada web browser apakah dapat berjalan, lalu lakukan register dan login pada aplikasi.
   - Jika ingin memastikan apakah registrasi kita terdaftar dapat dilihat pada database yang sudah kita lihat sebelumnya.

