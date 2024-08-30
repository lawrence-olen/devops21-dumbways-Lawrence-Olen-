1. Jelaskan apa itu Git?

    Git merupakan salah satu sistem pengontrol versi (Version Control System) pada proyek perangkat lunak yang diciptakan oleh Linus Torvalds. Bertugas untuk membantu kita dalam melacak ataupun mencatat setiap perubahan pada file proyek yang dikerjakan oleh banyak orang maupun sendiri.
    
    Git memungkinkan kita untuk menjaga semua versi dan revisi suatu proyek agar tetap teratur, mendukung kerja sama tim, dan membantu kita kembali ke titik awal jika ada suatu masalah. Dengan Git, kita dapat bekerja dengan aman, mengetahui semua perubahan tercatat dan dapat dikelola dengan mudah.
   

2. Gambarkan flow dari cara kerja Git seperti apa?

   ![Flow Git drawio](https://github.com/user-attachments/assets/e684f55d-6e64-496c-b362-1348e27a8d3e)


   A. Initialization Git Repository (Git Init)
   
   Untuk melakukan inisialisasi repositori git yang akan dibuat (baru).
   
    
   B. Cloning the Repository (Git Clone)

   Kita dapat menyalin setiap repositori yang tersedia dari Github ke dalam komputer lokal kita.
    

   C. Working Directory in Local Repository

   Kita dapat membuat perubahan (menulis, mengedit, menghapus) pada file repositori yang sudah kita salin atau buat baru. 
    

   D. Staging Changes (Git Add)

   Setelah membuat perubahan, kita perlu menambahkan perubahan tersebut ke dalam staging area (save file).
    

   E. Commit Changes (Git Commit)

   Setelah perubahan ada di staging area, kita dapat membuat commit untuk menambahkan pesan deskriptif tentang perubahan yang telah dibuat.
    

   F. Add Remote Repository (Git Remote Add Origin)

   Digunakan untuk menambahkan repositori jarak jauh ke dalam repositori lokal.
    

   G. Push to Remote Repository (Git Push)

   Setelah commit ataupun remote ditambahkan, kita dapat mendorong perubahan ke dalam repositori jarak jauh.
    

   H. Pull Update to Local (Git Pull)

   Digunakan jika seseorang membuat suatu perubahan pada repositori jarak jauh, maka kita bisa menarik perubahan tersebut ke dalam repositori lokal kita.
    
   I. Create Branch (Git Branch)

   Membuat beberapa cabang untuk melakukan perbaikan tertentu tanpa menggangu cabang utama.
    
   J. Merge Branch to Main (Git Merge)

   Setelah selesai melakukan perbaikan, kita dapat menggabungkan branch tersebut ke dalam cabang utama untuk menyatukan perubahan.



3. Buatlah Dokumentasi tentang command yang ada di Git!

    Command Git merupakan suatu instruksi yang digunakan untuk berinteraksi dengan sistem kontrol versi Git melalui command line.
    
    **Perintah/Command Git**

    A. 'git init'

    Digunakan untuk menginisialisasi suatu repositori Git yang baru di direktori lokal.
   ![git init](https://github.com/user-attachments/assets/d3883063-6c51-4d21-a362-d6e64c18d353)

    
    B. 'git clone'

    Digunakan untuk kloning(menyalin) repositori dari github ke dalam komputer lokal.
   ![git clone](https://github.com/user-attachments/assets/52439411-49e6-45ea-836e-0e1cf3f0e669)

    
    C. 'git add'

    Digunakan untuk menambahkan/memindahkan file dari unstage area ke stage area.
   ![git add](https://github.com/user-attachments/assets/0e665d2f-4ede-4e34-bd19-76d5fcb4707a)

    
    D. 'git commit'

    Digunakan untuk menyimpan segala perubahan file di dalam lokal dan biasanya disertakan dengan pesan deskriptif.
   ![git commit](https://github.com/user-attachments/assets/5c37cef8-df33-413a-928e-94a2683e82df)

    
    E. 'git remote'

    Digunakan untuk menghubungkan repositori lokal dengan repositori Git yang baru saja dibuat.
   ![git remote](https://github.com/user-attachments/assets/47c3d927-3077-412f-8571-b4ae17fb5e3a)


    F. 'git status'

    Digunakan untuk menampilkan status dari repositori lokal kita, apakah ada perubahan yang masih belum tersimpan maupun sudah tersimpan.
   ![git status](https://github.com/user-attachments/assets/8a5487af-340c-4cdf-b7c2-2851a50e5e87)

    
    G. 'git log'

    Digunakan untuk menampilkan riwayat commit dari repositori kita.
   ![git log](https://github.com/user-attachments/assets/9e81d5b1-71c9-4d94-8923-7609ebdc5929)

    
    H. 'git push'

    Digunakan untuk mengirim commit dari repositori lokal ke repositori Git.
   ![git push](https://github.com/user-attachments/assets/ce63f95e-b001-445e-8907-9d4f798c817d)

    
    I. 'git pull'

    Digunakan untuk mengambil perubahan terbaru dari repositori Git  ke repositori lokal kita.
   ![git pull](https://github.com/user-attachments/assets/a7f42d71-4960-4711-8333-d9ef1c016617)


    J. 'git branch'

    Digunakan untuk mengelola branch dalam repositori Git.
   ![git branch](https://github.com/user-attachments/assets/004924b7-a69d-462f-acf6-6d81e9b222ec)

    
    K. 'git checkout'

    Digunakan untuk berpindah dari satu branch ke branch yang lain.
   ![git checkout](https://github.com/user-attachments/assets/ed68dd6b-53b0-4aa7-b889-c7ce3239b435)

    
    L. 'git merge'

    Digunakan untuk menggabungkan perubahan antara satu branch dengan branch lain.
   ![git merge](https://github.com/user-attachments/assets/d7b68a77-9d73-4ddb-a9a1-f0112507fdf0)



5. Study Case!

    Case 1: Reyhan membuat perubahan pada file index.html dan commit file tersebut menggunakan sintaks 'git commit -m "fix: Typo on Description".'
   ![step1](https://github.com/user-attachments/assets/672e5db1-323a-4aa7-8313-9987de5532f8)
   ![step2](https://github.com/user-attachments/assets/b7559c2f-96fe-423b-b2af-22525369506b)

    Case 2: Teguh kebetulan juga melakukan perubahan pada index.html dan commit file menggunakan sintaks 'git commit -m "feat: Header Adjustment".'
   ![step3](https://github.com/user-attachments/assets/2b980719-93c0-44f1-89d4-e748386dbcf5)
   ![step4](https://github.com/user-attachments/assets/91c3ae23-84d9-42d2-99fb-aacae7faf497)

    Case 3: Reyhan ternyata melakukan push ke repository terlebih dahulu.
   ![step5](https://github.com/user-attachments/assets/7d64c525-3948-44fc-a454-557d845dddf1)

    Case 4: Teguh belum melakukan push, dan mencoba untuk melakukan push. Akan tetapi, karena ada perubahan baru di remote maka Git menolak push teguh dan memberi tahu bahwa ada konflik.
   ![step6](https://github.com/user-attachments/assets/da8d6068-f65b-4b76-8288-9683f2eaf734)

    Case 5: Teguh mencoba untuk melakukan pull repository tetapi fatal error.
   ![step7](https://github.com/user-attachments/assets/8b66d3b6-abb6-42ad-8312-7265ab278644)

    Case 6: Teguh mencoba untuk melakukan merge otomatis pada repository dengan mengetikkan sintaks 'git config pull.rebase false' lalu melakukan pull kembali. Tetapi konflik tersebut harus diperbaiki secara manual, sehinggan Teguh harus membuka file yang konflik.
   ![step8](https://github.com/user-attachments/assets/162f7096-c438-4ffe-ad3f-c613651b44ec)

    Case 7: Hapuslah tanda-tanda konflik, lalu simpan perubahan yang ada.
   ![step9](https://github.com/user-attachments/assets/db4ccd79-4c14-4c4c-942f-82ef23ab5ab5)

    Case 8: Jika sudah, maka lakukan staging, commit dan push kembali repository tersebut.
   ![step10](https://github.com/user-attachments/assets/4cd02505-0b54-4782-bb94-e799edb3d7d1)

    Case 9: Hasilnya akan terlihat pada repository Git, kedua teks yang dibuat oleh Reyhan dan Teguh sudah menjadi 1 bagian.
   ![step11](https://github.com/user-attachments/assets/9feea17f-8c83-479d-9118-f2f8e8402c9c)

