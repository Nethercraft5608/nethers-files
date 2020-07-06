#!/bin/bash

echo RUN IN SUPERUSER IF INSTALLING
echo RUN IN SUPERUSER IF INSTALLING
echo RUN IN SUPERUSER IF INSTALLING
echo RUN IN SUPERUSER IF INSTALLING
echo RUN IN SUPERUSER IF INSTALLING
echo RUN IN SUPERUSER IF INSTALLING


if [ "$(whoami)" == "root" ] ; then
    sudo apt install -y nano
    sudo apt install -y openjdk-11-jdk
    wget http://ftp.de.debian.org/debian/pool/main/libx/libxslt/libxslt1.1_1.1.32-2.2~deb10u1_amd64.deb

    sudo dpkg -i libxslt1.1_1.1.32-2.2~deb10u1_amd64.deb
    echo Everything is now installed.Java and Libaries are configured for Minecraft.
    mkdir Minecraft
    mv minecraftlaunch.sh Minecraft
    mv Minecraft.jar Minecraft
    cd Minecraft 
    sudo chmod +x minecraftlaunch.sh
else
    echo Done. Launching Minecraft.
    cd Minecraft
    ./minecraftlaunch.sh
fi


