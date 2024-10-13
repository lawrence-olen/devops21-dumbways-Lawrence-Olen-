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
2. Install ingress nginx menggunakan helm
3. Deploy aplikasi yang sudah pernah digunakan (wayshub)
4. Setup persistent volume untuk database
5. Deploy mysql menggunakan stateful dan secrets
6. Install cert-manager dan membuat wildcard ssl certificate
7. Ingress nginx pada frontend dan backend