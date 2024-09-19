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
   - Setelah itu lakukan installasi aman (*secure installation*) pada MySQL untuk melindungi database dari potensi ancaman keamanan dengan perintah ``` sudo mysql_secure_installation ```.
   - Jangan lupa membuat password untuk root user agar database MySQL dapat diakses hanya dengan menggunakan password dan coba akses kembali database kita.
   - Buat pengguna baru pada database MySQL dengan perintah ``` CREATE USER 'nama_pengguna'@'%' IDENTIFIED BY 'pass' ```.
   - Lalu coba buatlah database baru untuk membuat pengujian akses user terhadap database ini.
   - Berikan hak akses kepada pengguna baru dengan perintah ``` GRANT ALL PRIVILEGES ON nama_database.* TO 'nama_pengguna'@'%' WTIH GRANT OPTION ``` agar hanya dapat mengakses database tertentu dan lakukan reload pada sistem mysql dengan perintah ``` FLUSH PRIVILEGES ```.
   - Lalu Buka dan ubah file konfigurasi MySQL dengan perintah ``` sudo nano /etc/mysql/mysql.conf.d/mysqld.cnf ``` 
   - Ubah nilai *bind address* dan *mysqlx-bind-address* menjadi 0.0.0.0 untuk mengizinkan koneksi dari luar. Terakhir lakukan restart layanan MySQL dengan perintah ``` sudo systemctl restart mysql ```.
 


2. Role Based

3. Remote User
   - Mencoba melakukan remote ke database yang sudah dibuat sebelumnya dari lokal komputer dengan menggunakan mysql-client.

