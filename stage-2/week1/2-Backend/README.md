Tasks:
1. Deploy Wayshub-Backend
   - Clone wayshub backend application
   - Use Node Version 14
   - Dont forget to change configuration on dumbflix-backend/config/config.json and then adjust it to your database.
   - Install sequelize-cli
   - Running migration
   - Deploy application on Top PM2

Working Steps:
1. Deploy Wayshub Backend
   - Jangan lupa untuk memasukan SSH-KEY yang menjadi gembok server kedalam akun github kita.
     ![step1](https://github.com/user-attachments/assets/3de1a4ae-6d88-4f67-ae70-8d822da4e6d4)

   - Kita clone terlebih dahulu projek dari repositori yang sudah disediakan.
     ![step2](https://github.com/user-attachments/assets/e29c73bd-ca11-4df0-b369-01623a637ef4)

   - Lalu gunakan node.js versi 14. Apabila belum memiliki package npm dan nvm, maka lakukanlah install package terlebih dahulu.
     
     ![step3](https://github.com/user-attachments/assets/a8204a2f-df6e-42b5-b179-04ecb9f383ad)

   - Melakukan import database dikarenakan sudah disediakan file .sql, tetapi apabila tidak ada kita harus migrasi data menggunakan sequelize.
     ![step4](https://github.com/user-attachments/assets/3e175f74-c2b4-4b37-b68f-a19a07e20728)

   - Jangan lupa untuk mengubah konfigurasi pada file config.json dan sesuaikan dengan database kita yang sudah dibuat.
     ![step5](https://github.com/user-attachments/assets/59a2ea4a-44ba-481d-bf7b-ae329a6da22d)

   - Install sequelize-cli di folder project apabila belum melakukan import file .sql yang sudah disediakan dan install seluruh package yang belum terinstall dengan perintah ``` npm i ```.
     ![step6](https://github.com/user-attachments/assets/51759f50-f86c-4f39-815a-913a6432487a)

   - Terakhir kita akan deploy/jalankan aplikasi wayshub backend menggunakan PM2.
     ![step7](https://github.com/user-attachments/assets/25242aaf-e722-4793-92c9-81843e04f090)

   - Lalu cek backend tersebut pada web browser apakah berjalan atau tidak.
     ![step8](https://github.com/user-attachments/assets/b05b0a27-465a-4611-8068-230b6664be87)
