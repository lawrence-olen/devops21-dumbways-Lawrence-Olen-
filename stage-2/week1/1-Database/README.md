Tasks:
1. Deploy database MySQL
   - Setup secure_installation
   - Add password for root user
   - Create new user for MySQL
   - Create new database
   - Create privileges for your new user so they can access the database you created
   - Dont forget to change the MySQL bind address on /etc/mysql/mysql.conf.d/mysqld.cnf

2. Role Based
   - Create new database call demo and make some dummy table call transaction
   - Create a 2 role with the name admin, and guest that will be used to see and manage the 'transaction' table.
   - Give SELECT, INSERT, UPDATE, and DELETE access right to the employees tables for the admin role you just created, and only give SELECT access to guest.
   - Create a new user with the username your_name and password your_password. Add the user to the admin role.
   - Create a new user with the username guest and password guest. Add the user to the guest role.
   - Test all of tour user.

3. Remote User
   - Try to remote tour database from your local computer with mysql-client.


Working Steps:
1. Deploy database MySQL
   - Pertama jangan lupa untuk melakukan update dan upgrade sistem dengan menjalankan perintah ``` sudo apt update && sudo apt upgrade ```.
   - Lalu install database server MySQL pada App Server dengan perintah ``` sudo apt install mysql-server ```  dan lakukan pengecekan apakah database server sudah berjalan atau belum dengan perintah ``` sudo systemctl status mysql.service ```.
     ![step1](https://github.com/user-attachments/assets/19972b19-940d-4fc6-8031-5e87494338aa)
     ![step2](https://github.com/user-attachments/assets/9c3e8986-2b09-4c9e-b32b-9327dbdf7e34)
     
   - Setelah itu lakukan installasi aman (*secure installation*) pada MySQL untuk melindungi database dari potensi ancaman keamanan dengan perintah ``` sudo mysql_secure_installation ```.
     ![step3](https://github.com/user-attachments/assets/1b51ae4a-8c19-4278-b64a-cddf01968596)

   - Jangan lupa membuat password untuk root user agar database MySQL dapat diakses hanya dengan menggunakan password dan coba akses kembali database kita.
     ![step4](https://github.com/user-attachments/assets/36f3ddfc-bb2d-4fd9-a92d-32d49525d8c9)
     ![step5](https://github.com/user-attachments/assets/fb96ac23-df77-4e96-92e7-48c5a503729e)

   - Buat pengguna baru pada database MySQL dengan perintah ``` CREATE USER 'nama_pengguna'@'%' IDENTIFIED BY 'pass' ```.
     ![step6](https://github.com/user-attachments/assets/0dd82a28-740e-4159-b185-3ef7719dcb06)

   - Lalu coba buatlah database baru untuk membuat pengujian akses user terhadap database ini.
     ![step7](https://github.com/user-attachments/assets/996497f1-6e4c-4a61-977c-4f7d0189f7c8)

   - Berikan hak akses kepada pengguna baru dengan perintah ``` GRANT ALL PRIVILEGES ON nama_database.* TO 'nama_pengguna'@'%' WTIH GRANT OPTION ``` agar hanya dapat mengakses database tertentu dan lakukan reload pada sistem mysql dengan perintah ``` FLUSH PRIVILEGES ```.
     ![step8](https://github.com/user-attachments/assets/dd7d7da6-0678-433d-8402-df4ada62b74b)

   - Lalu Buka dan ubah file konfigurasi MySQL dengan perintah ``` sudo nano /etc/mysql/mysql.conf.d/mysqld.cnf ```.
     ![step9](https://github.com/user-attachments/assets/9dc29d06-e413-465f-80c0-fd8cae497059)

   - Ubah nilai *bind address* dan *mysqlx-bind-address* menjadi 0.0.0.0 untuk mengizinkan koneksi dari luar. Terakhir lakukan restart layanan MySQL dengan perintah ``` sudo systemctl restart mysql ```.
     ![step10](https://github.com/user-attachments/assets/739b11d2-1ce7-45e1-ad12-c4f42981f415)


2. Role Based
   - Membuat database baru bernama demo dan membuat data tabel dummy bernama transaksi.
     ![step1](https://github.com/user-attachments/assets/4d461133-c3da-49c4-a247-f99f31f81eb5)
     ![step2](https://github.com/user-attachments/assets/026fd118-bf37-4e40-9b20-257ac4b713e3)

   - Membuat 2 role dengan nama 'admin' dan 'guest' yang akan digunakan untuk melihat dan mengelola tabel transaksi yang sudah dibuat.
     
     ![step3](https://github.com/user-attachments/assets/a4d9a66b-f9af-4f38-a05c-8fe81dcb82b6)

   - Berikan hak akses SELECT, INSERT, UPDATE dan DELETE untuk tabel transaksi pada role admin dan hanya berikan hak akses SELECT pada role guest.
     ![step4](https://github.com/user-attachments/assets/5c150740-f378-46a6-ae70-71baa8f522bc)

   - Membuat pengguna baru dengan nama pengguna 'your_name' dan password 'your_password', lalu tambahkan pengguna ke peran admin.
     ![step5](https://github.com/user-attachments/assets/91f80ce4-195c-4cd1-b0f3-2afabefe5ad6)

   - Membuat pengguna baru dengan nama pengguna 'guest' dan password 'guest', lalu tambahkan pengguna ke peran tamu.
     ![step6](https://github.com/user-attachments/assets/25e8d5b7-3989-45a3-bcf6-29f0f96a7727)

   - Uji coba jalankan user admin maupun guest beserta hak aksesnya.
     ![step7](https://github.com/user-attachments/assets/7f6743ff-4d0f-45b2-9cf5-2988dd2ecec8)
     ![step8](https://github.com/user-attachments/assets/2775d37f-9b09-4a78-b3ec-9b494ac5c8d6)


3. Remote User
   - Mencoba melakukan remote ke database yang sudah dibuat sebelumnya dari lokal komputer dengan menggunakan mysql-client.
     ![step11](https://github.com/user-attachments/assets/d5967fc0-7904-47d6-ac35-a5d68e691087)


