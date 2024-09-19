Requirement:
Appserver for deploying Database.
Gateway for deploying Frontend Application, Backend Application, and Web Server.

Tasks:
1. Create new user for all of your server
2. The server only can login with SSH-KEY without using password at all

Working Steps:
1. Login ke dalam dashboard cloud pada website Biznet Gio (https://portal.biznetgio.com/user/login)
2. Pada tampilan dashboard sebelah kiri klik compute dan pilih neo lite.
3. Klik create new
4. Lalu isi data sesuai spesifikasi yang diinginkan termasuk OS. Setelah itu klik next dan order, lakukan pembayaran atau menggunakan kode promo jika tersedia dan dapat digunakan.
5. Setelah server dibuat maka lakukan ssh atau create new ssh.

Gateway Server
1. Lakukan koneksi ke Gateway server dengan menggunakan SSH dan kunci SSH yang sudah diunduh (olen.pem). Lalu masukan perintah ``` ssh -i olen.pem crocox@103.127.136.82 ``` untuk memastikan keamanan akses ke dalam server.
2. Setelah itu ada kemungkinan terjadinya warning dikarenakan izin dari file kunci SSH terlalu terbuka yang memungkinkan akses oleh pengguna lain dan dianggap tidak aman oleh SSH. Maka dari itu kita harus membuat agar hanya pemilik yang dapat membaca file tersebut dengan menggunakan perintah ``` chmod 600 olen.pem ```.
3. Lalu jalankan kembali perintah SSH sebelumnya. Jika sudah benar, maka kita dapat terhubung pada server tanpa ada masalah.
4. Akan tetapi jika kita ingin melakukan koneksi tanpa harus memasukkan kunci SSH. Kita dapat melakukannya dengan mengonfigurasi file ``` ~/.ssh ``` agar dapat terhubung secara otomatis.
5. Pertama-tama kita diharuskan untuk membuat file konfigurasi SSH yang bernama config.
6. Tambahkan konfigurasi pada file config seperti contoh dibawah ini.
7. Jangan lupa untuk modifikasi file "olen.pem" agar hanya pemilik yang dapat membaca file tersebut dengan menggunakan perintah ``` chmod 600 olen.pem ```.
8. Lalu coba hubungkan kembali pada server gateway dengan menjalankan perintah ``` ssh gateway ```.
9. blablabla

App Server
1. Untuk koneksi ke App Server sendiri dapat dilakukan dengan mengikuti langkah-langkah yang sudah dilakukan pada gateway. Hanya saja jika kunci SSH berbeda, maka kita dapat membuat file baru yang berisi kunci SSH untuk app server.
2. Tambahkan kembali konfigurasi pada file config seperti contoh dibawah ini.
3. Hubungkan kembali pada app server dengan menjalankan perintah ``` ssh apps ```.
4. Blablabla
