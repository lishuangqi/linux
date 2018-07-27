#/bin/bash
echo "cd /usr/local/src"
cd /usr/local/src

yum install libevent-devel.x86_64


ln -s /usr/local/libevent/lib/libevent-2.0.so.5 /usr/lib/libevent-2.0.so.5 
ln -s /usr/local/libevent/lib/libevent-2.0.so.5 /usr/lib64/libevent-2.0.so.5 
ln -s /usr/local/libevent/lib/libevent-2.0.so.5 /lib64/libevent-2.0.so.5 
ln -s /usr/local/libevent/lib/libevent-2.0.so.5 /lib/libevent-2.0.so.5 
ln -s /usr/local/libevent/lib/libevent-2.0.so.5 /usr/local/lib64/libevent-2.0.so.5 
ln -s /usr/local/libevent/lib/libevent-2.0.so.5 /usr/local/lib/libevent-2.0.so.5 

echo "intall gcc gcc-c++ make automake auto conf libtool pcre* zlib openssl openssl-devel"
yum install gcc gcc-c++ make automake auto conf libtool pcre* zlib openssl openssl-devel

echo "libfastcommon-master"
unzip libfastcommon-master.zip

cd libfastcommon-master

./make.sh

./make.sh install

ln -s /usr/lib64/libfastcommon.so /usr/local/lib/libfastcommon.so
ln -s /usr/lib64/libfastcommon.so /usr/lib/libfastcommon.so
ln -s /usr/lib64/libfdfsclient.so /usr/local/lib/libfdfsclient.so
ln -s /usr/lib64/libfdfsclient.so /usr/lib/libfdfsclient.so

cd /usr/local/src

echo "fastdfs-5.09"
unzip fastdfs-5.09.zip 

cd fastdfs-5.09

./make.sh

./make.sh install

cd /etc/fdfs
cp tracker.conf.sample tracker.conf

cp storage.conf.sample storage.conf

echo "mkdir /fastdfs/tracker /fastdfs/storage"
 mkdir -p /fastdfs/tracker

mkdir -p /fastdfs/storage


