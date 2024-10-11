**Docker Swarm Tasks**

1. Buatlah sebuah cluster menggunakan Docker Swarm yang berisikan minimal 3 buah node (1 master, 2 worker).

2. Deploy aplikasi yang sudah pernah kalian gunakan di materi" sebelumnya, seperti dumbflix, wayshub, literature.(pilih salah satu saja).

3. Diharapkan aplikasi bisa berjalan 100% on top Docker Swarm.

4. Untuk reverse proxy bisa menyesuaikan. Diperbolehkan menggunakan ssl dari cloudflare, maupun di generate sendiri.


**Docker Swarm Working Steps**
1. Membuat cluster menggunakan Docker Swarm yang berisikan 3 buah node (1 master, 2 worker)
   
   - Pertama-tama kita melakukan inisialisasi pada cluster yang nantinya akan generate sebuah token untuk node/server worker dengan menjalankan perintah ``` docker swarm init --advertise-addr ip_address_master ```. Jika kita ingin generate token kembali kita dapat menjalankan perintah ``` docker swarm join-token manager ```.
     ![task1](https://github.com/user-attachments/assets/ac5b795f-0ce1-4eab-a8c7-24fae16d324a)

   - Jika sudah dan kita ingin install UI dari Docker Swarm sendiri, maka kita dapat melihat cara installadi pada website ``` https://swarmpit.io/ ```. Hal ini harus dilakukan terlebih dahulu sebelum kita melakukan add worker pada node/server lainnya.
     ![task2](https://github.com/user-attachments/assets/a9f390da-1dd6-4c31-9d5f-a128e1e8c37c)

   - Setelah selesai kita dapat melakukan add worker pada cluster yang sudah kita buat. Dengan cara memasukkan command generate token yang sudah kita dapatkan sebelumnya dan copy command tersebut kepada server-server yang akan menjadi worker.
     ![task3](https://github.com/user-attachments/assets/7d55e342-d4ff-48d3-91f9-64632c238c73)

   - Jika sudah terbuat kita dapat melihat seluruh node yang ada pada cluster dengan menjalankan perintah ``` docker node ls ```.


2. Deploy aplikasi yang sudah pernah digunakan (wayshub)

   - Pertama kita membuat sebuah direktori bernama compose-collection yang akan berisikan file untuk deploy frontend, backend, database dan web server (nginx).
     ![task4](https://github.com/user-attachments/assets/b2190913-666b-4f5e-a6c8-deb377db900a)

   - Lakukan deploy untuk database terlebih dahulu dengan membuat file docker compose seperti dibawah ini. Setelah itu jalankan dengan menjalankan perintah ``` docker stack deploy --compose-file compose.yaml wayshub ```.
     ![task5](https://github.com/user-attachments/assets/05f9a52d-ef31-4057-aed7-7eeee691f546)

   - Kita cek kembali apakah service database yang sudah kita deploy berjalan atau belum dengan menjalankan perintah ``` docker service ls ```.
     ![task6](https://github.com/user-attachments/assets/88bb528d-78f0-4a2a-82c3-f2bf219cb3ae)

   - Sebelum melakukan deploy aplikasi backend dan frontend. Kita jangan lupa untuk melakukan sedikit konfigurasi pada file dalam repository backend maupun frontend.

   - Setelah melakukan konfigurasi, kita akan membuat images terlebih dahulu untuk frontend maupun backend dengan cara membuat file Dockerfile terlebih dahulu lalu jalankan dengan perintah ``` docker buildx build --no-cache -t crocoxolen/fe-swarm:latest . ``` untuk images fe dan jalankan perintah ``` docker buildx build --no-cache -t crocoxolen/be-swarm:latest . ``` untuk images be. Jalankan perintah tersebut dalam folder yang sesuai. Setelah itu kita cek dengan menjalankan perintah ``` docker images ```.
     ![task7](https://github.com/user-attachments/assets/ac1aae6f-c899-4fd2-a745-4f812e767f95)

   - Jika sudah kita dapat melakukan deploy untuk backend dan frontend. Dengan file docker compose dibawah ini. Lalu jalankan perintah ``` docker stack deploy --compose-file compose.yaml wayshub ```.
     ![task8](https://github.com/user-attachments/assets/3d63acbb-29a3-4d85-be62-d09eccf622d8)
     ![task9](https://github.com/user-attachments/assets/febe2a61-49f7-4bf1-af0d-b41108c9ab67)

   - Kita cek apakah frontend dan backend sudah dapat berjalan pada browser kita.
     ![task10](https://github.com/user-attachments/assets/139f84f3-2f80-42b4-9f7a-705607999e23)
     ![task11](https://github.com/user-attachments/assets/afccc983-ff61-4958-9dc4-1e9e752029f2)




3. Aplikasi berjalan 100% pada Docker Swarm
   ![task12](https://github.com/user-attachments/assets/988140e8-825c-458a-bc5e-9a07c92d0b05)
   ![task13](https://github.com/user-attachments/assets/3b36df02-7b2f-48c9-91c9-25ebf746f683)

   
4. Membuat reverse proxy menggunakan ssl dari certbot wildcard.

   - Pertama kita harus membuat direktori/folder .secrets yang berisi file cloudflare.ini terlebih dahulu untuk inisialisasi email dan api_key.

   - Jika sudah kita generate ssl sertifikat terlebih dahulu dengan mengikuti langkah-langkah dari website ``` https://certbot.eff.org/instructions?ws=nginx&os=snap&tab=wildcard ```.

   - Setelah itu kita membuat file docker compose untuk melakukan deploy pada web server nginx dan menyimpan file konfigurasi beserta kunci private kedalam kontainer yang sudah kita tentukan.
     ![task14](https://github.com/user-attachments/assets/8f4a1151-2706-4ab5-86ab-26cd40afcb91)

   - Lalu membuat konfigurasi reverse proxy. Lalu jalankan perintah ``` docker stack deploy --compose-file compose.yaml wayshub ```.
     ![task15](https://github.com/user-attachments/assets/bb48da6a-9319-498c-bdcf-0a5178072e12)

   - Jika seluruh service sudah berjalan dengan baik, maka kita dapat melihat hasilnya dengan memasukkan domain pada browser kita.
     ![task16](https://github.com/user-attachments/assets/f314a7f4-7730-4ef1-a1bc-edbfe0a61758)
     ![task17](https://github.com/user-attachments/assets/7504d674-38be-4566-86f5-f53a4557d12d)


