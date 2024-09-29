Tasks :
[ Jenkins ]
A. Implementasikan penggunaan Gitlab Runner pada aplikasi Frontend Kalian

B. Buatlah beberapa Job untuk aplikasi kalian yang telah kalian deploy di task sebelumnya (staging && production)
   1. Untuk script CICD atur flow pengupdate an aplikasi se freestyle kalian dan harus mencangkup
     - Pull dari repository
     - Dockerize/Build aplikasi kita
     - Test application
     - Push ke Docker Hub
     - Deploy aplikasi on top Docker

C. Auto trigger setiap ada perubahan di SCM

D. Buat job notification ke discord

Working Steps:

1. Tambahkan "id_rsa.pub" dari Server (VM) ke GitLab: Sertakan kunci publik "id_rsa.pub" dari server ke halaman GitLab di bagian "Preferences" -> "SSH Keys" untuk memberikan akses ke repository tanpa perlu menggunakan kata sandi.
2. Buatlah repository baru di GitLab untuk menampung kode sumber aplikasi dan memfasilitasi manajemen proyek secara terpusat.
3. Navigasikan ke direktori yang berisi kode sumber aplikasi (Frontend dan Backend) di server untuk memastikan bahwa Anda berada di repositori yang benar.
4. Menambahkan remote GitLab ke repositori lokal di server dengan perintah git remote add origin [URL GitLab] untuk menghubungkan repositori lokal dengan GitLab.
5. Buatlah file ".gitlab-ci.yaml" untuk melakukan GItlab Runner.
6. Masuk ke settings -> CI/CD -> Tambahkan variable: Pada halaman repository di GitLab, masuk ke bagian "Settings", kemudian ke "CI/CD" dan tambahkan variabel-variabel yang diperlukan untuk konfigurasi Continuous Integration dan Continuous Deployment (CI/CD).
7. Masuk ke settings -> Integrations -> Tambahkan Discord Notifier: Di halaman repository di GitLab, masuk ke "Settings", kemudian ke "Integrations", dan tambahkan integrasi Discord Notifier untuk menerima notifikasi langsung ke server Discord terkait.
8. Pastikan Anda berada di direktori repository Backend (BE) atau Frontend (FE) pada server sebelum melanjutkan ke langkah berikutnya.
9. Lakukan operasi git push untuk mengirimkan perubahan kode ke repositori GitLab. Pastikan untuk melakukan ini pada setiap repository aplikasi.
10. Lakukan monitoring pipeline dan tunggu sampai notifikasi pada Discord muncul: Amati jalannya proses pipeline pada GitLab dan tunggu hingga notifikasi muncul pada server Discord yang telah diintegrasikan untuk mendapatkan informasi tentang status dan kemajuan proses CI/CD.
