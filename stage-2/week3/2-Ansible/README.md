# Task:

Buatlah ansible untuk :
   - Membuat user baru, gunakan login ssh key & password
   - Instalasi Docker
   - Deploy application frontend yang sudah kalian gunakan sebelumnya menggunakan ansible.
   - Instalasi Monitoring Server (node exporter, prometheus, grafana)
   - Setup reverse-proxy
   - Generated SSL certificate


# Working Steps

1. Pertama kita melakukan installasi ansible pada terminal lokal kita dengan mengikuti langka-langkah dari ``` https://docs.ansible.com/ansible/latest/installation_guide/installation_distros.html ```
    Jika sudah terinstall kita dapat mengeceknya dengan menggunakan perintah ``` ansible --version ```

2. Disini saya menggunakan ansible roles dengan menjalankan perintah ``` ansible-galaxy role init Ansible ``` maka akan otomatis dibuatkan struktur dari penggunaan roles pada ansible.

3. Selanjutnya lakukan konfigurasi ansible environment yang ada pada file berikut.
   - Inventory

   - ansible.cfg

   - group_vars/all

4. Membuat user baru dengan menggunakan login ssh key & password
   
5. Melakukan Installasi Docker dan Docker Compose

6. Deploy aplikasi frontend yang sudah digunakan sebelumnya menggunakan ansible.

7. Installasi monitoring server (node exporter, prometheus, grafana)

8. Setup reverse proxy dan generate SSL sertifikat

9. Terakhir jalankan seluruh konfigurasi yang sudah dibuat pada 1 file yaitu file debug.yml

10. Jika kita sudah selesai membuat konfigurasi pada ansible, kita dapat menggunakan beberapa perintah dengan urutan seperti dibawah ini
    ```
        ansible-playbook --syntax-check debug.yaml
        ansible-playbook debug.yaml
    ```