#!/bin/bash

echo -e "Pilih Web Server yang ingin anda install:\n1. Nginx\n2. Apache2\n0. Keluar"
read -p "Masukkan pilihan kamu: " number

if [ "$number" -eq 1 ]; then
        {
          echo "Menginstall Web Server Nginx..."
          sudo apt update && sudo apt upgrade
          sudo apt install nginx -y
          echo "Nginx sudah berhasi diinstall."
        }

elif [ "$number" -eq 2 ];then
        {
          echo "Menginstall Web Server Apache..."
          sudo apt update && sudo apt upgrade
          sudo apt install apache2 -y
          echo "Apache2 sudah berhasil diinstall."
        }
elif [ "$number" -eq 0 ]; then
        echo "Anda telah keluar."

else
        {
          echo "Pilihan anda tidak valid. Harap masukkan pilihan yang ada!"
          ./install_webserver.sh
        }
fi
