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
   ![task1](https://github.com/user-attachments/assets/4f2ab9c0-b510-4095-8247-cb426af00c0c)

3. Disini saya menggunakan ansible roles dengan menjalankan perintah ``` ansible-galaxy role init Ansible ``` maka akan otomatis dibuatkan struktur dari penggunaan roles pada ansible.

   ![task2](https://github.com/user-attachments/assets/fd711430-41c4-469a-9d48-537ae34be617)

5. Selanjutnya lakukan konfigurasi ansible environment yang ada pada file berikut.
   - Inventory

     ![task3](https://github.com/user-attachments/assets/a1303323-b5a3-4da9-b158-d0ed93527286)

   - ansible.cfg

     ![task4](https://github.com/user-attachments/assets/1d525500-7577-47df-8c5e-c68caf97f8b2)

   - group_vars/all
     ![task5](https://github.com/user-attachments/assets/49803264-fa3f-464d-ba69-91b01f2e183b)

6. Membuat user baru dengan menggunakan login ssh key & password
   ![task6](https://github.com/user-attachments/assets/5ec09d25-5e25-4a1c-99e8-e4fc95aa78b1)

8. Melakukan Installasi Docker dan Docker Compose
   ![task7](https://github.com/user-attachments/assets/8ef68752-d89c-4cdb-924e-1a0011cd1e0c)

10. Deploy aplikasi frontend yang sudah digunakan sebelumnya menggunakan ansible.
    ![task8](https://github.com/user-attachments/assets/2ae7781a-cb07-48c6-af07-d3de08000375)

12. Installasi monitoring server (node exporter, prometheus, grafana)
    ![task9](https://github.com/user-attachments/assets/64c92383-7973-4601-b563-97662590ce12)

14. Setup reverse proxy dan generate SSL sertifikat
    ![task10](https://github.com/user-attachments/assets/f06d9d2e-bf76-4c6c-9e64-ff067eab6ec5)
    ![task11](https://github.com/user-attachments/assets/d76cbeb5-7840-4c4e-9d6e-0ee3836166be)

16. Terakhir jalankan seluruh konfigurasi yang sudah dibuat pada 1 file yaitu file debug.yml
    ![task12](https://github.com/user-attachments/assets/cc432d7d-1241-4cf4-af01-4d7aecd76bdc)

18. Jika kita sudah selesai membuat konfigurasi pada ansible, kita dapat menggunakan beberapa perintah dengan urutan seperti dibawah ini
    ```
        ansible-playbook --syntax-check debug.yaml
        ansible-playbook debug.yaml
    ```
