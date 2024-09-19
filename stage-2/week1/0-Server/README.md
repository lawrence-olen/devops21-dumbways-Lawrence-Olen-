**Requirement:**

Appserver for deploying Database.

Gateway for deploying Frontend Application, Backend Application, and Web Server.

**Tasks:**
1. Create new user for all of your server
2. The server only can login with SSH-KEY without using password at all

**Working Steps:**
1. Login ke dalam dashboard cloud pada website Biznet Gio (https://portal.biznetgio.com/user/login).

2. Pada tampilan dashboard sebelah kiri klik compute dan pilih neo lite.

   ![step2](https://github.com/user-attachments/assets/e2c28eb2-7b49-4cd2-80ce-27ad83c76ddc)

3. Klik create new.
   ![step3](https://github.com/user-attachments/assets/e26ea482-e60d-48fb-8ac9-e779bc9b28ef)

4. Lalu isi data sesuai spesifikasi yang diinginkan termasuk OS. Setelah itu klik next dan order, lakukan pembayaran atau menggunakan kode promo jika tersedia dan dapat digunakan.
   ![step4](https://github.com/user-attachments/assets/0998a0e2-ce47-4871-8893-692293457b60)

5. Setelah server dibuat maka lakukan ssh atau create new ssh.
   ![step1](https://github.com/user-attachments/assets/ea4ff88a-47c8-4409-a0c2-67fb50f85787)


**Gateway Server**
1. Lakukan koneksi ke Gateway server dengan menggunakan SSH dan kunci SSH yang sudah diunduh (olen.pem). Lalu masukan perintah ``` ssh -i olen.pem crocox@103.127.136.82 ``` untuk memastikan keamanan akses ke dalam server.
2. Setelah itu ada kemungkinan terjadinya warning dikarenakan izin dari file kunci SSH terlalu terbuka yang memungkinkan akses oleh pengguna lain dan dianggap tidak aman oleh SSH. Maka dari itu kita harus membuat agar hanya pemilik yang dapat membaca file tersebut dengan menggunakan perintah ``` chmod 600 olen.pem ```.
   ![step5](https://github.com/user-attachments/assets/3d46f66f-2fa3-4762-aecf-b52b16c23fb1)

3. Lalu jalankan kembali perintah SSH sebelumnya. Jika sudah benar, maka kita dapat terhubung pada server tanpa ada masalah.
   ![step6](https://github.com/user-attachments/assets/1bd0b485-6cce-4334-a1ec-ceaecd43ebbd)

4. Akan tetapi jika kita ingin melakukan koneksi tanpa harus memasukkan kunci SSH. Kita dapat melakukannya dengan mengonfigurasi file ``` ~/.ssh ``` agar dapat terhubung secara otomatis.
5. Pertama-tama kita diharuskan untuk membuat file konfigurasi SSH yang bernama config.
   ![step7](https://github.com/user-attachments/assets/c7e95fef-9e69-4295-bf0a-ccc60d12471f)

6. Tambahkan konfigurasi pada file config seperti contoh dibawah ini.
    ![step8](https://github.com/user-attachments/assets/bbb2359d-8255-4f97-bdd5-40840b97f128)

7. Jangan lupa untuk modifikasi file "olen.pem" agar hanya pemilik yang dapat membaca file tersebut dengan menggunakan perintah ``` chmod 600 olen.pem ```.
8. Lalu coba hubungkan kembali pada server gateway dengan menjalankan perintah ``` ssh gateway ```.
   ![step9](https://github.com/user-attachments/assets/c759c81a-5889-4d2b-ab1a-067f1b1df076)

9. Jika sudah masuk ke dalam server jangan lupa untuk melakukan proses update dan upgrade untuk memastikan bahwa semua paket dan dependensi terbaru telah diinstall dengan menjalankan perintah ``` sudo apt update && sudo apt upgrade ```.
10. Lalu buat pengguna baru dengan menggunakan perintah ``` sudo adduser kingkong ``` untuk meningkatkan keamanan dan mengelola hak akses dengan lebih baik.
    ![step12](https://github.com/user-attachments/assets/b0675cf6-5b52-4378-b84b-513355b220df)

11. Ubah hak akses pengguna yang sudah dibuat agar dapat menggunakan sudo (super user do) dengan menjalankan perintah ``` sudo usermod -aG sudo kingkong ```.
    ![step13](https://github.com/user-attachments/assets/5aae2e6f-242b-4d23-a19c-8d6cf5b3ec8f)

12. Setelah itu, sesuaikan konfigurasi SSH untuk memungkinkan koneksi SSH jarak jauh dari terminal lokal dengan mengubah file konfigurasi di direktori ``` /etch/ssh ```. Pastikan autentikasi untuk *PubkeyAuthentication* diaktifkan dan *PasswordAuthentication* dimatikan.
    ![step14](https://github.com/user-attachments/assets/588381eb-3149-46f9-8466-2c626021e6df)

13. Setelah mengubah konfigurasi SSH, lakukan restart layanan SSH untuk menerapkan perubahan dengan menjalankan perintah ``` sudo systemctl restart sshd ```.
    ![step16](https://github.com/user-attachments/assets/e231be8f-24c7-454a-a723-e9aace9876c4)

14. Setelah itu akses kembali server dari user yang sudah dibuat.
15. Disini server terjadi *Permission denied* karena hanya dapat login dengan menggunakan SSH-KEY yang sudah di konfigurasikan dan tidak dapat masuk menggunakan password.
    ![step17](https://github.com/user-attachments/assets/a8cf93f8-3d41-4697-8b78-2d83cf7ed563)

16. Maka disini kita akan melakukan generate SSH-KEY terlebih dahulu seperti contoh dibawah ini.
    ![step18](https://github.com/user-attachments/assets/9f8e1910-6d0b-42cc-a1f9-c04ac7805131)

17. Lalu membuat suatu file yang bernama 'authorized_keys' untuk menyimpan id.pub (gembok) yang sudah kita generate sebelumnya.
    ![step19](https://github.com/user-attachments/assets/d977a9cd-5f37-47ad-959b-8ebfdd79735b)
    ![step20](https://github.com/user-attachments/assets/eedd7e2c-1441-44a6-b3fa-852050a7a912)

18. Untuk id yang berfungsi sebagai kunci kita simpan di file baru dengan ekstensi (.pem) pada direktori '.ssh' di local komputer kita atau kita dapat menyimpan id.pub dari lokal kita kedalam file 'authorized_keys' yang dimiliki oleh user server kita.
    ![step22](https://github.com/user-attachments/assets/5f556cf9-bd9b-4072-82b7-ba0e8624f55a)

19. Terakhir kita dapat masuk kedalam server dengan user yang sudah dibuat sebelumnya melalui lokal komputer.
    ![step23](https://github.com/user-attachments/assets/b370feab-aa3c-4fe2-aa62-4541d97b2fe8)


**App Server**
1. Untuk koneksi ke App Server sendiri dapat dilakukan dengan mengikuti langkah-langkah yang sudah dilakukan pada gateway. Hanya saja jika kunci SSH berbeda, maka kita dapat membuat file baru yang berisi kunci SSH untuk app server.
2. Tambahkan kembali konfigurasi pada file config seperti contoh dibawah ini.
   ![step10](https://github.com/user-attachments/assets/cd3bc226-10d2-4f3c-9cb3-e8d06fd47a46)

3. Hubungkan kembali pada app server dengan menjalankan perintah ``` ssh apps ```.
   ![step11](https://github.com/user-attachments/assets/4e1aaeb3-7def-4347-b724-cfcdb07d0c7c)

4. Jika sudah masuk ke dalam server jangan lupa untuk melakukan proses update dan upgrade untuk memastikan bahwa semua paket dan dependensi terbaru telah diinstall dengan menjalankan perintah ``` sudo apt update && sudo apt upgrade ```.
5. Kita dapat membuat user baru (godzilla) dengan mengikuti langkah-langkah yang sudah ada sebelumnya dan coba masuk ke dalam server dengan user yang sudah dibuat.
   ![step24](https://github.com/user-attachments/assets/50222f87-21bb-4b70-a39b-ea0627644745)


