1. Jelaskan apa perbandingan antara Application Monolith & Application Microservices.

    Aplikasi Monolith merupakan model pengembangan perangkat lunak yang menggunakan satu basis kode yang sama untuk menjalankan beberapa fungsi dan memiiki sifat yang terbatas karena perubahan kecil akan berdampak pada area basis kode yang luas.

   Aplikasi Microservice merupakan model pengembangan yang menyusun perangkat lunak menjadi komponen (layanan) independen yang kecil sehingga dapat memperbarui, memodifikasi, atau menskalakan setiap layanan sesuai kebutuhan.
    
    Berikut beberapa contoh aspek perbandingan yang ada:
    
    **A. Arsitektur**
    ```
    Monolith: Aplikasi tunggal yang semua fungsinya terintegrasi ke dalam satu kode basis besar.
    
    Microservice: Aplikasi yang terdiri dari serangkaian layanan kecil dan independen yang masing-masing bertanggung jawab atas satu bagian dari fungsionalitas aplikasi.
    ```
    
    **B. Pengembangan**
    ```
    Monolith: Lebih mudah dimulai karena tidak banyak memerlukan perencanaan awal. Namun aplikasi dapat menjadi kompleks dan menantang untuk diperbarui.
    
    Microservice: Membutuhkan lebih banyak perencanaan dan desain sebelum dimulai. Dapat menemukan bug lebih cepat dan kemampuan kode juga meningkat seiring waktu.
    ```
    
    **C. Deployment**
    ```
    Monolith: Lebih mudah karena hanya menginstal seluruh basis kode dan dependensi aplikasi dalam satu lingkungan tunggal.
    
    Microservice: Lebih kompleks karena setiap layanan mikro adalah paket perangkat lunak dengan deployment independen.
    ```
    
    **D. Pemeliharaan**
    ```
    Monolith: Seiring bertambahnya ukuran aplikasi, maka menjadi sulit untuk dipelihara karena kompleksitas yang semakin besar.
    
    Microservice: Karena layanan dipisah, maka pemeliharaan lebih mudah untuk dilakukan.
    ```
    
    **E. Keamanan**
    ```
    Monolith: Keamanan diterapkan secara terpusat, tetapi setiap celah keamanan dapat beresiko bagi seluruh aplikasi.
    
    Microservice: Keamanan diisolasi ke tiap layanan yang ada. Akan tetapi, lebih banyak titik celah potensial yang harus diamankan.
    ```


2. Deploy Aplikasi dumbflix-frontend (NodeJS).

    Sebelum melakukan deploy aplikasi yang sudah disediakan, kita terlebih dahulu harus mengecek apakah kita sudah menginstall npm & nvm pada lokal kita. Itu dikarenakan aplikasi ini menggunakan node runtime environment.
   ![step1](https://github.com/user-attachments/assets/f25fd1ea-298b-430f-8dbd-b07aac9729f3)
   
    **Apa itu npm & nvm?**
   
    NPM (Node Package Manager) merupakan sebuah tools (paket) javascript yang digunakan untuk mengelola dependensi (library/modul) dalam proyek Node.js.
   
    NVM (Node Version Manager) merupakan sebuah tools (paket) yang digunakan untuk mengelola berbagai versi Node.js yang terpasang di sistem.
    
    Pada case ini, saya belum memiliki tools tersebut, maka dari itu saya melakukan installasi terlebih dahulu dengan mengetikkan ``` sudo apt install npm ```.
   ![step2](https://github.com/user-attachments/assets/29fc8631-6e52-4ed6-a52b-c7bd581ce7dd)

    Tunggu installasi hingga selesai, lalu kita dapat cek apakah npm sudah terpasang atau belum dengan cara ketikkan ``` npm -v ```.
   ![step3](https://github.com/user-attachments/assets/f84d1a1a-db46-4090-83d4-c6c8e3552d9f)

    Setelah npm sudah terpasang, kita lakukan installasi kembali untuk nvm dengan cara seperti dibawah ini, lalu kita cek apakah nvm sudah terpasang atau belum dengan ketikkan ``` nvm -v ```
   ![step4](https://github.com/user-attachments/assets/9abcbfe6-5c8a-42cd-b35f-8a2ebcd98949)

    Jika sudah kita dapat melihat versi dari node.js dengan cara ``` node -v ```
    Tetapi pada task yang diberikan, kita diminta untuk menggunakan versi 14 node.js, disini kita dapat menggunakan nvm untuk melakukan perubahan terhadap versi dari node.js
   ![step5](https://github.com/user-attachments/assets/8a935245-67cc-416b-b5c9-f2128a5810cb)

    Jika langkah diatas sudah kita selesaikan, maka kita sudah bisa melakukan deploy aplikasi yang diinginkan. Sebelumnya sudah disediakan link repositori github oleh mentor.
   ![step6](https://github.com/user-attachments/assets/b975f722-e73f-46e9-886d-f3e1176bc5b1)
    
    Lalu kita clone terlebih dahulu repositori tersebut kedalam lokal kita dan masuk kedalam folder dari repositori yang sudah kita clone.
   ![step7](https://github.com/user-attachments/assets/3c740c40-e423-4663-a351-10937cad5d71)

    Setelah itu kita diharuskan untuk menginstal package (library) yang ada pada file proyek yang sudah kita clone dengan cara mengetikkan ``` npm i / npm install ```.
   ![step8](https://github.com/user-attachments/assets/8150cd98-2d50-48f3-88b6-71b4f8ee759b)

    Jika sudah akan terlihat perbedaan di dalam isi folder kita, akan ada tambahan file yang bernama node_modules (tempat penyimpanan dan pengelolaan dependensi dalam proyek Javasccript). Lalu kita coba deploy aplikasi dengan cara ketikkan ``` npm run start ```.
   ![step9](https://github.com/user-attachments/assets/882db70d-bc71-4591-b05d-5f866733d283)

    Akhirnya file proyek yang sudah kita deploy akan terlihat/tampil pada web browser kita secara otomatis atau dengan mengetikkan ``` localhost:3000 ```.
   ![step10](https://github.com/user-attachments/assets/4c58cb75-f40e-481f-86d0-ee2f849fea56)


3. Deploy Golang & Python dengan menampilkan nama masing-masing.
4. Implementasikan penggunaan PM2 agar aplikasi kalian dapat berjalan di background.

