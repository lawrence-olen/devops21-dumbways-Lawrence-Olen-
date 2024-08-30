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

Perintah/Command Git
A. 'git init'
Digunakan untuk menginisialisasi suatu repositori Git yang baru di direktori lokal.

B. 'git clone'
Digunakan untuk kloning(menyalin) repositori dari github ke dalam komputer lokal.

C. 'git add'
Digunakan untuk menambahkan/memindahkan file dari unstage area ke stage area.

D. 'git commit'
Digunakan untuk menyimpan segala perubahan file di dalam lokal dan biasanya disertakan dengan pesan deskriptif.

E. 'git remote'
Digunakan untuk menghubungkan repositori lokal dengan repositori Git yang baru saja dibuat.

F. 'git status'
Digunakan untuk menampilkan status dari repositori lokal kita, apakah ada perubahan yang masih belum tersimpan maupun sudah tersimpan.

G. 'git log'
Digunakan untuk menampilkan riwayat commit dari repositori kita.

H. 'git push'
Digunakan untuk mengirim commit dari repositori lokal ke repositori Git.

I. 'git pull'
Digunakan untuk mengambil perubahan terbaru dari repositori Git  ke repositori lokal kita.

J. 'git branch'
Digunakan untuk mengelola branch dalam repositori Git.

K. 'git checkout'
Digunakan untuk berpindah dari satu branch ke branch yang lain.

J. 'git merge'
Digunakan untuk menggabungkan perubahan antara satu branch dengan branch lain.



4. Study Case!
