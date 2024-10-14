**Kubernetes Tasks**

1. Buatlah sebuah kubernetes cluster, yang di dalamnya terdapat 3 buah node as a master and worker.

2. Install ingress nginx using helm or manifest

3. Deploy aplikasi yang kalian gunakan di docker swarm, ke dalam kubernetes cluster yang terlah kalian buat di point nomer 1.

4. Setup persistent volume untuk database kalian

5. Deploy database mysql with statefullset and use secrets

6. Install cert-manager ke kubernetes cluster kalian, lalu buat lah wildcard ssl certificate.

7. Ingress 
   - fe : name.kubernetes.studentdumbways.my.id
   - be : api.name.kubernetes.studentdumbways.my.id


**Kubernetes Working Steps**

1. Membuat sebuah kubernetes cluster yang berisikan 3 buah node (1 master, 2 worker)
   - Pertama-tama kita melakukan installasi kubernetes menggunakan k3s lightweight dengan melihat dari dokumentasi yang sudah diberikan sebelumnya ``` https://github.com/RizqyAlvindra/kubernetes/blob/master/k3s/README.MD ```.
   - Lakukanlah installasi dan setup awal nodes master dari root server.
   - Jika sudah kita dapat membuat sebuah cluster dengan para node worker dengan menggunakan ip address dari master dan juga token khusus dari master node.
   - Jika sudah terbuat kita dapat melihat seluruh node yang ada pada cluster dengan menjalankan perintah ``` kubectl get nodes ```


2. Install ingress nginx menggunakan helm
      - Sebelumnya kita install package manager helm terlebih dahulu dengan melihat dokumentasi yang ada ``` https://helm.sh/docs/intro/install/ ```.
      - Berikutnya kita lakukan installasi nginx ingress dengan mengikuti langkah-langkah pada dokumentasi yang ada ``` https://docs.nginx.com/nginx-ingress-controller/installation/installing-nic/installation-with-helm/ ```.
      ```
        # Pull Repository Helm
        helm pull oci://ghcr.io/nginxinc/charts/nginx-ingress --untar --version 1.4.0

        # Change working directory
        cd nginx-ingress

        # Install Nginx Ingress
        helm install -n your_namespace ingress-nginx .

        # verifikasi 
        kubectl get pods --namespace your_namespace
      ```
      - Cek pada browser apakah berjalan atau tidak.


3. Deploy aplikasi yang sudah pernah digunakan (wayshub).
   A. Database
      - Membuat Storage Class untuk mengelola penyimpanan persistent volume untuk Database terlebih dahulu.
      - Setelah itu membuat file secret.yaml untuk menampung seluruh environment yang akan dibutuhkan.
      - Jangan lupa terakhir kita harus membuat konfigurasi dengan resources statefulset. Buatlah pvc di dalam konfigurasi tersebut dan masukan juga storage class yang sudah dibuat sebelumnya.
      - Lakukan verifikasi terhadap database yang sudah kita deploy dengan menjalankan perintah ``` kubectl get all -n wayshub ```

   B. Backend
      - Membuat konfigurasi backend dengan menggunakan image yang sudah dibuat sebelumnya pada lokal terminal dan sudah di push kedalam docker hub.
      - Lakukan verifikasi terhadap backend yang sudah kita deploy dengan menjalankan perintah ``` kubectl get all -n wayshub ```

   C. Frontend
      - Membuat konfigurasi frontend dengan menggunakan image yang sudah dibuat sebelumnya pada lokal terminal dan sudah di push kedalam docker hub.
      - Lakukan verifikasi terhadap frontend yang sudah kita deploy dengan menjalankan perintah ``` kubectl get all -n wayshub ```

   D. Checking Deployment


4. Install cert-manager dan membuat wildcard ssl certificate
   - Lakukan installasi cert-manager terlebih dahulu menggunakan helm dan dapat dilihat pada dokumentasi yang ada ``` https://cert-manager.io/docs/installation/helm/ ```.
   - Membuat secret untuk menampung DNS Cloudflare Api Token.
   - Membuat issuer yang bertanggung jawab untuk menentukan bagaimana sertifikat ssl akan diterbitkan.
   - Membuat certificate untuk mendapatkan ssl wildcard certificate.
   - Cek apakah semuanya sudah berjalan atau belum dengan menjalankan perintah ``` kubectl get secret -n wayshub ```

5. Ingress nginx pada frontend dan backend
   - Membuat konfigurasi ingress pada backend
   - Membuat konfigurasi ingress pada frontend
   - Cek apakah semuanya sudah berjalan atau belum dengan menjalankan perintah ``` kubectl get all -n wayshub ```
   - Cek pada browser kita apakah sudah dapat berjalan dengan baik atau belum.