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
   ![step1](https://github.com/user-attachments/assets/6ee9db86-435d-4905-a44e-66db9578b6af)

    Lalu lakukan update dan upgrade terlebih dahulu pada seluruh sistem VM yang sudah dibuat dengan perintah ``` sudo apt update && sudo apt upgrade ```.
   
    Setelah itu lakukan instalasi web server nginx pada VM yang menjadi web server.
   ![step2](https://github.com/user-attachments/assets/fc1986a3-a1fa-4aae-b228-3d220fe7937b)

    Jika sudah terinstall kita bisa cek status nginx dengan perintah ``` sudo systemctl status nginx ``` dan cek localhost kita dengan perintah ``` curl localhost ```.
   ![step3](https://github.com/user-attachments/assets/6f9cd92f-317c-4bb7-90bc-6a2081be7ba3)

    Selanjutnya kita akan melakukan konfigurasi reverse proxy untuk aplikasi dumbflix.
   
    Pertama kita masuk ke dalam folder nginx, lalu membuat folder & file baru untuk membuat script konfigurasi reverse proxy.
   ![step4](https://github.com/user-attachments/assets/887d128f-a4c3-4131-b46d-28230a638c91)

    Setelah itu masukkan konfigurasi berikut pada file .conf yang baru saja dibuat.
   ![step5](https://github.com/user-attachments/assets/4490e875-f39c-499f-978b-1cc95042ba0b)

    Lalu jangan lupa untuk menambahkan konfigurasi baru agar nginx mengetahui dimana posisi reverse proxy kita ada di folder mana, dengan cara ketikkan perintah ``` sudo nano nginx.conf ``` dan tambahkan konfigurasi seperti berikut.
   ![step6](https://github.com/user-attachments/assets/de188c94-920e-47d7-a092-26b9de9c9946)

    Jika sudah membuat konfigurasi reverse proxy, jangan lupa untuk melakukan pengecekan konfigurasi dengan menjalankan perintah ``` sudo nginx -t ``` dan lakukan restart/reload pada nginx kita.
   ![step7](https://github.com/user-attachments/assets/3a7dd69b-66f5-4f79-8105-8ddec66fd956)

    Dikarenakan kita masih menggunakan domain custom, maka kita harus setup domain custom kita pada lokal sistem kita dengan masuk ke dalam direktori /etc/hosts, lalu masukkan ip dan domain dari VM yang menjadi server.
   ![step8](https://github.com/user-attachments/assets/86991acc-1ef1-4f10-b4ec-158ea1abd2fb)

    Lalu untuk pembuktian, kita ketikkan domain yang sudah dibuat pada browser kita. Jika masih ada error seperti gambar dibawah itu dikarenakan kita belum menjalankan aplikasi kita.
   ![step9](https://github.com/user-attachments/assets/6a00e6be-2617-4e61-aecc-95de90193443)

    Maka dari itu, kita harus melakukan clone & menjalankan aplikasi dumbflix yang sudah disediakan. Untuk langkah-langkahnya sudah ada dan bisa dilihat pada hari sebelumnya.
   ![step10](https://github.com/user-attachments/assets/b622d013-31a7-4f27-b047-cdd9421c7557)

    Jika sudah kita dapat melihat aplikasi sudah dapat berjalan dan diakses menggunakan domain virtual yang sudah kita buat.
   ![step11](https://github.com/user-attachments/assets/cea5e53f-890d-422d-9471-4c58be0634b4)

    Dan tambahkan package pm2 pada aplikasi dumbflix.
    ![step12](https://github.com/user-attachments/assets/bcc9b9de-0ff6-4792-ad91-c4ff5d8b48db)

    Terakhir, kita akan mencoba menambahkan file konfigurasi untuk ip dan domain yang berbeda pada nginx agar terlihat perbedaannya.
   ![step13](https://github.com/user-attachments/assets/3c97d34f-ae14-4d7c-97d5-762ad9094c9d)
   ![step14](https://github.com/user-attachments/assets/9a0c1ddb-dd52-43d0-9a6b-48665150c506)



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


4. Implementasikan loadbalancing kepada aplikasi dumbflix-frontend yang telah digunakan.

    Untuk membuat load balancing pada server, kita akan menambahkan beberapa konfigurasi pada file .conf yang sudah dibuat sebelumnya.
   ![lb1](https://github.com/user-attachments/assets/80f29848-92bf-4ed1-94e0-a3dd5ccfed94)

    Disini fungsi dari upstream yaitu untuk menampung beberapa ip aplikasi yang nantinya akan dijalankan dan penamaan proxy_pass diganti dengan nama dari upstream.
   ![lb2](https://github.com/user-attachments/assets/8cedd1fe-1a06-4c94-8b8f-62de81d5aa40)

    Jika sebelumnya kita sudah clone aplikasi dumbflix pada app1, maka untuk melakukan uji coba load balacing diharuskan untuk clone aplikasi dumbflix juga untuk app2.
   ![lb3](https://github.com/user-attachments/assets/edd962bd-e01f-4917-8359-1f59d3ebc5fb)

    Lalu jangan lupa untuk melakukan pengecekan konfigurasi kembali dengan menjalankan perintah ``` sudo nginx -t ``` dan lakukan restart/reload pada nginx kita.
   ![lb4](https://github.com/user-attachments/assets/0da80dde-ddc8-46ad-8c3c-dedc9958f204)

    Setelah itu coba jalankan kedua aplikasi kita dengan menggunakan package pm2.
   ![lb5](https://github.com/user-attachments/assets/352e7fd6-3fe1-4a08-9e77-9b9b6d8ae210)

    Jika sudah sekarang kita coba buka browser dan akses nama domain yang sudah dibuat.
   ![lb6](https://github.com/user-attachments/assets/417303f1-aed1-4eb7-bbf8-11110b91c4a9)

    Lalu kita coba apakah load balancing sudah berjalan dengan baik atau belum dengan cara mematikan salah satu server aplikasi kita.
   ![lb7](https://github.com/user-attachments/assets/487c4d27-8e83-486b-8dd9-7ac3f90351f3)

    Sekarang kita coba akses kembali pada browser apakah domain masih bisa berjalan atau mati.
   ![lb8](https://github.com/user-attachments/assets/dcd30d50-60e6-4e18-813e-c70c8ecde428)

