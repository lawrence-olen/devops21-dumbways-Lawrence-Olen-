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
3. Jelaskan apa itu load balance.
4. Implementasikan loadbalancing kepada aplikasi dumbflix-frontend yang telah digunakan.
