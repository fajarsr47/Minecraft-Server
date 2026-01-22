#!/bin/bash
# Script untuk menjalankan Minecraft Server dengan restart otomatis

# Atur jumlah RAM (sesuaikan dengan kebutuhan servermu)
XMS=8G   # minimum RAM
XMX=14G   # maksimum RAM

# Nama file server jar
JAR="paper.jar"

# Loop agar server restart otomatis jika crash
while true
do
    echo "Menyalakan Minecraft Server..."
    java -Xms$XMS -Xmx$XMX -jar $JAR nogui

    echo "Server berhenti/crash. Restart dalam 10 detik..."
    sleep 10
done
