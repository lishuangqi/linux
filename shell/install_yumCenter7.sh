#/bin/bash
yum install -y wget

cd /etc/yum.repos.d/

mv CentOS-Base.repo CentOS-Base.repo.bak
wget http://mirrors.aliyun.com/repo/Centos-7.repo
wget http://mirrors.163.com/.help/CentOS7-Base-163.repo

mv Centos-7.repo CentOS-Base.repo
yum clean all
yum makecache

yum upgrade
yum install net-tools