1. Jelaskan apa itu Web Server dan gambarkan bagaimana cara webserver bekerja.

    Web Server merupakan komputer yang dapat menyimpan, memproses, dan mengirimkan file (HTML, CSS, Javascript, dsb) ke klien melalui protokol HTTP atau HTTPS.
   
    Web Server juga bertugas untuk melayani permintaan (request) dari klien melalui jaringan, umumnya dari browser, dan mengirimkan respon balik berupa halaman web yang diminta oleh klien.
    
    **Cara Kerja Web Server:**

    ![Web Server](https://github.com/user-attachments/assets/6196f667-609b-4424-a2ae-87e32e699509)

   
    A. Permintaan Klien (Request)
   
    Pengguna membuka browser dan memasukkan URL yang diinginkan, lalu browser menerjemahkan URL tersebut menjadi permintaan HTTP dan mengirimkannya ke web server melalui internet.
    
    B. Permintaan diterima oleh Web Server
   
    Web server menerimana permintaan dari browser. Permintaan dapat berisi informasi/data.
    
    C. Pemrosesan Permintaan
   
    Web Server memeriksa URL yang diminta dan mencari sumber daya yang sesuai pada sistem database untuk mendapatkan hasil.
    
    D. Mengirimkan Response (Response)
   
    Setelah menemukan/menghasilkan konten yang diminta, web server mengirimkan respon HTTP kembali ke browser. Akan tetapi, jika server HTTP gagal menemukan konten tersebut maka server akan merespons browser dengan kode error.
    
    E. Browser menampilkan halaman.
   
    Browser (Google, Firefox, dll) menerima respon dari web server dan menampilkan hasil (request) kepada pengguna. Disini pengguna pun dapat melihat konten website yang sudah diminta.


2. Buatlah Reverse Proxy untuk aplikasi yang sudah di deploy (dumbflix-frontend) dan implemetasikan penggunaan pm2 di aplikasi tersebut. Nama domain sesuaikan nama masing-masing.

Pertama-tama kita diharuskan untuk membuat beberapa VM yang terdiri dari web server dan 2 App.
Lalu lakukan update dan upgrade terlebih dahulu pada seluruh sistem VM yang sudah dibuat.
Setelah itu lakukan instalasi web server nginx pada VM yang menjadi web server.
Jika sudah terinstall kita bisa cek status nginx dengan perintah ``` sudo systemctl status nginx ``` dan cek localhost kita dengan perintah ``` curl localhost ```.

Selanjutnya kita akan melakukan konfigurasi reverse proxy untuk aplikasi dumbflix.
Pertama kita masuk ke dalam folder nginx, lalu membuat folder & file baru untuk membuat script konfigurasi reverse proxy.
Setelah itu masukkan konfigurasi berikut pada file .conf yang baru saja dibuat.

Lalu jangan lupa untuk menambahkan konfigurasi baru agar nginx mengetahui dimana posisi reverse proxy kita ada di folder mana, dengan cara ketikkan perintah ``` sudo nano nginx.conf ``` dan tambahkan konfigurasi seperti berikut.
Jika sudah membuat konfigurasi reverse proxy, jangan lupa untuk melakukan pengecekan konfigurasi dengan menjalankan perintah ``` sudo nginx -t ``` dan lakukan restart/reload pada nginx kita.

Dikarenakan kita masih menggunakan domain custom, maka kita harus setup domain custom kita pada lokal sistem kita dengan masuk ke dalam direktori /etc/hosts, lalu masukkan ip dan domain dari VM yang menjadi server.
Lalu untuk pembuktian, kita ketikkan domain yang sudah dibuat pada browser kita. Jika masih ada error seperti gambar dibawah itu dikarenakan kita belum menjalankan aplikasi kita.
Maka dari itu, kita harus melakukan clone & menjalankan aplikasi dumbflix yang sudah disediakan. Untuk langkah-langkahnya sudah ada dan bisa dilihat pada hari sebelumnya.
Jika sudah kita dapat melihat aplikasi sudah dapat berjalan dan diakses menggunakan domain virtual yang sudah kita buat.
Dan tambahkan package pm2 pada aplikasi dumbflix.

Terakhir, kita akan mencoba menambahkan file konfigurasi untuk ip dan domain yang berbeda pada nginx agar terlihat perbedaannya.



3. Jelaskan apa itu load balance.

    Load Balance (Balancing) merupakan suatu proses pendistribusian lalu lintas jaringan secara efisien ke dalam sekelompok server.
   
    Tujuan dari load balancing sendiri yaitu untuk meningkatkan ketersediaan, performa, dan keandalan aplikasi atau layanan yang dijalankan oleh server.
    
    Fungsi Load Balancing:
    ```
    - Menghindari beban berlebih pada satu server dengan mendistribusikan permintaan ke beberapa server yang ada.
    - Menyeimbangkan lalu lintas jaringan agar server dapat bekerja secara efisien dan meningkatkan kecepatan respons kepada pengguna.
    - Memungkinkan aplikasi/layanan ditingkatkan dengan menambahkan lebih banyak server ke dalam sistem.
    - Jika ada kegagalam pada satu server, maka load balancer akan mengalihkannya pada server lain yang masih berfungsi, sehingga aplikasi/layanan tetap berjalan tanpa adanya gangguan.
    ```
    
    Jenis Load Balancing:
    ```
    - Hardware Load Balancer
    - Software Load Balancer
    - Virtual Load Balancer
    ```


5. Implementasikan loadbalancing kepada aplikasi dumbflix-frontend yang telah digunakan.
