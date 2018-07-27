cd /home/softapp/
tar -xvf jdk-8u101-linux-x64.tar.gz
mv jdk1.8.0_101 ../java/
echo "" >> /etc/profile
echo "#set java environment" >> /etc/profile
echo "JAVA_HOME=/home/java/jdk1.8.0_101" >> /etc/profile
echo "JRE_HOME=/home/java/jdk1.8.0_101/jre" >> /etc/profile
echo "CLASS_PATH=.:$JAVA_HOME/lib/dt.jar:$JAVA_HOME/lib/tools.jar:$JRE_HOME/lib" >> /etc/profile
echo "PATH=$PATH:$JAVA_HOME/bin:$JRE_HOME/bin" >> /etc/profile
echo "export JAVA_HOME JRE_HOME CLASS_PATH PATH" >> /etc/profile
source /etc/profile

echo "install JDK success!"
