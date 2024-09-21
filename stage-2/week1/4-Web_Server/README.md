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
     ![step1](https://github.com/user-attachments/assets/d60d14e7-53a3-49d7-b8a0-aedcfd5cc73d)

   - Membuat suatu direktori yang berisi Email dan API_KEY dari akun Certbot kita dan buatlah permission agar file tersebut lebih aman.
     ![step2](https://github.com/user-attachments/assets/ba03a78e-356d-4ee7-af00-d8b057eef491)
     ![step3](https://github.com/user-attachments/assets/a26e45e0-fcb2-4857-af7d-824964e6f528)

   - Lakukan installasi certbot apabila belum ada, jika sudah maka lakukan langkah-langkah seperti diatas.
     ![step4](https://github.com/user-attachments/assets/acb0d0d3-9c0d-452d-a912-d02d5673d269)

   - Cek kembali apakah ssl certbot sudah terpasang pada web browser dengan mengakses domain yang sudah dibuat.
     ![step5](https://github.com/user-attachments/assets/5834fbb4-f56a-4fb2-bd3d-89ca799bcad1)


   C. Pengujian
   - Pertama kita mengubah terlebih dahulu konfigurasi pada file src/config/api.js pada frontend.
     ![step6](https://github.com/user-attachments/assets/5a081a8c-b791-437d-8b4f-3f7e3708e2f1)

   - Lalu jalankan projek menggunakan package pm2.
     ![step10](https://github.com/user-attachments/assets/61abc807-6d08-4d3f-aca9-36687b1ec3db)

   - Cek pada web browser apakah dapat berjalan, lalu lakukan register dan login pada aplikasi.
     ![step7](https://github.com/user-attachments/assets/f1e582ff-0ce5-4217-82aa-f2e434ea680f)
     ![step8](https://github.com/user-attachments/assets/c6ad82cd-78fd-4626-9a3c-13d61e5bc07d)

   - Jika ingin memastikan apakah registrasi kita terdaftar dapat dilihat pada database yang sudah kita lihat sebelumnya.
     ![step9](https://github.com/user-attachments/assets/ebe9134e-0055-437a-b0ac-3d1de1f4a700)


