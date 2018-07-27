#/bin/bash
echo "cd /usr/local/src"
cp ~/share/keepalived-1.2.24.tar.gz  /usr/local/src/

cd /usr/local/src/
tar xf keepalived-1.2.24.tar.gz 
cd keepalived-1.2.24
./configure --prefix=/usr/local/keepalived

make && make install


mkdir -p /etc/keepalived

cp /usr/local/keepalived/etc/keepalived/keepalived.conf /etc/keepalived/
cp /usr/local/keepalived/etc/sysconfig/keepalived /etc/sysconfig/
cp /usr/local/src/keepalived-1.3.5/keepalived/etc/init.d/keepalived /etc/init.d/
chmod 755 /etc/init.d/keepalived 

ln -s /usr/local/keepalived/sbin/keepalived /sbin/
