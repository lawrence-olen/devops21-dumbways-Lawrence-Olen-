**Docker Swarm Tasks**

1. Buatlah sebuah cluster menggunakan Docker Swarm yang berisikan minimal 3 buah node (1 master, 2 worker).

2. Deploy aplikasi yang sudah pernah kalian gunakan di materi" sebelumnya, seperti dumbflix, wayshub, literature.(pilih salah satu saja).

3. Diharapkan aplikasi bisa berjalan 100% on top Docker Swarm.

4. Untuk reverse proxy bisa menyesuaikan. Diperbolehkan menggunakan ssl dari cloudflare, maupun di generate sendiri.


**Docker Swarm Working Steps**
1. Membuat cluster menggunakan Docker Swarm yang berisikan 3 buah node (1 master, 2 worker)
   
   - Pertama-tama kita melakukan inisialisasi pada cluster yang nantinya akan generate sebuah token untuk node/server worker dengan menjalankan perintah ``` docker swarm init --advertise-addr ip_address_master ```. Jika kita ingin generate token kembali kita dapat menjalankan perintah ``` docker swarm join-token manager ```.

   - Jika sudah dan kita ingin install UI dari Docker Swarm sendiri, maka kita dapat melihat cara installadi pada website ``` https://swarmpit.io/ ```. Hal ini harus dilakukan terlebih dahulu sebelum kita melakukan add worker pada node/server lainnya.

   - Setelah selesai kita dapat melakukan add worker pada cluster yang sudah kita buat. Dengan cara memasukkan command generate token yang sudah kita dapatkan sebelumnya dan copy command tersebut kepada server-server yang akan menjadi worker.

   - Jika sudah terbuat kita dapat melihat seluruh node yang ada pada cluster dengan menjalankan perintah ``` docker node ls ```.


2. Deploy aplikasi yang sudah pernah digunakan (wayshub)

   - Pertama kita membuat sebuah direktori bernama compose-collection yang akan berisikan file untuk deploy frontend, backend, database dan web server (nginx).

   - Lakukan deploy untuk database terlebih dahulu dengan membuat file docker compose seperti dibawah ini. Setelah itu jalankan dengan menjalankan perintah ``` docker stack deploy --compose-file compose.yaml wayshub ```.

   - Kita cek kembali apakah service database yang sudah kita deploy berjalan atau belum dengan menjalankan perintah ``` docker service ls ```.

   - Sebelum melakukan deploy aplikasi backend dan frontend. Kita jangan lupa untuk melakukan sedikit konfigurasi pada file dalam repository backend maupun frontend.

   - Setelah melakukan konfigurasi, kita akan membuat images terlebih dahulu untuk frontend maupun backend dengan cara membuat file Dockerfile terlebih dahulu lalu jalankan dengan perintah ``` docker buildx build --no-cache -t crocoxolen/fe-swarm:latest . ``` untuk images fe dan jalankan perintah ``` docker buildx build --no-cache -t crocoxolen/be-swarm:latest . ``` untuk images be. Jalankan perintah tersebut dalam folder yang sesuai. Setelah itu kita cek dengan menjalankan perintah ``` docker images ```.

   - Jika sudah kita dapat melakukan deploy untuk backend dan frontend. Dengan file docker compose dibawah ini. Lalu jalankan perintah ``` docker stack deploy --compose-file compose.yaml wayshub ```.

   - Kita cek apakah frontend dan backend sudah dapat berjalan pada browser kita.


3. Aplikasi berjalan 100% pada Docker Swarm

   
4. Membuat reverse proxy menggunakan ssl dari certbot wildcard.

   - Pertama kita harus membuat direktori/folder .secrets yang berisi file cloudflare.ini terlebih dahulu untuk inisialisasi email dan api_key.

   - Jika sudah kita generate ssl sertifikat terlebih dahulu dengan mengikuti langkah-langkah dari website ``` https://certbot.eff.org/instructions?ws=nginx&os=snap&tab=wildcard ```.

   - Setelah itu kita membuat file docker compose untuk melakukan deploy pada web server nginx dan menyimpan file konfigurasi beserta kunci private kedalam kontainer yang sudah kita tentukan.

   - Lalu membuat konfigurasi reverse proxy. Lalu jalankan perintah ``` docker stack deploy --compose-file compose.yaml wayshub ```.

   - Jika seluruh service sudah berjalan dengan baik, maka kita dapat melihat hasilnya dengan memasukkan domain pada browser kita.
