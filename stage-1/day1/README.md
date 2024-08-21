1. Apa itu DevOps?

DevOps merupakan singkatan dari 2 kata yaitu Development dan Operation. DevOps sendiri merupakan sebuah prinsip developer untuk mengkoordinasikan antar tim yaitu tim development dengan tim operation agar berjalan dengan efektif dan efisien.
Tugas utamanya adalah untuk meningkatkan efisiensi dan responsifitas dalam pengembangan sistem, meminimalisir human error, pengujian, dan pengelolaan perangkat lunak.

Manfaat DevOps:
```
1. Kecepatan
   Dapat melakukan inovasi untuk pelanggan lebih cepat, beradaptasi dengan lebih baik di lingkungan, dan menjadi lebih efisien dalam mendorong hasil bisnis.

2. Pengiriman Cepat
   Memungkinkan perubahan perangkat lunak untuk diimplementasikan dengan cepat dan konsisten

3. Keandalan
   Dapat memastikan kualitas dan pembaruan perangkat lunak dengan sangat handal dan mempertahankan pengalaman positif bagi pengguna akhir.

4. Skala
   Dapat mengoperasikan seluruh proses pengembangan dalam skala apapun (kecil maupun besar).

5. Kolaborasi
   Mengatasi kesenjangan antara tim pengembangan dan operasional, meningkatkan kolaborasi, dan mempercepat penyelesaian masalah.

6. Keamanan
   Dapat mempertahankan kendali, menjaga keamanan, dan kontrol yang menyeluruh pada perangkat lunak.
```

2. Buatlah 1 Virtual Machine!  

      Dikarenakan saya menggunakan OS (Sistem Operasi) linux pada perangkat kerja, maka saya akan membuat virtual machine menggunakan Multipass melalui shell maupun GUI.

   **A. GUI**

   Langkah pertama yaitu kita install aplikasi multipass di app center yang sudah tersedia pada sistem operasi linux.
   ![step1](https://github.com/user-attachments/assets/931b6775-2fe0-4a8e-9e4d-aca4f6ac9f73)

   Langkah kedua yaitu buka app multipass yang sudah kita install sebelumnya, lalu klik launch pada version yang kita inginkan.
   ![step2](https://github.com/user-attachments/assets/8f5c1fee-1145-41c1-88f7-49901edb23d1)

   Langkah ketiga yaitu menunggu inisialisasi virtual mesin hingga selesai, apabila sudah selesai maka virtual mesin dapat digunakan.
   ![step3](https://github.com/user-attachments/assets/65e1e017-b76d-4fc0-a014-957ea762dc73)

   Langkah keempat, disini kita dapat menjalankan serta memberhentikan virtual mesin yang sudah kita buat sebelumnya.
   ![step4](https://github.com/user-attachments/assets/17b43a41-e5a5-460a-a33d-eda44cfcad5c)

   Terakhir, kita akhirnya dapat menggunakan virtual mesin baru yang sudah dibuat.
   ![step5](https://github.com/user-attachments/assets/d75d0620-a3db-4563-8eb1-bfedbd314d5d)


   **B. SHELL**

   Langkah pertama yaitu kita harus memastikan apakah multipass sudah terpasang atau belum pada lokal kita dengan cara mengetikkan
   ```sudo snap install multipass```.
   Contoh dibawah ini adalah hasil apabila multipass sudah terpasang.
   ![step1](https://github.com/user-attachments/assets/03f4c65e-6f9f-4a2f-a998-5223c8b7e0de)

   Langkah kedua yaitu kita membuat virtual mesin yang baru dengan nama drogba dengan menggunakan multipass.
   ![step2](https://github.com/user-attachments/assets/6432ae2b-d76b-4063-a59d-5fe0eef73f37)

   Langkah ketiga kita lihat terlebih dahulu apakah virtual mesin yang sudah dibuat ada atau tidak dengan mengetikkan ```multipass ls```.
   ![step3](https://github.com/user-attachments/assets/76cb733b-d2a3-421c-a511-06e81d349835)

   Terakhir, kita masuk dan menjalankan virtual mesin dengan nama drogba yang sudah kita buat sebelumnya.
   ![step4](https://github.com/user-attachments/assets/70765bd9-22e0-46ff-8f30-0079dab466fb)
   

3. Install nginx WebServer ke dalam VM yang sudah dibuat!
