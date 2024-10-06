# Task:

1. Dengan mendaftar akun free tier AWS/GCP/Azure, buatlah Infrastructre dengan terraform menggunakan registry yang sudah ada. dengan beberapa aturan berikut :
   - Buatlah 2 buah server dengan OS ubuntu 24 dan debian 11 (Untuk spec menyesuaikan)
   - attach vpc ke dalam server tersebut
   - attach ip static ke vm yang telah kalian buat
   - pasang firewall ke dalam server kalian dengan rule {allow all ip(0.0.0.0/0)}
   - buatlah 2 block storage di dalam terraform kalian, lalu attach block storage tersebut ke dalam server yang ingin kalian buat. (pasang 1 ke server ubuntu dan  1 di server debian)
   - test ssh ke server

2. Buat terraform code kalian serapi mungkin

# Working Steps

1. Disini saya menggunakan akun free tier dari Google Cloud Provider (GCP).
   ![task1](https://github.com/user-attachments/assets/88cd23e0-8027-4b76-8c43-0ce130bd89c0)
   
2. Sebelum kita membuat server menggunakan terraform, ada baiknya kita melihat dokumentasi resmi untuk melihat penggunaan terraform.
   ``` https://registry.terraform.io/providers/hashicorp/google/latest ``` Berikut adalah link untuk dapat melihat dokumentasi resmi.

3. Lalu lakukan installasi terraform pada terminal lokal kita dengan mengikuti langkah-langkah dari ``` https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli ```.
   Jika sudah terinstall kita dapat mengeceknya dengan menggunakan perintah ``` terraform --version ```
   ![task2](https://github.com/user-attachments/assets/35d2cd74-9fe3-46f9-99e9-fd4805281ce2)

4. Pertama-tama jika kita menggunakan GCP, kita diharuskan untuk mengakses service account untuk membuat file key.json
   File ini merupakan kredensial key agar dapat terhubung dengan GCP Account kita.

5. Setelah itu kita akan membuat file providers.tf
   File ini akan mendefinisikan provider/layanan cloud yang akan kita gunakan pada terraform.

   ![task3](https://github.com/user-attachments/assets/cd706389-3d6d-4c13-9bd8-bed75249bc0b)

6. Lalu membuat file ssh_key.pub.
   File ini berisi kunci publik yang akan digunakan oleh otentikasi SSH pada VM.

7. Setelahnya kita akan membuat file variables.tf
   File ini digunakan untuk mendeklarasikan variabel yang dapat digunakan pada file apapun.

   ![task4](https://github.com/user-attachments/assets/c158c91c-73d0-4600-ac3a-8acc46ed5578)

8. Lalu kita juga dapat membuat file terraform.tfvars
   File ini digunakan untuk mendefinisikan nilai pada file variabel.tf
   ![task5](https://github.com/user-attachments/assets/a4c66702-7e5b-4e25-a3e2-6e7d74f243ca)

9. Lalu ada file output.tf (opsional)
   File ini digunakan untuk melihat output yang diinginkan seperti IP Publik, ataupun sumber daya lainnya.

      ![task6](https://github.com/user-attachments/assets/c7f72a5f-65c4-4f8c-acaf-982f8a217b9f)

10. Dan yang terakhir kita membuat file main.tf
    File utama yang digunakan untuk konfigurasi terraform, disini kita akan mengelola seluruh projek terraform yang diinginkan.
   ![task7](https://github.com/user-attachments/assets/c9bbc8cf-5dbd-4afc-be7b-b34a22b622a7)

11. Jika kita sudah selesai membuat konfigurasi, kita dapat menggunakan beberapa perintah dengan urutan seperti dibawah ini
    ```
        terraform init
        terraform validate
        terraform plan
        terraform apply
    ```

12. Membuat 2 buah server dengan OS ubuntu 24 dan debian 11
    ![task8](https://github.com/user-attachments/assets/c9d4f9e2-f701-47ae-836d-9c83b99172ad)

13. Melakukan attach vpc ke dalam server

    ![task9](https://github.com/user-attachments/assets/9d279c58-ba30-47ce-85ce-e066a7d712fa)

14. Melakukan attach ip static ke vm

    ![task10](https://github.com/user-attachments/assets/7de1ce7c-8877-48ef-b008-fa46f1649207)

15. Memasang firewall ke dalam server dengan rule {allow all ip(0.0.0.0/0)}
    ![task11](https://github.com/user-attachments/assets/64998360-5d91-40dc-b406-e04c542049cd)

16. Membuat 2 block storage di dalam terraform

    ![task12](https://github.com/user-attachments/assets/ec7861b3-1f61-402b-a4b0-d45ca9503cd3)

17. Testing ssh ke server

    ![task14](https://github.com/user-attachments/assets/dd89afcf-1c76-462e-88c9-6ea7c1361b78)

18. Hasil dalam VM Machine di GCP
    ![task13](https://github.com/user-attachments/assets/41265696-5a12-4d07-8ceb-5c1ca9a936db)
