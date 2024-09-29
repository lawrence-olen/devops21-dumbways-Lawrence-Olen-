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
   ![work1](https://github.com/user-attachments/assets/c4bb9335-8a16-4816-bf3a-7d88c8895773)

2. Sesuaikan file konfigurasi SSH (sshd_config) untuk memastikan pengaturan dan keamanan (dilakukan apabila memang diperlukan).
3. Setelah selesai, lakukan restart layanan SSH agar perubahan konfigurasi dapat berlaku tanpa harus restart seluruh server.
   ![work2](https://github.com/user-attachments/assets/3210f38b-21a7-4acb-af4e-e6a09a2ae7d0)

4. Buatlah script bash untuk mempermudah installasi docker secara otomatisasi.
   ![work3](https://github.com/user-attachments/assets/c4cc1cda-6182-41d5-b9d2-902b2b5ebfc1)

5. Berikan izin eksekusi pada skrip instalasi Docker agar dapat dijalankan dengan perintah ``` chmod +x script.sh ```
6. Jalankan script instalasi Docker dengan perintah ``` sh name_file.sh ```.
   ![work4](https://github.com/user-attachments/assets/4cab1880-3fee-475a-92be-5bc2e206f92c)

** A. STAGING **
1. Lalu buatlah file docker-compose.yaml untuk menyusun dan mengelola konfigurasi kontainer Docker dengan lebih efisien.
2. Sesuaikan file docker-compose.yaml dengan konfigurasi yang diperlukan.
   ![work5](https://github.com/user-attachments/assets/6733ac3d-9342-471f-bf08-16d6ebbb3560)

3. Lakukan git cloning repo frontend (fe) dan backend (be) yang sudah disediakan oleh mentor.
    ![work6](https://github.com/user-attachments/assets/5d8c1dad-3280-4920-addf-04a4702b330b)

4. Navigasikan kedalam direktori yang diinginkan dan tambahkan file Dockerfile yang mendefinisikan lingkungan kontainer didalamnya.
5. Sesuaikan konfigurasi file Dockerfile pada masing-masing direktori fe dan beagar kontainer dapat dibangun dengan benar.
    ![work7](https://github.com/user-attachments/assets/78f128c5-054d-4ca1-9644-303c6dd965e3)

6. Persiapkan direktori khusus untuk menyimpan konfigurasi reverse proxy untuk pengarahan lalu lintas web.
7. Susunlah file konfigurasi untuk reverse proxy agar dapat mengarahkan permintaan dengan benar.
    ![work8](https://github.com/user-attachments/assets/5b513224-c9e7-47df-bd9a-f7cfe49a9d31)

8. Tambahkan entri DNS di cloudflare untuk mengarahkan nama domain ke alamat IP Server.
9. Sesuaikan pengaturan cloudflare untuk mematikan SSL dan konfigurasi tingkat enkripsi.
    ![work9](https://github.com/user-attachments/assets/ebea0c28-ce7a-4b40-b685-03291b1460a3)

10. Buatlah direktori ".secret" dan tambahkan file "cloudflare.ini" untuk menyimpan informasi kredensial cloudflare yang diperlukan oleh Certbot.
11. Instalasi Certbot memungkinkan manajemem sertifikat SSL menjadi otomatis.
12. Jalankan perintah Certbot untuk memperoleh sertifikat SSL yang diperlukan untuk domain.
    ![work10](https://github.com/user-attachments/assets/46f24364-30ea-4245-b9cc-e5118673a1f4)

13. Navigasikan kedalam direktori fe dan be untuk melanjutkan konfigurasi dan deployment.
14. Gunakan perintah docker build atau menggunakan perintah ``` docker compose up --build -d ``` untuk membangun kontainer Docker di masing-masing direktori, mengikuti instruksi yang ada di file Dockerfile.
15. Pastikan kontainer docker telah berhasil dibagun dengan memeriksa daftar gambar Docker yang tersedia dengan perintah ``` docker images ```
    ![work11](https://github.com/user-attachments/assets/0dd1e80d-0301-44d4-a6be-e8be926bd528)

16. Navigasikan kedalam direktori yang berisi file docker-compose.yaml untuk melanjutkan pengaturan dan konfigurasi Docker Compose.
17. Gunakan perintah ``` docker compose up --build -d ``` untuk memulai kontainer Docker secara background sesuai konfigurasi yang sudah ditentukan.
18. Pastikan status kontainer Docker dapat diakses dan berjalan dengan naik menggunakan perintah ``` docker compose ps -a ```.
    ![week11](https://github.com/user-attachments/assets/7c7bfbb3-cea4-4cbb-b9ce-8b5bb63fdcd1)

19. Bukalah aplikasi melalui web browser dan akses domain yang sudah dibuat, pastikan bahwa koneksi ke layanan frontend dan backend dapat berjalan dengan baik.
    ![work12](https://github.com/user-attachments/assets/9ad68b11-17a5-45a1-84da-1f1f88e22de9)

20. Melakuakn Register dan Login pada Aplikasi yang sudah di build.
    ![work13](https://github.com/user-attachments/assets/b966d52b-8948-4aeb-ae93-cd241f205e8f)


** B. PRODUCTION **
1. Server Database.
   
   ![work14](https://github.com/user-attachments/assets/e4d31ab6-7dad-43cd-ad3f-61614dd4067c)

2. Server Backend terpisah dengan 2 container didalamnya.
   ![work15](https://github.com/user-attachments/assets/ed8ba673-66b5-4b55-b287-106a68087de4)

3. Server Frontend terpisah dengan 2 container didalamnya.
   ![work16](https://github.com/user-attachments/assets/a70d9571-0846-45d4-93eb-c3851e70c24d)

4. Web Server dengan Reverse Proxy di dalamnya.
   ![work18](https://github.com/user-attachments/assets/4c4ba278-9a44-4582-8bbf-1081ad4cae08)

5. SSL Certbot pada web server.
   ![work17](https://github.com/user-attachments/assets/6361f4f5-361e-464e-b42d-e2f2a7e61cd7)

6. Cek Aplikasi pada web browser menggunakan domain yang sudah dibuat dan melakukan register serta login.
   ![work19](https://github.com/user-attachments/assets/daec3015-ef60-47f4-b7e2-cd12c1aa0289)
   ![work20](https://github.com/user-attachments/assets/ae7e99e3-eb97-4ea1-93b0-a8d7d1808bf6)




