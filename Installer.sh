#!/bin/bash
clear
echo ZacaCoin Version 2.0  
echo Modify by Alberto Horta
echo Raspberry Pi
sleep 4
sudo apt-get update -y
sudo apt-get install build-essential libtool autotools-dev autoconf pkg-config libssl-dev -y
sudo apt-get install software-properties-common -y
sudo apt-get install libminiupnpc-dev -y
sudo apt-get install libevent-dev -y
wget http://ftp.us.debian.org/debian/pool/main/o/openssl/libssl1.0.0_1.0.1t-1+deb8u8_armhf.deb
sudo dpkg -i libssl1.0.0_1.0.1t-1+deb8u8_armhf.deb
sudo apt-get install libssl1.0.0 libssl-dev
wget http://download.oracle.com/berkeley-db/db-4.8.30.NC.tar.gz
tar -xzvf db-4.8.30.NC.tar.gz
cd db-4.8.30.NC/build_unix
../dist/configure CPPFLAGS="-I/usr/local/BerkeleyDB.4.8/include -O2" LDFLAGS="-L/usr/local/BerkeleyDB.4.8/lib" --enable-cxx --prefix=/usr
make
sudo make install
sudo apt-get install libboost1.58-dev -y
sudo apt-get install libboost-system1.58-dev -y
sudo apt-get install libboost-filesystem1.58-dev -y
sudo apt-get install libboost-program-options1.58-dev -y
sudo apt-get install libboost-thread1.58-dev -y
unzip zaca-qt-rpi.zip
chmod +x zaca-qt
echo Instalacion terminada, solo ejecuta ./zaca-qt
sleep 5
exit 

