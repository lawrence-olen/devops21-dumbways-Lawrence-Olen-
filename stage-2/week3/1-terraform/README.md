# H1
Task:
### H3
1. Dengan mendaftar akun free tier AWS/GCP/Azure, buatlah Infrastructre dengan terraform menggunakan registry yang sudah ada. dengan beberapa aturan berikut :
   - Buatlah 2 buah server dengan OS ubuntu 24 dan debian 11 (Untuk spec menyesuaikan)
   - attach vpc ke dalam server tersebut
   - attach ip static ke vm yang telah kalian buat
   - pasang firewall ke dalam server kalian dengan rule {allow all ip(0.0.0.0/0)}
   - buatlah 2 block storage di dalam terraform kalian, lalu attach block storage tersebut ke dalam server yang ingin kalian buat. (pasang 1 ke server ubuntu dan  1 di server debian)
   - test ssh ke server

2. Buat terraform code kalian serapi mungkin

# H1
Working Steps
### H3
1. Disini saya menggunakan akun free tier dari Google Cloud Provider (GCP).
   
2. Sebelum kita membuat server menggunakan terraform, ada baiknya kita melihat dokumentasi resmi untuk melihat penggunaan terraform.
   ``` https://registry.terraform.io/providers/hashicorp/google/latest ``` Berikut adalah link untuk dapat melihat dokumentasi resmi.

3. Lalu lakukan installasi terraform pada terminal lokal kita dengan mengikuti langkah-langkah dari ``` https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli ```.
   Jika sudah terinstall kita dapat mengeceknya dengan menggunakan perintah ``` terraform --version ```

4. Pertama-tama jika kita menggunakan GCP, kita diharuskan untuk mengakses service account untuk membuat file key.json
   File ini merupakan kredensial key agar dapat terhubung dengan GCP Account kita.

5. Setelah itu kita akan membuat file providers.tf
   File ini akan mendefinisikan provider/layanan cloud yang akan kita gunakan pada terraform.

6. Lalu membuat file ssh_key.pub.
   File ini berisi kunci publik yang akan digunakan oleh otentikasi SSH pada VM.

7. Setelahnya kita akan membuat file variables.tf
   File ini digunakan untuk mendeklarasikan variabel yang dapat digunakan pada file apapun.

8. Lalu kita juga dapat membuat file terraform.tfvars
   File ini digunakan untuk mendefinisikan nilai pada file variabel.tf

9. Lalu ada file output.tf (opsional)
   File ini digunakan untuk melihat output yang diinginkan seperti IP Publik, ataupun sumber daya lainnya.

10. Dan yang terakhir kita membuat file main.tf
    File utama yang digunakan untuk konfigurasi terraform, disini kita akan mengelola seluruh projek terraform yang diinginkan.

11. Jika kita sudah selesai membuat konfigurasi, kita dapat menggunakan beberapa perintah dengan urutan seperti dibawah ini
    ```
        terraform init
        terraform validate
        terraform plan
        terraform apply
    ```

12. Membuat 2 buah server dengan OS ubuntu 24 dan debian 11

13. Melakukan attach vpc ke dalam server

14. Melakukan attach ip static ke vm

15. Memasang firewall ke dalam server dengan rule {allow all ip(0.0.0.0/0)}

16. Membuat 2 block storage di dalam terraform

17. Testing ssh ke server

18. Hasil dalam VM Machine di GCP