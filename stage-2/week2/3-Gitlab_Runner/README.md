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
   ![work1](https://github.com/user-attachments/assets/7020f50c-7582-4baa-b5f6-f82763d320a2)

2. Buatlah repository baru di GitLab untuk menampung kode sumber aplikasi dan memfasilitasi manajemen proyek secara terpusat.
   ![work2](https://github.com/user-attachments/assets/40164ff4-d0b7-4ac5-8fe6-1125698c38c4)

3. Navigasikan ke direktori yang berisi kode sumber aplikasi (Frontend dan Backend) di server untuk memastikan bahwa Anda berada di repositori yang benar.
4. Menambahkan remote GitLab ke repositori lokal di server dengan perintah git remote add origin [URL GitLab] untuk menghubungkan repositori lokal dengan GitLab.
   ![work3](https://github.com/user-attachments/assets/2bcf16c1-1c08-4fd1-a525-941f0e15989e)

5. Buatlah file ".gitlab-ci.yaml" untuk melakukan GItlab Runner.
   ![work4](https://github.com/user-attachments/assets/2be05aea-d20d-4a5b-8380-19a32ffb887c)
   ![work5](https://github.com/user-attachments/assets/c229f6ee-970c-4ec3-939e-762b04dbd588)
   ![work6](https://github.com/user-attachments/assets/fade98d0-1e6f-48d4-a1c7-0f531038a122)

6. Masuk ke settings -> CI/CD -> Tambahkan variable: Pada halaman repository di GitLab, masuk ke bagian "Settings", kemudian ke "CI/CD" dan tambahkan variabel-variabel yang diperlukan untuk konfigurasi Continuous Integration dan Continuous Deployment (CI/CD).
7. Masuk ke settings -> Integrations -> Tambahkan Discord Notifier: Di halaman repository di GitLab, masuk ke "Settings", kemudian ke "Integrations", dan tambahkan integrasi Discord Notifier untuk menerima notifikasi langsung ke server Discord terkait.
    ![work7](https://github.com/user-attachments/assets/dc3fcb5d-062e-4c3d-b00a-4ce697edc5d1)
    ![work8](https://github.com/user-attachments/assets/dd7144a7-1e76-4267-a730-5cdddb531213)

8. Pastikan Anda berada di direktori repository Backend (BE) atau Frontend (FE) pada server sebelum melanjutkan ke langkah berikutnya.
9. Lakukan operasi git push untuk mengirimkan perubahan kode ke repositori GitLab. Pastikan untuk melakukan ini pada setiap repository aplikasi.
10. Lakukan monitoring pipeline dan tunggu sampai notifikasi pada Discord muncul: Amati jalannya proses pipeline pada GitLab dan tunggu hingga notifikasi muncul pada server Discord yang telah diintegrasikan untuk mendapatkan informasi tentang status dan kemajuan proses CI/CD.
    ![work9](https://github.com/user-attachments/assets/e53c5062-16f6-4f0f-85a4-4efdce571a5d)
    ![work10](https://github.com/user-attachments/assets/7bd1d5b5-af18-4fa7-be5a-5d25394ef05c)
