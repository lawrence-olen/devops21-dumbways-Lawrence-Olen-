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
     ![task1](https://github.com/user-attachments/assets/157f1aaf-ced7-4eb2-8e11-f92fd2ba6d4c)

   - Jika sudah kita dapat membuat sebuah cluster dengan para node worker dengan menggunakan ip address dari master dan juga token khusus dari master node.
     ![task2](https://github.com/user-attachments/assets/2fe9eeba-8b65-4f16-87c4-6901b0941af6)

   - Jika sudah terbuat kita dapat melihat seluruh node yang ada pada cluster dengan menjalankan perintah ``` kubectl get nodes ```


2. Install ingress nginx menggunakan helm
      - Sebelumnya kita install package manager helm terlebih dahulu dengan melihat dokumentasi yang ada ``` https://helm.sh/docs/intro/install/ ```.
        ![task3](https://github.com/user-attachments/assets/07d5e1c4-584d-4066-8f0d-a211ab29954d)

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
      ![task4](https://github.com/user-attachments/assets/ebc622a2-c11c-436c-ad75-fa0269cab908)

      - Cek pada browser apakah berjalan atau tidak.
        ![task5](https://github.com/user-attachments/assets/32738333-ffd9-4759-a301-e520666cc4ae)


3. Deploy aplikasi yang sudah pernah digunakan (wayshub).
   A. Database
      - Membuat Storage Class untuk mengelola penyimpanan persistent volume untuk Database terlebih dahulu.
        ![task6](https://github.com/user-attachments/assets/a5eb4523-9a92-4be6-a12e-3c2675bf9b5b)

      - Setelah itu membuat file secret.yaml untuk menampung seluruh environment yang akan dibutuhkan.
        ![task7](https://github.com/user-attachments/assets/d33352a2-3ce8-4d9c-8b64-6c41796890bb)

      - Jangan lupa terakhir kita harus membuat konfigurasi dengan resources statefulset. Buatlah pvc di dalam konfigurasi tersebut dan masukan juga storage class yang sudah dibuat sebelumnya.
        ![task8](https://github.com/user-attachments/assets/a663c272-71b7-454a-b2fe-ef73ea59cec3)
        ![task9](https://github.com/user-attachments/assets/c7b621c0-115a-4b46-ad67-7bd9277ce10d)

      - Lakukan verifikasi terhadap database yang sudah kita deploy dengan menjalankan perintah ``` kubectl get all -n wayshub ```

   B. Backend
      - Membuat konfigurasi backend dengan menggunakan image yang sudah dibuat sebelumnya pada lokal terminal dan sudah di push kedalam docker hub.

        ![task10](https://github.com/user-attachments/assets/bb973586-ee5a-4ea4-bf17-bf023bb99a9f)

      - Lakukan verifikasi terhadap backend yang sudah kita deploy dengan menjalankan perintah ``` kubectl get all -n wayshub ```

   C. Frontend
      - Membuat konfigurasi frontend dengan menggunakan image yang sudah dibuat sebelumnya pada lokal terminal dan sudah di push kedalam docker hub.

        ![task11](https://github.com/user-attachments/assets/f66df692-e54a-40c5-b981-fe3ef7482e6d)

      - Lakukan verifikasi terhadap frontend yang sudah kita deploy dengan menjalankan perintah ``` kubectl get all -n wayshub ```

   D. Checking Deployment
   ![task12](https://github.com/user-attachments/assets/2456d0c0-8115-43f0-bbd7-1e1c0eaab7b3)


4. Install cert-manager dan membuat wildcard ssl certificate
   - Lakukan installasi cert-manager terlebih dahulu menggunakan helm dan dapat dilihat pada dokumentasi yang ada ``` https://cert-manager.io/docs/installation/helm/ ```.
   - Membuat secret untuk menampung DNS Cloudflare Api Token.
     ![task13](https://github.com/user-attachments/assets/9e45c00c-64a9-462d-8909-52ce881ae97f)

   - Membuat issuer yang bertanggung jawab untuk menentukan bagaimana sertifikat ssl akan diterbitkan.
     ![task14](https://github.com/user-attachments/assets/7c5ba251-aa35-4f76-87da-69898af52f3e)

   - Membuat certificate untuk mendapatkan ssl wildcard certificate.
     ![task15](https://github.com/user-attachments/assets/3b4b741d-b434-4833-927b-f83bb48a7a81)

   - Cek apakah semuanya sudah berjalan atau belum dengan menjalankan perintah ``` kubectl get secret -n wayshub ```.

5. Ingress nginx pada frontend dan backend
   - Membuat konfigurasi ingress pada backend

     ![task16](https://github.com/user-attachments/assets/c33485e3-f5c0-448f-a983-a1c2e32025a3)

   - Membuat konfigurasi ingress pada frontend

     ![task17](https://github.com/user-attachments/assets/17190599-8a9f-4800-8f72-f55d049f540f)

   - Cek apakah semuanya sudah berjalan atau belum dengan menjalankan perintah ``` kubectl get all -n wayshub ```
   - Cek pada browser kita apakah sudah dapat berjalan dengan baik atau belum.
     ![task18](https://github.com/user-attachments/assets/496e93b2-86fb-498d-b13d-3753e87d779c)
     ![task19](https://github.com/user-attachments/assets/03a4c8e0-7428-46d0-9505-0f93c9923316)
     ![task20](https://github.com/user-attachments/assets/11e7bd9e-4cae-4d4d-80f2-03ba6b812bba)


