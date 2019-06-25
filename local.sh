#!/bin/bash

tar zvxf createrepo.tar.gz 
tar zvxf nginx.tar.gz
tar zvxf repo.tar.gz

createrepo () {
cd createrepodir
yum -y localinstall *
cd ..
}

nginxrepo () {
cd nginxdir
yum -y localinstall *
cd ..
}

createrepo
nginxrepo
nginx

mkdir -p /etc/yum.repo.d/bak
mv CentOS* /etc/yum.repo.d/bak

cat <<EOF>> /etc/yum.repo.d/local.repo
[local]
name=local
baseurl=http://10.8.8.13/myshare
enabled=1
gpgcheck=0
gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-7
EOF

cp -r myshare /usr/share/nginx/html

createrepo /usr/share/nginx/html/myshare
yum makecache
