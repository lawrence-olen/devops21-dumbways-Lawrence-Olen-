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
   - Kita clone terlebih dahulu projek dari repositori yang sudah disediakan.
   - Lalu gunakan node.js versi 14. Apabila belum memiliki package npm dan nvm, maka lakukanlah install package terlebih dahulu.
   - Melakukan import database dikarenakan sudah disediakan file .sql, tetapi apabila tidak ada kita harus migrasi data menggunakan sequelize.
   - Jangan lupa untuk mengubah konfigurasi pada file config.json dan sesuaikan dengan database kita yang sudah dibuat.
   - Install sequelize-cli di folder project apabila belum melakukan import file .sql yang sudah disediakan dan install seluruh package yang belum terinstall dengan perintah ``` npm i ```.
   - Terakhir kita akan deploy/jalankan aplikasi wayshub backend menggunakan PM2.
   - Lalu cek backend tersebut pada web browser apakah berjalan atau tidak.
