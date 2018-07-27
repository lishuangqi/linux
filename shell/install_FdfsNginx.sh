#/bin/bash
echo "cd /usr/local/src"
cd /usr/local/src

echo "tar nginx"
tar -zxvf nginx-1.8.1.tar.gz 


unzip fastdfs-nginx-module-master.zip 

cd nginx-1.8.1

./configure --add-module=/usr/local/src/fastdfs-nginx-module-master/src/

echo "make nginx"

make && make install


cp /usr/local/src/fastdfs-nginx-module-master/src/mod_fastdfs.conf /etc/fdfs

vi /etc/fdfs/mod_fastdfs.conf


cd /usr/local/src/fastdfs-5.09/conf/


cp http.conf /etc/fdfs/

cp mime.types /etc/fdfs/

ln -s /fastdfs/storage/data/ /fastdfs/storage/data/M00

cd /usr/local/nginx/conf/

vi nginx.conf

/usr/local/nginx/sbin/nginx


